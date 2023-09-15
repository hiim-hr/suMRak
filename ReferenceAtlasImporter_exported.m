classdef ReferenceAtlasImporter_exported < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        ReferenceAtlasImporterUIFigure  matlab.ui.Figure
        WaxholmSpaceAtlasC57BL6JMouseT1wCheckBox  matlab.ui.control.CheckBox
        WaxholmSpaceAtlasC57BL6JMouseT2wCheckBox  matlab.ui.control.CheckBox
        AllenMouseBrainAtlasCheckBox    matlab.ui.control.CheckBox
        ReferenceAtlasSelectionLabel    matlab.ui.control.Label
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create ReferenceAtlasImporterUIFigure and hide until all components are created
            app.ReferenceAtlasImporterUIFigure = uifigure('Visible', 'off');
            app.ReferenceAtlasImporterUIFigure.Position = [100 100 425 310];
            app.ReferenceAtlasImporterUIFigure.Name = 'Reference Atlas Importer';

            % Create ReferenceAtlasSelectionLabel
            app.ReferenceAtlasSelectionLabel = uilabel(app.ReferenceAtlasImporterUIFigure);
            app.ReferenceAtlasSelectionLabel.Position = [138 271 146 22];
            app.ReferenceAtlasSelectionLabel.Text = 'Reference Atlas Selection:';

            % Create AllenMouseBrainAtlasCheckBox
            app.AllenMouseBrainAtlasCheckBox = uicheckbox(app.ReferenceAtlasImporterUIFigure);
            app.AllenMouseBrainAtlasCheckBox.Text = 'Allen Mouse Brain Atlas';
            app.AllenMouseBrainAtlasCheckBox.Position = [140 235 149 22];

            % Create WaxholmSpaceAtlasC57BL6JMouseT2wCheckBox
            app.WaxholmSpaceAtlasC57BL6JMouseT2wCheckBox = uicheckbox(app.ReferenceAtlasImporterUIFigure);
            app.WaxholmSpaceAtlasC57BL6JMouseT2wCheckBox.Text = 'Waxholm Space Atlas C57BL/6J Mouse - T2w';
            app.WaxholmSpaceAtlasC57BL6JMouseT2wCheckBox.WordWrap = 'on';
            app.WaxholmSpaceAtlasC57BL6JMouseT2wCheckBox.Position = [77 193 268 30];

            % Create WaxholmSpaceAtlasC57BL6JMouseT1wCheckBox
            app.WaxholmSpaceAtlasC57BL6JMouseT1wCheckBox = uicheckbox(app.ReferenceAtlasImporterUIFigure);
            app.WaxholmSpaceAtlasC57BL6JMouseT1wCheckBox.Text = 'Waxholm Space Atlas C57BL/6J Mouse - T1w';
            app.WaxholmSpaceAtlasC57BL6JMouseT1wCheckBox.WordWrap = 'on';
            app.WaxholmSpaceAtlasC57BL6JMouseT1wCheckBox.Position = [77 152 268 30];

            % Show the figure after all components are created
            app.ReferenceAtlasImporterUIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = ReferenceAtlasImporter_exported

            % Create UIFigure and components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.ReferenceAtlasImporterUIFigure)

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.ReferenceAtlasImporterUIFigure)
        end
    end
end