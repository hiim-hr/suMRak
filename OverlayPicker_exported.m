classdef OverlayPicker_exported < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        UIFigure                      matlab.ui.Figure
        OverlayAlphamapDropDown       matlab.ui.control.DropDown
        OverlayAlphamapDropDownLabel  matlab.ui.control.Label
        SelectaROILabel               matlab.ui.control.Label
        ReturnButton                  matlab.ui.control.Button
        ROITable                      matlab.ui.control.Table
        ExperimentDropDown            matlab.ui.control.DropDown
        ExperimentDropDownLabel       matlab.ui.control.Label
        OverlaySwitch                 matlab.ui.control.Switch
        SelectanoptionSwitchLabel     matlab.ui.control.Label
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create UIFigure and hide until all components are created
            app.UIFigure = uifigure('Visible', 'off');
            app.UIFigure.Position = [100 100 320 480];
            app.UIFigure.Name = 'MATLAB App';

            % Create SelectanoptionSwitchLabel
            app.SelectanoptionSwitchLabel = uilabel(app.UIFigure);
            app.SelectanoptionSwitchLabel.HorizontalAlignment = 'center';
            app.SelectanoptionSwitchLabel.Position = [115 436 91 22];
            app.SelectanoptionSwitchLabel.Text = 'Select an option';

            % Create OverlaySwitch
            app.OverlaySwitch = uiswitch(app.UIFigure, 'slider');
            app.OverlaySwitch.Items = {'Experiment', 'ROI'};
            app.OverlaySwitch.Position = [160 409 41 18];
            app.OverlaySwitch.Value = 'Experiment';

            % Create ExperimentDropDownLabel
            app.ExperimentDropDownLabel = uilabel(app.UIFigure);
            app.ExperimentDropDownLabel.HorizontalAlignment = 'right';
            app.ExperimentDropDownLabel.Position = [23 362 66 22];
            app.ExperimentDropDownLabel.Text = 'Experiment';

            % Create ExperimentDropDown
            app.ExperimentDropDown = uidropdown(app.UIFigure);
            app.ExperimentDropDown.Items = {'None'};
            app.ExperimentDropDown.Position = [104 362 195 22];
            app.ExperimentDropDown.Value = 'None';

            % Create ROITable
            app.ROITable = uitable(app.UIFigure);
            app.ROITable.ColumnName = '';
            app.ROITable.RowName = {};
            app.ROITable.Position = [23 115 276 214];

            % Create ReturnButton
            app.ReturnButton = uibutton(app.UIFigure, 'push');
            app.ReturnButton.Position = [80 15 161 23];
            app.ReturnButton.Text = 'Use selected Experiment';

            % Create SelectaROILabel
            app.SelectaROILabel = uilabel(app.UIFigure);
            app.SelectaROILabel.Position = [124 328 73 22];
            app.SelectaROILabel.Text = 'Select a ROI';

            % Create OverlayAlphamapDropDownLabel
            app.OverlayAlphamapDropDownLabel = uilabel(app.UIFigure);
            app.OverlayAlphamapDropDownLabel.HorizontalAlignment = 'right';
            app.OverlayAlphamapDropDownLabel.Position = [23 60 103 22];
            app.OverlayAlphamapDropDownLabel.Text = 'Overlay Alphamap';

            % Create OverlayAlphamapDropDown
            app.OverlayAlphamapDropDown = uidropdown(app.UIFigure);
            app.OverlayAlphamapDropDown.Items = {'Gradient', 'Label'};
            app.OverlayAlphamapDropDown.Position = [141 60 158 22];
            app.OverlayAlphamapDropDown.Value = 'Gradient';

            % Show the figure after all components are created
            app.UIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = OverlayPicker_exported

            runningApp = getRunningApp(app);

            % Check for running singleton app
            if isempty(runningApp)

                % Create UIFigure and components
                createComponents(app)

                % Register the app with App Designer
                registerApp(app, app.UIFigure)
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