classdef OverlayPicker_exported < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        OverlayPickerUIFigure         matlab.ui.Figure
        ThresholdEditField            matlab.ui.control.NumericEditField
        ThresholdEditFieldLabel       matlab.ui.control.Label
        AlphaEditField                matlab.ui.control.NumericEditField
        AlphaEditFieldLabel           matlab.ui.control.Label
        ColormapDropDown              matlab.ui.control.DropDown
        ColormapDropDownLabel_Viewer  matlab.ui.control.Label
        Dim5Spinner                   matlab.ui.control.Spinner
        Dim5Label                     matlab.ui.control.Label
        Dim4Spinner                   matlab.ui.control.Spinner
        Dim4SpinnerLabel              matlab.ui.control.Label
        SelectROIListBox              matlab.ui.control.ListBox
        SelectROIListBoxLabel         matlab.ui.control.Label
        OverlayStyleDropDown          matlab.ui.control.DropDown
        OverlayStyleDropDownLabel     matlab.ui.control.Label
        ReturnButton                  matlab.ui.control.Button
        ExperimentDropDown            matlab.ui.control.DropDown
        ExperimentDropDownLabel       matlab.ui.control.Label
        OverlaySwitch                 matlab.ui.control.Switch
        SelectanoptionSwitchLabel     matlab.ui.control.Label
    end

    
    properties (Access = private)
        BrukKit % Main BrukKit interface
        ExperimentPropertyTable % Table containing imported Bruker experiments inherited from BrukKit
        SavedTable % Table containing inherited BrukKit-modified experiments
        Volume % Volume to be passed into BrukKit's 3D viewer as an overlay
        VolumeDims % Dimension sizes of the chosen volume
        ViewerDims % Dimension sizes inherited from BrukKit's 3D viewer
    end
    

    % Callbacks that handle component events
    methods (Access = private)

        % Code that executes after component creation
        function startupFcn(app, caller, DropdownItemsCombined, ExperimentTable, SavedTable, DataDims)
            
            % Center on screen
            movegui(app.OverlayPickerUIFigure, 'center');

            % Store BrukKit
            app.BrukKit = caller;

            % Populate dropdown
            app.ExperimentDropDown.Items = DropdownItemsCombined;

            % Save Experiment and Saved tables to their respective
            % properties
            app.ExperimentPropertyTable = ExperimentTable;
            app.SavedTable = SavedTable;

            % Save dimension sizes of the experiment loaded in BrukKit's 3D viewer
            app.ViewerDims = DataDims;

        end

        % Value changed function: ExperimentDropDown
        function ExperimentDropDownValueChanged(app, event)
            value = app.ExperimentDropDown.Value;
            
            if value == "None"
                app.Dim4Spinner.Enable = "off";
                app.Dim5Spinner.Enable = "off";
                app.SelectROIListBox.Enable = "off";
                app.OverlayStyleDropDown.Enable = "off";
                app.ColormapDropDown.Enable = "off";
                app.AlphaEditField.Enable = "off";
                app.ThresholdEditField.Enable = "off";
                app.ReturnButton.Enable = "off";
                app.SelectROIListBox.Items = {};
                return
            end

            % Get selected sequence image data from loaded experiments or saved registration experiments
            try
                app.Volume = cell2mat(app.SavedTable.Image(value));
                if app.OverlaySwitch.Value == "ROI"
                    try
                        app.SelectROIListBox.Items = app.SavedTable.ROI{value,1}.ID; % Try populating SelectROIListBox items
                        app.SelectROIListBox.Enable = 'on';
                        if app.SelectROIListBox.Items{1,1} == "None"
                            app.SelectROIListBox.Items = {};
                            app.SelectROIListBox.Enable = 'off';
                            return
                        end
                    catch
                        app.SelectROIListBox.Items = {};
                        app.SelectROIListBox.Enable = 'off';
                    end
                end
            catch
                app.Volume = cell2mat(app.ExperimentPropertyTable.(2)(value));
                app.SelectROIListBox.Items = {};
                app.SelectROIListBox.Enable = 'off';
            end

            app.VolumeDims = size(app.Volume);
            app.OverlayStyleDropDown.Enable = "on";
            app.ColormapDropDown.Enable = "on";
            app.AlphaEditField.Enable = "on";
            app.ThresholdEditField.Enable = "on";
            app.ReturnButton.Enable = "on";

            switch numel(app.VolumeDims)
                case 3
                    app.Dim4Spinner.Value = 1;
                    app.Dim5Spinner.Value = 1;
                    app.Dim4Spinner.Enable = "off";
                    app.Dim5Spinner.Enable = "off";
                case 4
                    app.Dim4Spinner.Value = 1;
                    app.Dim5Spinner.Value = 1;
                    app.Dim4Spinner.Enable = "on";
                    app.Dim5Spinner.Enable = "off";
                    app.Dim4Spinner.Limits = [1 app.VolumeDims(4)];
                case 5
                    app.Dim4Spinner.Value = 1;
                    app.Dim5Spinner.Value = 1;
                    app.Dim4Spinner.Enable = "on";
                    app.Dim5Spinner.Enable = "on";
                    app.Dim4Spinner.Limits = [1 app.VolumeDims(4)];
                    app.Dim5Spinner.Limits = [1 app.VolumeDims(5)];
            end
        end

        % Value changed function: OverlaySwitch
        function OverlaySwitchValueChanged(app, event)
            value = app.OverlaySwitch.Value;
            
            switch value
                case 'Experiment'
                    app.SelectROIListBox.Items = {};
                    app.SelectROIListBox.Enable = 'off';
                    try
                        app.Volume = cell2mat(app.SavedTable.Image(app.ExperimentDropDown.Value));
                    catch
                        app.Volume = cell2mat(app.ExperimentPropertyTable.(2)(app.ExperimentDropDown.Value));
                    end
                case 'ROI'
                    try
                        app.SelectROIListBox.Items = app.SavedTable.ROI{app.ExperimentDropDown.Value,1}.ID; % Try populating SelectROIListBox items
                        app.SelectROIListBox.Enable = 'on';
                        if app.SelectROIListBox.Items{1,1} == "None"
                            app.SelectROIListBox.Items = {};
                            app.SelectROIListBox.Enable = 'off';
                        end
                    catch
                        app.SelectROIListBox.Items = {};
                        app.SelectROIListBox.Enable = 'off';
                    end
            end
        end

        % Close request function: OverlayPickerUIFigure
        function OverlayPickerUIFigureCloseRequest(app, event)
            % Close Brukkit progress bar and delete app
            app.BrukKit.OverlayButton.Enable = 'on';
            app.BrukKit.OverlayButton.Value = 0;
            close(app.BrukKit.ProgressBar);
            delete(app);
        end

        % Value changed function: SelectROIListBox
        function SelectROIListBoxValueChanged(app, event)
            value = app.SelectROIListBox.Value;
            
            ROIindex = find(strcmp(value,app.SelectROIListBox.Items));
            app.Volume = app.SavedTable.ROI{app.ExperimentDropDown.Value,1}.Mask(:,:,:,ROIindex);
        end

        % Button pushed function: ReturnButton
        function ReturnButtonPushed(app, event)
            
            if numel(app.VolumeDims) ~= numel(app.ViewerDims)
                uialert(app.OverlayPickerUIFigure, ...
                    'Overlay dimensions need to match dimensions of 3D volume. Register your overlay data first or choose another overlay data.', ...
                    'Invalid overlay image data')
                return
            else
                if app.VolumeDims ~= app.ViewerDims
                    uialert(app.OverlayPickerUIFigure, ...
                        'Overlay dimensions need to match dimensions of 3D volume. Register your overlay data first or choose another overlay data.', ...
                        'Invalid overlay image data')
                    return
                end
            end

            app.Volume = (app.Volume - min(app.Volume(:))) / (max(app.Volume(:)) - min(app.Volume(:)));
            app.BrukKit.ViewerParentObject.Children.OverlayData = app.Volume;
            
            switch app.OverlayStyleDropDown.Value
                case 'Label'
                    app.BrukKit.ViewerParentObject.Children.OverlayRenderingStyle = "LabelOverlay";
                case 'Volume'
                    app.BrukKit.ViewerParentObject.Children.OverlayRenderingStyle = "VolumeOverlay";
                case 'Gradient'
                    app.BrukKit.ViewerParentObject.Children.OverlayRenderingStyle = "GradientOverlay";
            end

            switch app.ColormapDropDown.Value
                case "Greyscale"
                    app.BrukKit.ViewerParentObject.Children.OverlayColormap = gray;
                case "Turbo"
                    app.BrukKit.ViewerParentObject.Children.OverlayColormap = turbo;
                case "Hot"
                    app.BrukKit.ViewerParentObject.Children.OverlayColormap = hot;
                case "Jet"
                    app.BrukKit.ViewerParentObject.Children.OverlayColormap = jet;
                case "Parula"
                    app.BrukKit.ViewerParentObject.Children.OverlayColormap = parula;
                case "Sky"
                    app.BrukKit.ViewerParentObject.Children.OverlayColormap = sky;
                case "Cool"
                    app.BrukKit.ViewerParentObject.Children.OverlayColormap = cool;
                case "Copper"
                    app.BrukKit.ViewerParentObject.Children.OverlayColormap = copper;
                case "Bone"
                    app.BrukKit.ViewerParentObject.Children.OverlayColormap = bone;
            end

            app.BrukKit.ViewerParentObject.Children.OverlayAlphamap = app.AlphaEditField.Value;
            app.BrukKit.ViewerParentObject.Children.OverlayThreshold = app.ThresholdEditField.Value;

            % Close Brukkit progress bar and delete app
            app.BrukKit.OverlayButton.Enable = 'on';
            close(app.BrukKit.ProgressBar);
            delete(app);

        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create OverlayPickerUIFigure and hide until all components are created
            app.OverlayPickerUIFigure = uifigure('Visible', 'off');
            app.OverlayPickerUIFigure.Position = [100 100 320 480];
            app.OverlayPickerUIFigure.Name = 'Overlay Picker';
            app.OverlayPickerUIFigure.CloseRequestFcn = createCallbackFcn(app, @OverlayPickerUIFigureCloseRequest, true);

            % Create SelectanoptionSwitchLabel
            app.SelectanoptionSwitchLabel = uilabel(app.OverlayPickerUIFigure);
            app.SelectanoptionSwitchLabel.HorizontalAlignment = 'center';
            app.SelectanoptionSwitchLabel.Position = [115 449 91 22];
            app.SelectanoptionSwitchLabel.Text = 'Select an option';

            % Create OverlaySwitch
            app.OverlaySwitch = uiswitch(app.OverlayPickerUIFigure, 'slider');
            app.OverlaySwitch.Items = {'Experiment', 'ROI'};
            app.OverlaySwitch.ValueChangedFcn = createCallbackFcn(app, @OverlaySwitchValueChanged, true);
            app.OverlaySwitch.Position = [160 422 41 18];
            app.OverlaySwitch.Value = 'Experiment';

            % Create ExperimentDropDownLabel
            app.ExperimentDropDownLabel = uilabel(app.OverlayPickerUIFigure);
            app.ExperimentDropDownLabel.HorizontalAlignment = 'right';
            app.ExperimentDropDownLabel.Position = [23 384 66 22];
            app.ExperimentDropDownLabel.Text = 'Experiment';

            % Create ExperimentDropDown
            app.ExperimentDropDown = uidropdown(app.OverlayPickerUIFigure);
            app.ExperimentDropDown.Items = {'None'};
            app.ExperimentDropDown.ValueChangedFcn = createCallbackFcn(app, @ExperimentDropDownValueChanged, true);
            app.ExperimentDropDown.Position = [104 384 195 22];
            app.ExperimentDropDown.Value = 'None';

            % Create ReturnButton
            app.ReturnButton = uibutton(app.OverlayPickerUIFigure, 'push');
            app.ReturnButton.ButtonPushedFcn = createCallbackFcn(app, @ReturnButtonPushed, true);
            app.ReturnButton.Enable = 'off';
            app.ReturnButton.Position = [86 15 149 23];
            app.ReturnButton.Text = 'Use selected Volume';

            % Create OverlayStyleDropDownLabel
            app.OverlayStyleDropDownLabel = uilabel(app.OverlayPickerUIFigure);
            app.OverlayStyleDropDownLabel.HorizontalAlignment = 'right';
            app.OverlayStyleDropDownLabel.Position = [36 128 76 22];
            app.OverlayStyleDropDownLabel.Text = 'Overlay Style';

            % Create OverlayStyleDropDown
            app.OverlayStyleDropDown = uidropdown(app.OverlayPickerUIFigure);
            app.OverlayStyleDropDown.Items = {'Label', 'Volume', 'Gradient'};
            app.OverlayStyleDropDown.Enable = 'off';
            app.OverlayStyleDropDown.Position = [127 128 158 22];
            app.OverlayStyleDropDown.Value = 'Label';

            % Create SelectROIListBoxLabel
            app.SelectROIListBoxLabel = uilabel(app.OverlayPickerUIFigure);
            app.SelectROIListBoxLabel.HorizontalAlignment = 'center';
            app.SelectROIListBoxLabel.Position = [129 314 63 22];
            app.SelectROIListBoxLabel.Text = 'Select ROI';

            % Create SelectROIListBox
            app.SelectROIListBox = uilistbox(app.OverlayPickerUIFigure);
            app.SelectROIListBox.Items = {};
            app.SelectROIListBox.ValueChangedFcn = createCallbackFcn(app, @SelectROIListBoxValueChanged, true);
            app.SelectROIListBox.Position = [23 179 276 135];
            app.SelectROIListBox.Value = {};

            % Create Dim4SpinnerLabel
            app.Dim4SpinnerLabel = uilabel(app.OverlayPickerUIFigure);
            app.Dim4SpinnerLabel.HorizontalAlignment = 'right';
            app.Dim4SpinnerLabel.Enable = 'off';
            app.Dim4SpinnerLabel.Position = [25 347 44 22];
            app.Dim4SpinnerLabel.Text = 'Dim - 4';

            % Create Dim4Spinner
            app.Dim4Spinner = uispinner(app.OverlayPickerUIFigure);
            app.Dim4Spinner.Enable = 'off';
            app.Dim4Spinner.Position = [84 347 66 22];

            % Create Dim5Label
            app.Dim5Label = uilabel(app.OverlayPickerUIFigure);
            app.Dim5Label.HorizontalAlignment = 'right';
            app.Dim5Label.Enable = 'off';
            app.Dim5Label.Position = [174 347 44 22];
            app.Dim5Label.Text = 'Dim - 5';

            % Create Dim5Spinner
            app.Dim5Spinner = uispinner(app.OverlayPickerUIFigure);
            app.Dim5Spinner.Enable = 'off';
            app.Dim5Spinner.Position = [233 347 66 22];

            % Create ColormapDropDownLabel_Viewer
            app.ColormapDropDownLabel_Viewer = uilabel(app.OverlayPickerUIFigure);
            app.ColormapDropDownLabel_Viewer.HorizontalAlignment = 'center';
            app.ColormapDropDownLabel_Viewer.Position = [55 96 57 22];
            app.ColormapDropDownLabel_Viewer.Text = 'Colormap';

            % Create ColormapDropDown
            app.ColormapDropDown = uidropdown(app.OverlayPickerUIFigure);
            app.ColormapDropDown.Items = {'Greyscale', 'Turbo', 'Hot', 'Jet', 'Parula', 'Sky', 'Cool', 'Copper', 'Bone'};
            app.ColormapDropDown.Enable = 'off';
            app.ColormapDropDown.Tooltip = {''};
            app.ColormapDropDown.Position = [127 96 158 22];
            app.ColormapDropDown.Value = 'Greyscale';

            % Create AlphaEditFieldLabel
            app.AlphaEditFieldLabel = uilabel(app.OverlayPickerUIFigure);
            app.AlphaEditFieldLabel.HorizontalAlignment = 'right';
            app.AlphaEditFieldLabel.Position = [25 59 36 22];
            app.AlphaEditFieldLabel.Text = 'Alpha';

            % Create AlphaEditField
            app.AlphaEditField = uieditfield(app.OverlayPickerUIFigure, 'numeric');
            app.AlphaEditField.Limits = [0 1];
            app.AlphaEditField.Enable = 'off';
            app.AlphaEditField.Position = [76 59 66 22];
            app.AlphaEditField.Value = 0.2;

            % Create ThresholdEditFieldLabel
            app.ThresholdEditFieldLabel = uilabel(app.OverlayPickerUIFigure);
            app.ThresholdEditFieldLabel.HorizontalAlignment = 'right';
            app.ThresholdEditFieldLabel.Position = [160 59 58 22];
            app.ThresholdEditFieldLabel.Text = 'Threshold';

            % Create ThresholdEditField
            app.ThresholdEditField = uieditfield(app.OverlayPickerUIFigure, 'numeric');
            app.ThresholdEditField.Limits = [0 1];
            app.ThresholdEditField.Enable = 'off';
            app.ThresholdEditField.Position = [233 59 66 22];
            app.ThresholdEditField.Value = 0.001;

            % Show the figure after all components are created
            app.OverlayPickerUIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = OverlayPicker_exported(varargin)

            runningApp = getRunningApp(app);

            % Check for running singleton app
            if isempty(runningApp)

                % Create UIFigure and components
                createComponents(app)

                % Register the app with App Designer
                registerApp(app, app.OverlayPickerUIFigure)

                % Execute the startup function
                runStartupFcn(app, @(app)startupFcn(app, varargin{:}))
            else

                % Focus the running singleton app
                figure(runningApp.OverlayPickerUIFigure)

                app = runningApp;
            end

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.OverlayPickerUIFigure)
        end
    end
end