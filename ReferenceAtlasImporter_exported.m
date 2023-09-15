classdef ReferenceAtlasImporter_exported < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        ReferenceAtlasImporterUIFigure  matlab.ui.Figure
        DownloadButton                  matlab.ui.control.Button
        SetDirectoryButton              matlab.ui.control.Button
        AtlasDirectoryEditField         matlab.ui.control.EditField
        SaveToDirectoryCheckBox         matlab.ui.control.CheckBox
        ReferenceAtlasTree              matlab.ui.container.CheckBoxTree
        MRIAtlasNode                    matlab.ui.container.TreeNode
        T2wWaxholmSpaceAtlasC57BL6JMouseNode  matlab.ui.container.TreeNode
        T1wWaxholmSpaceAtlasC57BL6JMouseNode  matlab.ui.container.TreeNode
        HistologicalAtlasNode           matlab.ui.container.TreeNode
        AllenBrainAtlasAdultMouseNisslGrayscaleNode  matlab.ui.container.TreeNode
        ReferenceAtlasSelectionLabel    matlab.ui.control.Label
    end

    
    properties (Access = private)
        BrukKit % Main BrukKit interface
    end
    

    % Callbacks that handle component events
    methods (Access = private)

        % Code that executes after component creation
        function startupFcn(app, caller)
            
            % Store BrukKit
            app.BrukKit = caller;

            movegui(app.ReferenceAtlasImporterUIFigure, 'center');
        end

        % Value changed function: SaveToDirectoryCheckBox
        function SaveToDirectoryCheckBoxValueChanged(app, event)
            
            switch app.SaveToDirectoryCheckBox.Value
                case 1
                    app.SetDirectoryButton.Enable = 'on';
                    app.AtlasDirectoryEditField.Enable = 'on';
                case 0
                    app.SetDirectoryButton.Enable = 'off';
                    app.AtlasDirectoryEditField.Enable = 'off';
            end   
        end

        % Button pushed function: SetDirectoryButton
        function SetDirectoryButtonPushed(app, event)
            
            % Get directory path, update edit field
            selected_path = uigetdir;
            figure(app.ReferenceAtlasImporterUIFigure);

            app.AtlasDirectoryEditField.Value = strcat(selected_path, filesep, 'BrukKit Reference Atlases');
        end

        % Close request function: ReferenceAtlasImporterUIFigure
        function ReferenceAtlasImporterUIFigureCloseRequest(app, event)
            
            delete(app)
        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create ReferenceAtlasImporterUIFigure and hide until all components are created
            app.ReferenceAtlasImporterUIFigure = uifigure('Visible', 'off');
            app.ReferenceAtlasImporterUIFigure.Position = [100 100 480 310];
            app.ReferenceAtlasImporterUIFigure.Name = 'Reference Atlas Importer';
            app.ReferenceAtlasImporterUIFigure.CloseRequestFcn = createCallbackFcn(app, @ReferenceAtlasImporterUIFigureCloseRequest, true);

            % Create ReferenceAtlasSelectionLabel
            app.ReferenceAtlasSelectionLabel = uilabel(app.ReferenceAtlasImporterUIFigure);
            app.ReferenceAtlasSelectionLabel.Position = [168 271 146 22];
            app.ReferenceAtlasSelectionLabel.Text = 'Reference Atlas Selection:';

            % Create ReferenceAtlasTree
            app.ReferenceAtlasTree = uitree(app.ReferenceAtlasImporterUIFigure, 'checkbox');
            app.ReferenceAtlasTree.Position = [49 112 383 151];

            % Create MRIAtlasNode
            app.MRIAtlasNode = uitreenode(app.ReferenceAtlasTree);
            app.MRIAtlasNode.Text = 'MRI Atlas';

            % Create T2wWaxholmSpaceAtlasC57BL6JMouseNode
            app.T2wWaxholmSpaceAtlasC57BL6JMouseNode = uitreenode(app.MRIAtlasNode);
            app.T2wWaxholmSpaceAtlasC57BL6JMouseNode.Text = 'T2w Waxholm Space Atlas C57BL/6J Mouse';

            % Create T1wWaxholmSpaceAtlasC57BL6JMouseNode
            app.T1wWaxholmSpaceAtlasC57BL6JMouseNode = uitreenode(app.MRIAtlasNode);
            app.T1wWaxholmSpaceAtlasC57BL6JMouseNode.Text = 'T1w Waxholm Space Atlas C57BL/6J Mouse';

            % Create HistologicalAtlasNode
            app.HistologicalAtlasNode = uitreenode(app.ReferenceAtlasTree);
            app.HistologicalAtlasNode.Text = 'Histological Atlas';

            % Create AllenBrainAtlasAdultMouseNisslGrayscaleNode
            app.AllenBrainAtlasAdultMouseNisslGrayscaleNode = uitreenode(app.HistologicalAtlasNode);
            app.AllenBrainAtlasAdultMouseNisslGrayscaleNode.Text = 'Allen Brain Atlas: Adult Mouse Nissl Grayscale';

            % Create SaveToDirectoryCheckBox
            app.SaveToDirectoryCheckBox = uicheckbox(app.ReferenceAtlasImporterUIFigure);
            app.SaveToDirectoryCheckBox.ValueChangedFcn = createCallbackFcn(app, @SaveToDirectoryCheckBoxValueChanged, true);
            app.SaveToDirectoryCheckBox.Text = 'Save To Directory';
            app.SaveToDirectoryCheckBox.Position = [183 82 116 22];

            % Create AtlasDirectoryEditField
            app.AtlasDirectoryEditField = uieditfield(app.ReferenceAtlasImporterUIFigure, 'text');
            app.AtlasDirectoryEditField.Editable = 'off';
            app.AtlasDirectoryEditField.Enable = 'off';
            app.AtlasDirectoryEditField.Position = [144 51 298 23];

            % Create SetDirectoryButton
            app.SetDirectoryButton = uibutton(app.ReferenceAtlasImporterUIFigure, 'push');
            app.SetDirectoryButton.ButtonPushedFcn = createCallbackFcn(app, @SetDirectoryButtonPushed, true);
            app.SetDirectoryButton.Enable = 'off';
            app.SetDirectoryButton.Position = [40 51 95 23];
            app.SetDirectoryButton.Text = 'Set Directory';

            % Create DownloadButton
            app.DownloadButton = uibutton(app.ReferenceAtlasImporterUIFigure, 'push');
            app.DownloadButton.Position = [185 11 112 23];
            app.DownloadButton.Text = 'Download';

            % Show the figure after all components are created
            app.ReferenceAtlasImporterUIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = ReferenceAtlasImporter_exported(varargin)

            % Create UIFigure and components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.ReferenceAtlasImporterUIFigure)

            % Execute the startup function
            runStartupFcn(app, @(app)startupFcn(app, varargin{:}))

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