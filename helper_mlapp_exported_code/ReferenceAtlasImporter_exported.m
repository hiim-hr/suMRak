classdef ReferenceAtlasImporter_exported < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        ReferenceAtlasImporterUIFigure  matlab.ui.Figure
        EstimatedDownloadSizeLabel      matlab.ui.control.Label
        DownloadButton                  matlab.ui.control.Button
        SetDirectoryButton              matlab.ui.control.Button
        AtlasDirectoryEditField         matlab.ui.control.EditField
        SaveToDirectoryCheckBox         matlab.ui.control.CheckBox
        ReferenceAtlasTree              matlab.ui.container.CheckBoxTree
        MRIAtlasNode                    matlab.ui.container.TreeNode
        MICeNeuroanatomyAtlasC57BL6JMouseNode  matlab.ui.container.TreeNode
        T2wWaxholmSpaceAtlasC57BL6JMouseNode  matlab.ui.container.TreeNode
        T1wWaxholmSpaceAtlasC57BL6JMouseNode  matlab.ui.container.TreeNode
        HistologicalAtlasNode           matlab.ui.container.TreeNode
        AllenBrainAtlasAdultMouseNisslGrayscaleNode  matlab.ui.container.TreeNode
        ReferenceAtlasSelectionLabel    matlab.ui.control.Label
    end

    
    properties (Access = private)
        suMRak % Main suMRak interface
    end
    

    % Callbacks that handle component events
    methods (Access = private)

        % Code that executes after component creation
        function startupFcn(app, caller)
            
            % Store suMRak
            app.suMRak = caller;

            movegui(app.ReferenceAtlasImporterUIFigure, 'center');

        end

        % Callback function: ReferenceAtlasTree
        function ReferenceAtlasTreeCheckedNodesChanged(app, event)
            checkedNodes = app.ReferenceAtlasTree.CheckedNodes;

            estimated_size_MB = 0;
            % Go through all atlases
            if ismember(app.MICeNeuroanatomyAtlasC57BL6JMouseNode, checkedNodes)
                estimated_size_MB = estimated_size_MB + 123;
            end

            if ismember(app.T2wWaxholmSpaceAtlasC57BL6JMouseNode, checkedNodes)
                estimated_size_MB = estimated_size_MB + 330;
            end

            if ismember(app.T1wWaxholmSpaceAtlasC57BL6JMouseNode, checkedNodes)
                estimated_size_MB = estimated_size_MB + 430;
            end

            if ismember(app.AllenBrainAtlasAdultMouseNisslGrayscaleNode, checkedNodes) 
                estimated_size_MB = estimated_size_MB + 73.4;
            end

            app.EstimatedDownloadSizeLabel.Text = sprintf('Estimated Download Size: %.1f MB', estimated_size_MB);
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

            app.AtlasDirectoryEditField.Value = strcat(selected_path, filesep, 'suMRak Reference Atlases');
        end

        % Button pushed function: DownloadButton
        function DownloadButtonPushed(app, event)
            
            chosen_Collection = app.ReferenceAtlasTree.CheckedNodes;
            % Check for empty selection
            if isequal(chosen_Collection, [])
                uialert(app.ReferenceAtlasImporterUIFigure, 'No selection made; please select one or more reference atlases from the available options.', 'No Reference Atlases Selected')
                return
            end

            % Calculate progress dialogue step size and number
            num_of_atlases = size(chosen_Collection);
            num_of_atlases = num_of_atlases(1);
            if ismember(app.MRIAtlasNode, chosen_Collection)
                num_of_atlases = num_of_atlases-1;
            end
            if ismember(app.HistologicalAtlasNode, chosen_Collection)
                num_of_atlases = num_of_atlases-1;
            end
            step_size = 1/((num_of_atlases*3)+2);

            loadedCollection = struct();
            dropdown_items = {'None'};

            progress = uiprogressdlg(app.ReferenceAtlasImporterUIFigure,'Title',"Please wait",...
                         'Message', "Setting up folder structure");
            drawnow
            pause(0.5)

            % Check whether to store selected atlases to specific directory
            switch app.SaveToDirectoryCheckBox.Value
                case 0
                    % Create new folder for atlas loading operations inside suMRak working temp
                    % folder
                    atlas_loading_folder = strcat(app.suMRak.WorkingFolder, filesep, 'Atlas Loading');
                    mkdir(atlas_loading_folder);
                case 1
                    % In this case, atlases are saved to a chosen directory and
                    % available for future easier loading
                    % Check for selected directory
                    if isequal(app.AtlasDirectoryEditField.Value, '')
                        uialert(app.ReferenceAtlasImporterUIFigure, 'Please select a directory for atlas saving.', 'No Directory Set')
                        return
                    end
                    
                    progress.Message = ('Creating new reference atlas directory');
                    
                    % Create new folder for atlas loading operations inside
                    % chosen directory
                    atlas_loading_folder = app.AtlasDirectoryEditField.Value;
                    % Purge old temporary data
                    try
                        rmdir(atlas_loading_folder, "s");
                    catch
                    end
                    mkdir(atlas_loading_folder);
            end

            progress.Message = ('Purging old temporary data');
            progress.Value = progress.Value + step_size;
            % Purge old temporary data
            try
                rmdir(atlas_loading_folder, "s");
            catch
            end
            mkdir(atlas_loading_folder);

            % Go through all atlases
            if ismember(app.MICeNeuroanatomyAtlasC57BL6JMouseNode, chosen_Collection)
                % Create end folder
                MICe_atlas_Path = strcat(atlas_loading_folder, filesep, 'MICe Neuroanatomy Atlas - C57BL6J Mouse');
                mkdir(MICe_atlas_Path);

                % Download atlas, unzip to end folder, rename to
                % .nii
                progress.Value = progress.Value + step_size;
                progress.Message = 'Downloading MICe Neuroanatomy Atlas - C57BL6J Mouse';
                MICe_labels_Path = strcat(MICe_atlas_Path, filesep, "MICeAtlasLabels.mnc");
                MICe_atlas_Path = strcat(MICe_atlas_Path, filesep, "MICeAtlas.mnc");
                
                websave(MICe_atlas_Path, "https://www.mouseimaging.ca/mnc/C57Bl6j_mouse_atlas/male-female-mouse-atlas.mnc");
                websave(MICe_labels_Path, "https://www.mouseimaging.ca/mnc/C57Bl6j_mouse_atlas/c57_fixed_labels_resized.mnc");
                
                progress.Value = progress.Value + 2 * step_size;
                progress.Message = 'Importing MICe Neuroanatomy Atlas - C57BL6J Mouse';

                % Load atlas and labels using minc_read, apply labels as
                % mask
                [MICe_info, MICe_atlas.ImageData] = minc_read(char(MICe_atlas_Path));
                [~,         MICe_labels.ImageData] = minc_read(char(MICe_labels_Path));
                MICe_labels.ImageData = cast(MICe_labels.ImageData, 'logical');
                MICe_atlas.ImageData = MICe_atlas.ImageData .* cast(MICe_labels.ImageData, 'like', MICe_atlas.ImageData);

                % Permute dims, pagetranspose and flipud
                MICe_atlas.ImageData = permute(MICe_atlas.ImageData, [1,3,2]);
                MICe_atlas.ImageData = pagetranspose(MICe_atlas.ImageData);
                MICe_atlas.ImageData = flipud(MICe_atlas.ImageData);
                MICe_atlas.ImageData = flip(MICe_atlas.ImageData, 3);

                % Get atlas info, update dimensions and rotation
                % matrix
                MICe_atlas.VoxDimX = MICe_info.info.voxel_size(1);
                MICe_atlas.VoxDimY = MICe_info.info.voxel_size(2);
                MICe_atlas.SliceThickness = MICe_info.info.voxel_size(3);
                MICe_atlas.SliceGap = 0;
                MICe_atlas.Units = "mm mm mm";
                MICe_atlas.RotMat = MICe_info.info.mat(1:3,1:3);

                % Save to loaded atlas collection struct, update
                % drop down items
                loadedCollection.MICeAtlas = MICe_atlas;
                dropdown_items = cat(1, dropdown_items, 'MICe Neuroanatomy Atlas - C57BL6J Mouse');
            end

            if ismember(app.T2wWaxholmSpaceAtlasC57BL6JMouseNode, chosen_Collection)
                % Create end folder
                waxholm_t2_folder = strcat(atlas_loading_folder, filesep, 'T2w Waxholm Space Atlas - C57BL6J Mouse');
                mkdir(waxholm_t2_folder);
            
                % Download atlas
                progress.Value = progress.Value + step_size;
                progress.Message = 'Downloading T2w Waxholm Space Atlas - C57BL6J Mouse';
                waxholm_t2_atlas_Archive = strcat(waxholm_t2_folder, filesep, "T2WaxholmMouse.nii.gz");
                websave(waxholm_t2_atlas_Archive, "https://www.nitrc.org/frs/download.php/9520/canon_T2W_r.nii.gz");
            
                progress.Value = progress.Value + step_size;
                progress.Message = 'Copying T2w Waxholm Space labels';
                LabelsBasePath = fullfile(fileparts(mfilename('fullpath')), 'resources');
                copyfile(fullfile(LabelsBasePath, 'WHS_0.6.1_Labels.nii.gz'), ...
                    strcat(waxholm_t2_folder, filesep, 'T2WaxholmMouseLabels.nii.gz'));
            
                progress.Value = progress.Value + step_size;
                progress.Message = 'Importing T2w Waxholm Space Atlas - C57BL6J Mouse';
                % Build both paths from the folder
                waxholm_t2_labels_Path = strcat(waxholm_t2_folder, filesep, 'T2WaxholmMouseLabels.nii.gz');
                waxholm_t2_atlas_Path  = strcat(waxholm_t2_folder, filesep, 'T2WaxholmMouse.nii.gz');
            
                % Load atlas and labels using niftiread, apply labels as mask
                waxholm_t2_atlas.ImageData  = niftiread(waxholm_t2_atlas_Path);
                waxholm_t2_labels.ImageData = niftiread(waxholm_t2_labels_Path);
                
                % Remove nerves and inner ear and apply labels as mask
                waxholm_t2_labels.ImageData(ismember(waxholm_t2_labels.ImageData, [18 32 33 34 35 36 37 38 39])) = 0;
                waxholm_t2_labels.ImageData = cast(waxholm_t2_labels.ImageData, 'logical');
                waxholm_t2_atlas.ImageData = waxholm_t2_atlas.ImageData .* cast(waxholm_t2_labels.ImageData, 'like', waxholm_t2_atlas.ImageData);
            
                % permute dims, pagetranspose and flipud
                waxholm_t2_atlas.ImageData = permute(waxholm_t2_atlas.ImageData, [1,3,2]);
                waxholm_t2_atlas.ImageData = pagetranspose(waxholm_t2_atlas.ImageData);
                waxholm_t2_atlas.ImageData = flipud(waxholm_t2_atlas.ImageData);
                waxholm_t2_atlas.ImageData = flip(waxholm_t2_atlas.ImageData, 3);
            
                % Get atlas info, update dimensions and rotation matrix
                waxholm_info = niftiinfo(waxholm_t2_atlas_Path);
                waxholm_t2_atlas.VoxDimX        = waxholm_info.PixelDimensions(1);
                waxholm_t2_atlas.VoxDimY        = waxholm_info.PixelDimensions(1);
                waxholm_t2_atlas.SliceThickness = waxholm_info.PixelDimensions(1);
                waxholm_t2_atlas.SliceGap       = 0;
                waxholm_t2_atlas.Units          = "mm mm mm";
                waxholm_t2_atlas.RotMat         = waxholm_info.Transform.T(1:3,1:3);
            
                % Save to loaded atlas collection struct, update drop down items
                loadedCollection.T2WaxholmMouse = waxholm_t2_atlas;
                dropdown_items = cat(1, dropdown_items, 'T2w Waxholm Space Atlas - C57BL6J Mouse');
            end

            if ismember(app.T1wWaxholmSpaceAtlasC57BL6JMouseNode, chosen_Collection)
                % Create end folder
                waxholm_t1_atlas_Path = strcat(atlas_loading_folder, filesep, 'T1w Waxholm Space Atlas - C57BL6J Mouse');
                mkdir(waxholm_t1_atlas_Path);

                % Download atlas, unzip to end folder, rename to
                % .nii
                progress.Value = progress.Value + step_size;
                progress.Message = 'Downloading T1w Waxholm Space Atlas - C57BL6J Mouse';
                waxholm_t1_atlas_Archive = strcat(waxholm_t1_atlas_Path, filesep, "T1WaxholmMouse.nii.gz");
                websave(waxholm_t1_atlas_Archive, "https://www.nitrc.org/frs/download.php/9518/canon_T1W_r.nii.gz");

                progress.Value = progress.Value + step_size;
                progress.Message = 'Unzipping T1w Waxholm Space Atlas - C57BL6J Mouse';
                
                LabelsBasePath = fullfile(fileparts(mfilename('fullpath')), 'resources');
                copyfile(fullfile(LabelsBasePath, 'WHS_0.6.1_Labels.nii.gz'), strcat(waxholm_t1_atlas_Path, filesep, 'T1WaxholmMouseLabels.nii.gz'));


                progress.Value = progress.Value + step_size;
                progress.Message = 'Importing T1w Waxholm Space Atlas - C57BL6J Mouse';
                % Update atlas and labels path
                waxholm_t1_labels_Path = strcat(waxholm_t1_atlas_Path, filesep, 'T1WaxholmMouseLabels.nii.gz');
                waxholm_t1_atlas_Path = strcat(waxholm_t1_atlas_Path, filesep, 'T1WaxholmMouse.nii.gz');
                
                % Load atlas and labels using niftiread, apply labels as
                % mask
                waxholm_t1_atlas.ImageData = niftiread(waxholm_t1_atlas_Path);
                waxholm_t1_labels.ImageData = niftiread(waxholm_t1_labels_Path);
                
                % Remove nerves and inner ear and apply labels as mask
                waxholm_t1_labels.ImageData(ismember(waxholm_t1_labels.ImageData, [18 32 33 34 35 36 37 38 39])) = 0;
                waxholm_t1_labels.ImageData = cast(waxholm_t1_labels.ImageData, 'logical');
                waxholm_t1_atlas.ImageData = waxholm_t1_atlas.ImageData .* cast(waxholm_t1_labels.ImageData, 'like', waxholm_t1_atlas.ImageData);
                

                % permute dims, pagetranspose and flipud
                waxholm_t1_atlas.ImageData = permute(waxholm_t1_atlas.ImageData, [1,3,2]);
                waxholm_t1_atlas.ImageData = pagetranspose(waxholm_t1_atlas.ImageData);
                waxholm_t1_atlas.ImageData = flipud(waxholm_t1_atlas.ImageData);
                waxholm_t1_atlas.ImageData = flip(waxholm_t1_atlas.ImageData, 3);

                % Get atlas info, update dimensions and rotation
                % matrix
                waxholm_info = niftiinfo(waxholm_t1_atlas_Path);
                waxholm_t1_atlas.VoxDimX = waxholm_info.PixelDimensions(1);
                waxholm_t1_atlas.VoxDimY = waxholm_info.PixelDimensions(1);
                waxholm_t1_atlas.SliceThickness = waxholm_info.PixelDimensions(1);
                waxholm_t1_atlas.SliceGap = 0;
                waxholm_t1_atlas.Units = "mm mm mm";
                waxholm_t1_atlas.RotMat = waxholm_info.Transform.T(1:3,1:3);

                % Save to loaded atlas collection struct, update
                % drop down items
                loadedCollection.T1WaxholmMouse = waxholm_t1_atlas;
                dropdown_items = cat(1, dropdown_items, 'T1w Waxholm Space Atlas - C57BL6J Mouse');
            end
            
            if ismember(app.AllenBrainAtlasAdultMouseNisslGrayscaleNode, chosen_Collection) 
                % Download atlas, unzip and rename end folder
                progress.Value = progress.Value + step_size;
                progress.Message = 'Downloading Allen Brain Atlas - Adult Mouse Nissl Grayscale';
                allen_atlas_Archive = strcat(atlas_loading_folder, filesep, "AllenMouseAtlas.zip");
                websave(allen_atlas_Archive, "http://download.alleninstitute.org/informatics-archive/current-release/mouse_annotation/P56_atlasVolume.zip");

                progress.Value = progress.Value + step_size;
                progress.Message = 'Unzipping Allen Brain Atlas - Adult Mouse Nissl Grayscale';
                unzip(allen_atlas_Archive, atlas_loading_folder);

                allen_atlas_Path = strcat(atlas_loading_folder, filesep, 'Allen Brain Atlas - Adult Mouse Nissl Grayscale');
                movefile(strcat(atlas_loading_folder, filesep, 'atlasVolume'), allen_atlas_Path);
                
                % delete downloaded .zip
                delete(strcat(atlas_loading_folder, filesep, "AllenMouseAtlas.zip"));
                
                progress.Value = progress.Value + step_size;
                progress.Message = 'Importing Allen Brain Atlas - Adult Mouse Nissl Grayscale';
                % Update atlas path
                allen_atlas_Path = strcat(allen_atlas_Path, filesep, 'atlasVolume.raw');
                % Load atlas per Allen Brain Atlas instructions
                fid = fopen(allen_atlas_Path, 'r', 'l' );
                allen_atlas.ImageData = fread( fid, prod([528 320 456]), 'uint8' );
                fclose( fid );
                allen_atlas.ImageData = reshape(allen_atlas.ImageData, [528 320 456]);
                % Permute and transpose image
                allen_atlas.ImageData = permute(allen_atlas.ImageData, [3 2 1]);
                allen_atlas.ImageData = pagetranspose(allen_atlas.ImageData);

                % Set atlas dimensions, rotation matrix
                allen_atlas.VoxDimX = 0.025;
                allen_atlas.VoxDimY = 0.025;
                allen_atlas.SliceThickness = 0.025;
                allen_atlas.SliceGap = 0;
                allen_atlas.Units = "mm mm mm";
                allen_atlas.RotMat = diag([1,1,1]);
                
                % Save to loaded atlas collection struct, update
                % drop down items
                loadedCollection.AllenAdultMouseNissl = allen_atlas;
                dropdown_items = cat(1, dropdown_items, 'Allen Brain Atlas - Adult Mouse Nissl Grayscale');
            end
                       
            progress.Value = 1;
            progress.Message = 'Done!';
            pause(0.5)
            close(progress);

            % Return loaded atlas collection to suMRak, update drop down
            app.suMRak.AtlasCollection = loadedCollection;
            app.suMRak.SelectAtlasDropDown.Items = dropdown_items;
            
            % Display confirmation
            uiconfirm(app.ReferenceAtlasImporterUIFigure, "Atlas selection sucessfuly downloaded and imported to suMRak.", "","Options",{'OK'},"DefaultOption",1, "Icon","success");
        end

        % Close request function: ReferenceAtlasImporterUIFigure
        function ReferenceAtlasImporterUIFigureCloseRequest(app, event)
            
            % Turn on atlas import button, delete app
            app.suMRak.ImportReferenceAtlasButton.Enable = 'on';
            close(app.suMRak.ProgressBar)
            delete(gcp('nocreate'))
            delete(app)
        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Get the file path for locating images
            pathToMLAPP = fileparts(mfilename('fullpath'));

            % Create ReferenceAtlasImporterUIFigure and hide until all components are created
            app.ReferenceAtlasImporterUIFigure = uifigure('Visible', 'off');
            app.ReferenceAtlasImporterUIFigure.Position = [100 100 480 345];
            app.ReferenceAtlasImporterUIFigure.Name = 'Reference Atlas Importer';
            app.ReferenceAtlasImporterUIFigure.Icon = fullfile(pathToMLAPP, 'resources', 'icon.png');
            app.ReferenceAtlasImporterUIFigure.CloseRequestFcn = createCallbackFcn(app, @ReferenceAtlasImporterUIFigureCloseRequest, true);

            % Create ReferenceAtlasSelectionLabel
            app.ReferenceAtlasSelectionLabel = uilabel(app.ReferenceAtlasImporterUIFigure);
            app.ReferenceAtlasSelectionLabel.Position = [168 306 146 22];
            app.ReferenceAtlasSelectionLabel.Text = 'Reference Atlas Selection:';

            % Create ReferenceAtlasTree
            app.ReferenceAtlasTree = uitree(app.ReferenceAtlasImporterUIFigure, 'checkbox');
            app.ReferenceAtlasTree.Position = [49 147 383 151];

            % Create MRIAtlasNode
            app.MRIAtlasNode = uitreenode(app.ReferenceAtlasTree);
            app.MRIAtlasNode.Text = 'MRI Atlas';

            % Create MICeNeuroanatomyAtlasC57BL6JMouseNode
            app.MICeNeuroanatomyAtlasC57BL6JMouseNode = uitreenode(app.MRIAtlasNode);
            app.MICeNeuroanatomyAtlasC57BL6JMouseNode.Text = 'MICe Neuroanatomy Atlas C57BL/6J Mouse';

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

            % Assign Checked Nodes
            app.ReferenceAtlasTree.CheckedNodesChangedFcn = createCallbackFcn(app, @ReferenceAtlasTreeCheckedNodesChanged, true);

            % Create SaveToDirectoryCheckBox
            app.SaveToDirectoryCheckBox = uicheckbox(app.ReferenceAtlasImporterUIFigure);
            app.SaveToDirectoryCheckBox.ValueChangedFcn = createCallbackFcn(app, @SaveToDirectoryCheckBoxValueChanged, true);
            app.SaveToDirectoryCheckBox.Text = 'Save To Directory';
            app.SaveToDirectoryCheckBox.Position = [183 80 116 22];

            % Create AtlasDirectoryEditField
            app.AtlasDirectoryEditField = uieditfield(app.ReferenceAtlasImporterUIFigure, 'text');
            app.AtlasDirectoryEditField.Editable = 'off';
            app.AtlasDirectoryEditField.Enable = 'off';
            app.AtlasDirectoryEditField.Position = [144 49 298 23];

            % Create SetDirectoryButton
            app.SetDirectoryButton = uibutton(app.ReferenceAtlasImporterUIFigure, 'push');
            app.SetDirectoryButton.ButtonPushedFcn = createCallbackFcn(app, @SetDirectoryButtonPushed, true);
            app.SetDirectoryButton.Enable = 'off';
            app.SetDirectoryButton.Position = [40 49 95 23];
            app.SetDirectoryButton.Text = 'Set Directory';

            % Create DownloadButton
            app.DownloadButton = uibutton(app.ReferenceAtlasImporterUIFigure, 'push');
            app.DownloadButton.ButtonPushedFcn = createCallbackFcn(app, @DownloadButtonPushed, true);
            app.DownloadButton.Position = [185 12 112 23];
            app.DownloadButton.Text = 'Download';

            % Create EstimatedDownloadSizeLabel
            app.EstimatedDownloadSizeLabel = uilabel(app.ReferenceAtlasImporterUIFigure);
            app.EstimatedDownloadSizeLabel.HorizontalAlignment = 'center';
            app.EstimatedDownloadSizeLabel.Position = [103 116 276 22];
            app.EstimatedDownloadSizeLabel.Text = 'Estimated Download Size: 0 MB';

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