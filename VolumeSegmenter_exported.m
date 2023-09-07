classdef VolumeSegmenter_exported < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        UIFigure                        matlab.ui.Figure
        ActiveContourOptionsPanel       matlab.ui.container.Panel
        ContractionbiasEditField        matlab.ui.control.NumericEditField
        ContractionbiasEditFieldLabel   matlab.ui.control.Label
        SmoothfactorEditField           matlab.ui.control.NumericEditField
        SmoothfactorEditFieldLabel      matlab.ui.control.Label
        MaximumnumberofiterationsEditField  matlab.ui.control.NumericEditField
        MaximumnumberofiterationsEditFieldLabel  matlab.ui.control.Label
        GrowmodelButton                 matlab.ui.control.Button
        ChooseMethodDropDown            matlab.ui.control.DropDown
        ChooseMethodDropDownLabel       matlab.ui.control.Label
        CancelandreturntoBrukkitButton  matlab.ui.control.Button
        SaveandreturntoBrukkitButton    matlab.ui.control.Button
        ViewerPanel                     matlab.ui.container.Panel
    end

    % Callbacks that handle component events
    methods (Access = private)

        % Code that executes after component creation
        function startupFcn(app, caller, volume, mask)
            
            % Store BrukKit
            app.BrukKit = caller;
            
            % Store image data and dimensions
            app.Volume = volume;
            app.VolumeDims = size(app.Volume);
            app.Mask = mask;
            app.MaskDims = size(app.FixedImageData);
        end

        % Close request function: UIFigure
        function UIFigureCloseRequest(app, event)
            
            % Turn on viewer button, delete app
            % app.BrukKit.RegistrationViewerButton.Enable = 'on';
            close(app.BrukKit.ProgressBar);
            delete(app);
            
        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create UIFigure and hide until all components are created
            app.UIFigure = uifigure('Visible', 'off');
            app.UIFigure.Position = [100 100 854 480];
            app.UIFigure.Name = 'MATLAB App';
            app.UIFigure.CloseRequestFcn = createCallbackFcn(app, @UIFigureCloseRequest, true);

            % Create ViewerPanel
            app.ViewerPanel = uipanel(app.UIFigure);
            app.ViewerPanel.BorderType = 'none';
            app.ViewerPanel.TitlePosition = 'centertop';
            app.ViewerPanel.Title = 'Viewer';
            app.ViewerPanel.BackgroundColor = [1 1 1];
            app.ViewerPanel.Position = [13 12 605 459];

            % Create SaveandreturntoBrukkitButton
            app.SaveandreturntoBrukkitButton = uibutton(app.UIFigure, 'push');
            app.SaveandreturntoBrukkitButton.Position = [663 79 154 23];
            app.SaveandreturntoBrukkitButton.Text = 'Save and return to Brukkit';

            % Create CancelandreturntoBrukkitButton
            app.CancelandreturntoBrukkitButton = uibutton(app.UIFigure, 'push');
            app.CancelandreturntoBrukkitButton.Position = [658 44 164 23];
            app.CancelandreturntoBrukkitButton.Text = 'Cancel and return to Brukkit';

            % Create ChooseMethodDropDownLabel
            app.ChooseMethodDropDownLabel = uilabel(app.UIFigure);
            app.ChooseMethodDropDownLabel.HorizontalAlignment = 'center';
            app.ChooseMethodDropDownLabel.Position = [690 431 93 22];
            app.ChooseMethodDropDownLabel.Text = 'Choose Method:';

            % Create ChooseMethodDropDown
            app.ChooseMethodDropDown = uidropdown(app.UIFigure);
            app.ChooseMethodDropDown.Items = {'Active Contour', '3D Superpixels'};
            app.ChooseMethodDropDown.Position = [663 402 154 22];
            app.ChooseMethodDropDown.Value = 'Active Contour';

            % Create ActiveContourOptionsPanel
            app.ActiveContourOptionsPanel = uipanel(app.UIFigure);
            app.ActiveContourOptionsPanel.BorderType = 'none';
            app.ActiveContourOptionsPanel.TitlePosition = 'centertop';
            app.ActiveContourOptionsPanel.Title = 'Active Contour Options';
            app.ActiveContourOptionsPanel.Position = [628 160 218 221];

            % Create GrowmodelButton
            app.GrowmodelButton = uibutton(app.ActiveContourOptionsPanel, 'push');
            app.GrowmodelButton.Position = [56 20 100 23];
            app.GrowmodelButton.Text = 'Grow model';

            % Create MaximumnumberofiterationsEditFieldLabel
            app.MaximumnumberofiterationsEditFieldLabel = uilabel(app.ActiveContourOptionsPanel);
            app.MaximumnumberofiterationsEditFieldLabel.HorizontalAlignment = 'right';
            app.MaximumnumberofiterationsEditFieldLabel.Position = [23 169 166 22];
            app.MaximumnumberofiterationsEditFieldLabel.Text = 'Maximum number of iterations';

            % Create MaximumnumberofiterationsEditField
            app.MaximumnumberofiterationsEditField = uieditfield(app.ActiveContourOptionsPanel, 'numeric');
            app.MaximumnumberofiterationsEditField.LowerLimitInclusive = 'off';
            app.MaximumnumberofiterationsEditField.Limits = [0 Inf];
            app.MaximumnumberofiterationsEditField.RoundFractionalValues = 'on';
            app.MaximumnumberofiterationsEditField.Position = [56 140 100 22];
            app.MaximumnumberofiterationsEditField.Value = 100;

            % Create SmoothfactorEditFieldLabel
            app.SmoothfactorEditFieldLabel = uilabel(app.ActiveContourOptionsPanel);
            app.SmoothfactorEditFieldLabel.HorizontalAlignment = 'right';
            app.SmoothfactorEditFieldLabel.Position = [8 101 80 22];
            app.SmoothfactorEditFieldLabel.Text = 'Smooth factor';

            % Create SmoothfactorEditField
            app.SmoothfactorEditField = uieditfield(app.ActiveContourOptionsPanel, 'numeric');
            app.SmoothfactorEditField.Limits = [0 Inf];
            app.SmoothfactorEditField.Position = [115 101 94 22];

            % Create ContractionbiasEditFieldLabel
            app.ContractionbiasEditFieldLabel = uilabel(app.ActiveContourOptionsPanel);
            app.ContractionbiasEditFieldLabel.HorizontalAlignment = 'right';
            app.ContractionbiasEditFieldLabel.Position = [8 60 92 22];
            app.ContractionbiasEditFieldLabel.Text = 'Contraction bias';

            % Create ContractionbiasEditField
            app.ContractionbiasEditField = uieditfield(app.ActiveContourOptionsPanel, 'numeric');
            app.ContractionbiasEditField.Limits = [-1 1];
            app.ContractionbiasEditField.Position = [115 60 94 22];

            % Show the figure after all components are created
            app.UIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = VolumeSegmenter_exported(varargin)

            runningApp = getRunningApp(app);

            % Check for running singleton app
            if isempty(runningApp)

                % Create UIFigure and components
                createComponents(app)

                % Register the app with App Designer
                registerApp(app, app.UIFigure)

                % Execute the startup function
                runStartupFcn(app, @(app)startupFcn(app, varargin{:}))
            else

                % Focus the running singleton app
                figure(runningApp.UIFigure)

                app = runningApp;
            end

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.UIFigure)
        end
    end
end