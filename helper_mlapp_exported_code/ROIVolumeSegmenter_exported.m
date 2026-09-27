classdef ROIVolumeSegmenter_exported < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        ROIVolumeSegmenterUIFigure     matlab.ui.Figure
        ActiveContourOptionsPanel      matlab.ui.container.Panel
        SelectModelButtonGroup         matlab.ui.container.ButtonGroup
        EdgeButton                     matlab.ui.control.RadioButton
        ChanVeseButton                 matlab.ui.control.RadioButton
        ContractionBiasEditField       matlab.ui.control.NumericEditField
        ContractionBiasEditFieldLabel  matlab.ui.control.Label
        SmoothFactorEditField          matlab.ui.control.NumericEditField
        SmoothFactorEditFieldLabel     matlab.ui.control.Label
        MaximumNumberOfIterationsEditField  matlab.ui.control.NumericEditField
        MaximumNumberOfIterationsEditFieldLabel  matlab.ui.control.Label
        DSuperpixelsOptionsPanel       matlab.ui.container.Panel
        ShowAllSuperpixelsButton       matlab.ui.control.Button
        NumberofIterationsEditField    matlab.ui.control.NumericEditField
        NumberofIterationsEditFieldLabel  matlab.ui.control.Label
        CompactnessEditField           matlab.ui.control.NumericEditField
        CompactnessEditFieldLabel      matlab.ui.control.Label
        SelectAlgorithmButtonGroup     matlab.ui.container.ButtonGroup
        SlicButton                     matlab.ui.control.RadioButton
        Slic0Button                    matlab.ui.control.RadioButton
        NumberofSuperpixelsEditField   matlab.ui.control.NumericEditField
        NumberofSuperpixelsEditFieldLabel  matlab.ui.control.Label
        RunModelButton                 matlab.ui.control.Button
        SelectROIListBox               matlab.ui.control.ListBox
        SelectROIListBoxLabel          matlab.ui.control.Label
        ChooseMethodDropDown           matlab.ui.control.DropDown
        ChooseMethodDropDownLabel      matlab.ui.control.Label
        SaveAndReturnSegmentationButton  matlab.ui.control.Button
        Panel                          matlab.ui.container.Panel
    end

    
    properties (Access = private)
        suMRak % Main suMRak interface
        ViewerParentObject % 3D Viewer parent object
        Volume % Volume inherited from suMRak
        VolumeDims % Dimensions of the main volume
        Mask % ROI masks inherited from suMRak
        MaskDims % Dimensions of ROI masks
        ROIindex % ROI index selected in suMRak
        VoxDimX % Stores X dimension of volume voxel
        VoxDimY % Stores Y dimension of volume voxel
        VoxDimZ % Stores Z dimension of volume voxel
        AlphaMap % MRI AlphaMap
        ROIIdentifiers % Contains all ROI names inherited from suMRak
        SuperPixels % Stores original result 3D matrix with all superpixels
        SuperPixelsNumber % Number of superpixel generated
    end
    

    % Callbacks that handle component events
    methods (Access = private)

        % Code that executes after component creation
        function startupFcn(app, caller, volume, ROImask, ROIIdentifiers, VoxDimX, VoxDimY, VoxDimZ)
            
            % Input validation
            assert(isnumeric(volume) && ~isempty(volume) && ndims(volume) == 3, ...
                'ROIVolumeSegmenter: volume must be a non-empty 3-D numeric array (got %dD).', ndims(volume));
            assert(islogical(ROImask) || isnumeric(ROImask), ...
                'ROIVolumeSegmenter: ROImask must be numeric or logical.');
            % ROImask is [] until the first ROI is drawn; otherwise it must match the volume
            assert(isempty(ROImask) || (size(ROImask,1) == size(volume,1) && ...
                   size(ROImask,2) == size(volume,2) && size(ROImask,3) == size(volume,3)), ...
                'ROIVolumeSegmenter: ROImask spatial dimensions must match volume.');
            assert(isnumeric(VoxDimX) && isscalar(VoxDimX) && VoxDimX > 0, ...
                'ROIVolumeSegmenter: VoxDimX must be a positive scalar.');
            assert(isnumeric(VoxDimY) && isscalar(VoxDimY) && VoxDimY > 0, ...
                'ROIVolumeSegmenter: VoxDimY must be a positive scalar.');
            assert(isnumeric(VoxDimZ) && isscalar(VoxDimZ) && VoxDimZ > 0, ...
                'ROIVolumeSegmenter: VoxDimZ must be a positive scalar.');

            % Store suMRak
            app.suMRak = caller;
            
            % Store image data and dimensions
            app.Volume = volume;
            app.VolumeDims = size(app.Volume);
            app.Mask = ROImask;
            app.MaskDims = size(app.Mask);
            app.VoxDimX = VoxDimX;
            app.VoxDimY = VoxDimY;
            app.VoxDimZ = VoxDimZ;

            %Update ROI identifiers and the list box
            app.ROIIdentifiers = ROIIdentifiers;
            app.SelectROIListBox.Items = app.ROIIdentifiers;
            
            % Center on screen
            movegui(app.ROIVolumeSegmenterUIFigure, 'center');

            % Refresh 3d viewer
            % Create transformation matrix
            app.ViewerParentObject = viewer3d('Parent', app.Panel);
            app.ViewerParentObject.OrientationAxes = 'off';
            T = [app.VoxDimX 0 0 0; 0 app.VoxDimY 0 0; 0 0 app.VoxDimZ 0; 0 0 0 1];
            tform = affinetform3d(T);
            % Alpha map as a piecewise-linear transfer function (replaces the
            % 256-element literal). Control points reproduce the original values
            % exactly: transparent up to 5/256, then 0.15, 0.30, 0.38 and 0.5.
            app.AlphaMap = interp1([0 5 10 30 55 256]/256, [0 0 0.15 0.30 0.38 0.5], (0:255)'/255);
            % volshow(app.Volume, 'Parent', app.ViewerParentObject, 'Transformation', tform, 'RenderingStyle', 'GradientOpacity', 'OverlayData', ...
            %     app.Mask(:,:,:,app.ROIindex), 'OverlayRenderingStyle', 'LabelOverlay', 'GradientOpacityValue', 0.8, 'Alphamap',alphamap);
            volshow(app.Volume, 'Parent', app.ViewerParentObject, 'Transformation', tform, 'RenderingStyle', 'GradientOpacity', ...
                'GradientOpacityValue', 0.8, 'Alphamap', app.AlphaMap);
            
        end

        % Value changed function: SelectROIListBox
        function SelectROIListBoxValueChanged(app, event)
            delete(app.ViewerParentObject);
            value = app.SelectROIListBox.Value;
            index = find(strcmp(app.ROIIdentifiers,value));

            app.ViewerParentObject = viewer3d('Parent', app.Panel);
            app.ViewerParentObject.OrientationAxes = 'off';
            T = [app.VoxDimX 0 0 0; 0 app.VoxDimY 0 0; 0 0 app.VoxDimZ 0; 0 0 0 1];
            tform = affinetform3d(T);
            volshow(app.Volume, 'Parent', app.ViewerParentObject, 'Transformation', tform, 'RenderingStyle', 'GradientOpacity', 'OverlayData', ...
                app.Mask(:,:,:,index), 'OverlayRenderingStyle', 'LabelOverlay', 'GradientOpacityValue', 0.8, 'Alphamap',app.AlphaMap);

            app.RunModelButton.Enable = "on";
            app.RunModelButton.Tooltip = "";
        end

        % Button pushed function: RunModelButton
        function RunModelButtonPushed(app, event)
            
            selection = app.ChooseMethodDropDown.Value;
            switch selection
                case 'Active Contour'
                    progress = uiprogressdlg(app.ROIVolumeSegmenterUIFigure,'Title',"Please wait",...
                         'Message', "Reshaping selected ROI using Active Contours...", 'Indeterminate','on');
                    drawnow;
                    method = app.SelectModelButtonGroup.SelectedObject.Text;
                    index = find(strcmp(app.ROIIdentifiers,app.SelectROIListBox.Value));
                    w = warning('error', 'images:activecontour:vanishingContour');
                    try
                        newROI = activecontour(im2uint8(app.Volume),app.Mask(:,:,:,index),app.MaximumNumberOfIterationsEditField.Value,method, ...
                            "SmoothFactor",app.SmoothFactorEditField.Value,"ContractionBias",app.ContractionBiasEditField.Value);
                    catch ME
                        switch ME.identifier 
                            case 'images:activecontour:vanishingContour'
                                uialert(app.ROIVolumeSegmenterUIFigure, 'Active Cotour region collapsed to zero. Consider decreasing contraction bias or maximum number of iterations or increase your seed ROI size.', 'Warning!','Icon','warning');
                                warning(w);
                                return;
                        end
                    end
                    warning(w);
                    app.Mask(:,:,:,index) = newROI;
                    close(progress);
        
                    % Refresh 3D Viewer
                    delete(app.ViewerParentObject);
                    app.ViewerParentObject = viewer3d('Parent', app.Panel);
                    app.ViewerParentObject.OrientationAxes = 'off';
                    T = [app.VoxDimX 0 0 0; 0 app.VoxDimY 0 0; 0 0 app.VoxDimZ 0; 0 0 0 1];
                    tform = affinetform3d(T);
                    volshow(app.Volume, 'Parent', app.ViewerParentObject, 'Transformation', tform, 'RenderingStyle', 'GradientOpacity', 'OverlayData', ...
                        app.Mask(:,:,:,index), 'OverlayRenderingStyle', 'LabelOverlay', 'GradientOpacityValue', 0.8, 'Alphamap',app.AlphaMap);
                case '3D Superpixels'
                    progress = uiprogressdlg(app.ROIVolumeSegmenterUIFigure,'Title',"Please wait",...
                         'Message', "Purging old 3D Superpixels...", 'Indeterminate','on');
                    drawnow;
                    try
                        superpixelIdx = find(contains(app.ROIIdentifiers,'3Dsuperpixel'));
                        app.Mask(:,:,:,superpixelIdx) = [];
                        app.MaskDims = size(app.Mask);
                        app.ROIIdentifiers(superpixelIdx) = [];
                    catch
                    end

                    progress.Message = "Generating 3D Superpixels...";
                    [app.SuperPixels, app.SuperPixelsNumber] = superpixels3(app.Volume,app.NumberofSuperpixelsEditField.Value, ...
                        'Compactness',app.CompactnessEditField.Value,'Method',app.SelectAlgorithmButtonGroup.SelectedObject.Text, ...
                        'NumIterations',app.NumberofIterationsEditField.Value);

                    progress.Message = "Creating new ROI for each 3D Superpixel...";
                    pixelIdxList = label2idx(app.SuperPixels);
                    for superpixel = 1:app.SuperPixelsNumber
                         newROI = zeros(app.VolumeDims,'like',app.Volume);
                         memberPixelIdx = pixelIdxList{superpixel};
                         newROI(memberPixelIdx) = 1;
                         app.Mask = cat(4, app.Mask, newROI);
                         app.ROIIdentifiers = cat(2, app.ROIIdentifiers, "3Dsuperpixel" + superpixel);
                    end

                    app.MaskDims = size(app.Mask);
                    app.SelectROIListBox.Items = app.ROIIdentifiers;

                    close(progress);

                    % Refresh 3D Viewer
                    delete(app.ViewerParentObject);
                    app.ViewerParentObject = viewer3d('Parent', app.Panel);
                    app.ViewerParentObject.OrientationAxes = 'off';
                    T = [app.VoxDimX 0 0 0; 0 app.VoxDimY 0 0; 0 0 app.VoxDimZ 0; 0 0 0 1];
                    tform = affinetform3d(T);
                    volshow(app.Volume, 'Parent', app.ViewerParentObject, 'Transformation', tform, 'RenderingStyle', 'GradientOpacity', 'OverlayData', ...
                    app.SuperPixels, 'OverlayRenderingStyle', 'LabelOverlay', 'GradientOpacityValue', 0.8, 'Alphamap',app.AlphaMap);

                    % Enable Show All Superpixels button
                    app.ShowAllSuperpixelsButton.Enable = "on";
 
            end

        end

        % Selection changed function: SelectModelButtonGroup
        function SelectModelButtonGroupSelectionChanged(app, event)
            selectedButton = app.SelectModelButtonGroup.SelectedObject;
            
            switch selectedButton.Text
                case 'Chan-Vese'
                    app.SmoothFactorEditField.Value = 0;
                    app.ContractionBiasEditField.Value = 0;
                case 'Edge'
                    app.SmoothFactorEditField.Value = 1;
                    app.ContractionBiasEditField.Value = 0.3;
            end
        end

        % Selection changed function: SelectAlgorithmButtonGroup
        function SelectAlgorithmButtonGroupSelectionChanged(app, event)
            selectedButton = app.SelectAlgorithmButtonGroup.SelectedObject;
            
            switch selectedButton.Text
                case 'slic0'
                    app.CompactnessEditField.Value = 0.001;
                case 'slic'
                    app.CompactnessEditField.Value = 0.05;
            end
        end

        % Value changed function: ChooseMethodDropDown
        function ChooseMethodDropDownValueChanged(app, event)
            value = app.ChooseMethodDropDown.Value;
            
            switch value
                case 'Active Contour'
                    app.ActiveContourOptionsPanel.Visible = "on";
                    app.DSuperpixelsOptionsPanel.Visible = "off";
                    if ~exist(app.SelectROIListBox.Value, "var")
                        app.RunModelButton.Enable = "off";
                        app.RunModelButton.Tooltip = "Please select a seed ROI first.";
                    end
                case '3D Superpixels'
                    app.ActiveContourOptionsPanel.Visible = "off";
                    app.DSuperpixelsOptionsPanel.Visible = "on";
                    app.RunModelButton.Enable = "on";
                    app.RunModelButton.Tooltip = "";
            end
        end

        % Button pushed function: ShowAllSuperpixelsButton
        function ShowAllSuperpixelsButtonPushed(app, event)
            % Refresh 3D Viewer with all generated superpixels labeled
            delete(app.ViewerParentObject);
            app.ViewerParentObject = viewer3d('Parent', app.Panel);
            app.ViewerParentObject.OrientationAxes = 'off';
            T = [app.VoxDimX 0 0 0; 0 app.VoxDimY 0 0; 0 0 app.VoxDimZ 0; 0 0 0 1];
            tform = affinetform3d(T);
            volshow(app.Volume, 'Parent', app.ViewerParentObject, 'Transformation', tform, 'RenderingStyle', 'GradientOpacity', 'OverlayData', ...
            app.SuperPixels, 'OverlayRenderingStyle', 'LabelOverlay', 'GradientOpacityValue', 0.8, 'Alphamap',app.AlphaMap);
        end

        % Button pushed function: SaveAndReturnSegmentationButton
        function SaveAndReturnSegmentationButtonPushed(app, event)
            
            superpixelIdx = find(contains(app.ROIIdentifiers,'3Dsuperpixel'));
            if ~isempty(superpixelIdx) % There are new superpixels
                % Prompt user for new ROI name and superpixel array to add
                % up together.
                input = inputdlg({'Enter new ROI name:','Enter which superpixels to add together (1,2,3,6:9):'}, ...
                    'Choose which superpixels to keep', [1 40], {'', strcat(num2str(min(superpixelIdx)),':',num2str(length(superpixelIdx)))});
                ROIname = input{1};
                selectedSuperpixels = str2num(input{2}); %#ok<ST2NM>
                % Check for empty or duplicate ROI name
                if isequal(ROIname, '') || any(strcmp(app.ROIIdentifiers,ROIname))
                    uialert(app.ROIVolumeSegmenterUIFigure, 'ROI name must be non-empty and not a duplicate.', 'ROI Naming Error');
                    return
                end
                % Check for empty or non-existant superpixel selections
                if isempty(selectedSuperpixels) || all(~any(selectedSuperpixels,superpixelIdx))
                    uialert(app.ROIVolumeSegmenterUIFigure, 'Selected superpixels empty or out of bounds.', 'Superpixel Selection Error');
                    return
                end
                % Construct new ROI by superpixel addition
                newROI = zeros(app.VolumeDims,'like',app.Volume);
                for i = selectedSuperpixels
                    newROI = newROI + app.Mask(:,:,:,superpixelIdx(i));
                end
                % Flush all superpixel ROIs
                app.Mask(:,:,:,superpixelIdx) = [];
                app.ROIIdentifiers(superpixelIdx) = [];
                % Add the newly created ROI to ROIMask and ROIIdentifiers
                app.Mask = cat(4, app.Mask, newROI);
                app.ROIIdentifiers = cat(2, app.ROIIdentifiers, ROIname);
            end
            
            % Apply all ROI to suMRak
            app.suMRak.ROIMask = app.Mask;
            app.suMRak.ROIIdentifiers = app.ROIIdentifiers;
            app.suMRak.ROIListListBox.Items = app.ROIIdentifiers;
            
            % Close suMRak progress bar and delete app
            app.suMRak.RefreshImageSegmenter;
            app.suMRak.VolROISegmentationToolsButton.Enable = 'on';
            close(app.suMRak.ProgressBar);
            delete(app);
        end

        % Close request function: ROIVolumeSegmenterUIFigure
        function ROIVolumeSegmenterUIFigureCloseRequest(app, event)
            
            % Close suMRak progress bar and delete app
            app.suMRak.VolROISegmentationToolsButton.Enable = 'on';
            close(app.suMRak.ProgressBar);
            delete(app);            
        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Get the file path for locating images
            pathToMLAPP = fileparts(mfilename('fullpath'));

            % Create ROIVolumeSegmenterUIFigure and hide until all components are created
            app.ROIVolumeSegmenterUIFigure = uifigure('Visible', 'off');
            app.ROIVolumeSegmenterUIFigure.Position = [100 100 854 480];
            app.ROIVolumeSegmenterUIFigure.Name = 'ROI Volume Segmenter';
            app.ROIVolumeSegmenterUIFigure.Icon = fullfile(pathToMLAPP, 'resources', 'icon.png');
            app.ROIVolumeSegmenterUIFigure.CloseRequestFcn = createCallbackFcn(app, @ROIVolumeSegmenterUIFigureCloseRequest, true);

            % Create Panel
            app.Panel = uipanel(app.ROIVolumeSegmenterUIFigure);
            app.Panel.BorderType = 'none';
            app.Panel.TitlePosition = 'centertop';
            app.Panel.BackgroundColor = [1 1 1];
            app.Panel.Position = [13 12 605 459];

            % Create SaveAndReturnSegmentationButton
            app.SaveAndReturnSegmentationButton = uibutton(app.ROIVolumeSegmenterUIFigure, 'push');
            app.SaveAndReturnSegmentationButton.ButtonPushedFcn = createCallbackFcn(app, @SaveAndReturnSegmentationButtonPushed, true);
            app.SaveAndReturnSegmentationButton.Position = [650 20 183 23];
            app.SaveAndReturnSegmentationButton.Text = 'Save And Return Segmentation';

            % Create ChooseMethodDropDownLabel
            app.ChooseMethodDropDownLabel = uilabel(app.ROIVolumeSegmenterUIFigure);
            app.ChooseMethodDropDownLabel.HorizontalAlignment = 'center';
            app.ChooseMethodDropDownLabel.Position = [690 449 93 22];
            app.ChooseMethodDropDownLabel.Text = 'Choose Method:';

            % Create ChooseMethodDropDown
            app.ChooseMethodDropDown = uidropdown(app.ROIVolumeSegmenterUIFigure);
            app.ChooseMethodDropDown.Items = {'Active Contour', '3D Superpixels'};
            app.ChooseMethodDropDown.ValueChangedFcn = createCallbackFcn(app, @ChooseMethodDropDownValueChanged, true);
            app.ChooseMethodDropDown.Position = [663 427 154 22];
            app.ChooseMethodDropDown.Value = 'Active Contour';

            % Create SelectROIListBoxLabel
            app.SelectROIListBoxLabel = uilabel(app.ROIVolumeSegmenterUIFigure);
            app.SelectROIListBoxLabel.HorizontalAlignment = 'center';
            app.SelectROIListBoxLabel.Position = [708 391 63 22];
            app.SelectROIListBoxLabel.Text = 'Select ROI';

            % Create SelectROIListBox
            app.SelectROIListBox = uilistbox(app.ROIVolumeSegmenterUIFigure);
            app.SelectROIListBox.Items = {};
            app.SelectROIListBox.ValueChangedFcn = createCallbackFcn(app, @SelectROIListBoxValueChanged, true);
            app.SelectROIListBox.Position = [646 305 188 86];
            app.SelectROIListBox.Value = {};

            % Create RunModelButton
            app.RunModelButton = uibutton(app.ROIVolumeSegmenterUIFigure, 'push');
            app.RunModelButton.ButtonPushedFcn = createCallbackFcn(app, @RunModelButtonPushed, true);
            app.RunModelButton.Enable = 'off';
            app.RunModelButton.Tooltip = {'Please select a seed ROI first.'};
            app.RunModelButton.Position = [691 62 100 23];
            app.RunModelButton.Text = 'Run Model';

            % Create DSuperpixelsOptionsPanel
            app.DSuperpixelsOptionsPanel = uipanel(app.ROIVolumeSegmenterUIFigure);
            app.DSuperpixelsOptionsPanel.BorderType = 'none';
            app.DSuperpixelsOptionsPanel.TitlePosition = 'centertop';
            app.DSuperpixelsOptionsPanel.Title = '3D Superpixels Options';
            app.DSuperpixelsOptionsPanel.Visible = 'off';
            app.DSuperpixelsOptionsPanel.Position = [631 99 218 186];

            % Create NumberofSuperpixelsEditFieldLabel
            app.NumberofSuperpixelsEditFieldLabel = uilabel(app.DSuperpixelsOptionsPanel);
            app.NumberofSuperpixelsEditFieldLabel.HorizontalAlignment = 'right';
            app.NumberofSuperpixelsEditFieldLabel.Position = [16 137 127 22];
            app.NumberofSuperpixelsEditFieldLabel.Text = 'Number of Superpixels';

            % Create NumberofSuperpixelsEditField
            app.NumberofSuperpixelsEditField = uieditfield(app.DSuperpixelsOptionsPanel, 'numeric');
            app.NumberofSuperpixelsEditField.LowerLimitInclusive = 'off';
            app.NumberofSuperpixelsEditField.Limits = [0 Inf];
            app.NumberofSuperpixelsEditField.RoundFractionalValues = 'on';
            app.NumberofSuperpixelsEditField.Position = [151 137 53 22];
            app.NumberofSuperpixelsEditField.Value = 10;

            % Create SelectAlgorithmButtonGroup
            app.SelectAlgorithmButtonGroup = uibuttongroup(app.DSuperpixelsOptionsPanel);
            app.SelectAlgorithmButtonGroup.SelectionChangedFcn = createCallbackFcn(app, @SelectAlgorithmButtonGroupSelectionChanged, true);
            app.SelectAlgorithmButtonGroup.BorderType = 'none';
            app.SelectAlgorithmButtonGroup.BorderWidth = 0;
            app.SelectAlgorithmButtonGroup.TitlePosition = 'centertop';
            app.SelectAlgorithmButtonGroup.Title = 'Select Algorithm';
            app.SelectAlgorithmButtonGroup.Position = [33 87 152 45];

            % Create Slic0Button
            app.Slic0Button = uiradiobutton(app.SelectAlgorithmButtonGroup);
            app.Slic0Button.Text = 'Slic0';
            app.Slic0Button.Position = [29 3 48 22];
            app.Slic0Button.Value = true;

            % Create SlicButton
            app.SlicButton = uiradiobutton(app.SelectAlgorithmButtonGroup);
            app.SlicButton.Text = 'Slic';
            app.SlicButton.Position = [92 3 46 22];

            % Create CompactnessEditFieldLabel
            app.CompactnessEditFieldLabel = uilabel(app.DSuperpixelsOptionsPanel);
            app.CompactnessEditFieldLabel.HorizontalAlignment = 'right';
            app.CompactnessEditFieldLabel.Position = [16 63 78 22];
            app.CompactnessEditFieldLabel.Text = 'Compactness';

            % Create CompactnessEditField
            app.CompactnessEditField = uieditfield(app.DSuperpixelsOptionsPanel, 'numeric');
            app.CompactnessEditField.LowerLimitInclusive = 'off';
            app.CompactnessEditField.UpperLimitInclusive = 'off';
            app.CompactnessEditField.Limits = [0 1];
            app.CompactnessEditField.Position = [140 63 64 22];
            app.CompactnessEditField.Value = 0.001;

            % Create NumberofIterationsEditFieldLabel
            app.NumberofIterationsEditFieldLabel = uilabel(app.DSuperpixelsOptionsPanel);
            app.NumberofIterationsEditFieldLabel.HorizontalAlignment = 'right';
            app.NumberofIterationsEditFieldLabel.Position = [16 34 114 22];
            app.NumberofIterationsEditFieldLabel.Text = 'Number of Iterations';

            % Create NumberofIterationsEditField
            app.NumberofIterationsEditField = uieditfield(app.DSuperpixelsOptionsPanel, 'numeric');
            app.NumberofIterationsEditField.LowerLimitInclusive = 'off';
            app.NumberofIterationsEditField.Limits = [0 Inf];
            app.NumberofIterationsEditField.RoundFractionalValues = 'on';
            app.NumberofIterationsEditField.Position = [140 34 64 22];
            app.NumberofIterationsEditField.Value = 10;

            % Create ShowAllSuperpixelsButton
            app.ShowAllSuperpixelsButton = uibutton(app.DSuperpixelsOptionsPanel, 'push');
            app.ShowAllSuperpixelsButton.ButtonPushedFcn = createCallbackFcn(app, @ShowAllSuperpixelsButtonPushed, true);
            app.ShowAllSuperpixelsButton.Enable = 'off';
            app.ShowAllSuperpixelsButton.Position = [46 2 127 23];
            app.ShowAllSuperpixelsButton.Text = 'Show All Superpixels';

            % Create ActiveContourOptionsPanel
            app.ActiveContourOptionsPanel = uipanel(app.ROIVolumeSegmenterUIFigure);
            app.ActiveContourOptionsPanel.BorderType = 'none';
            app.ActiveContourOptionsPanel.TitlePosition = 'centertop';
            app.ActiveContourOptionsPanel.Title = 'Active Contour Options';
            app.ActiveContourOptionsPanel.Position = [631 99 218 186];

            % Create MaximumNumberOfIterationsEditFieldLabel
            app.MaximumNumberOfIterationsEditFieldLabel = uilabel(app.ActiveContourOptionsPanel);
            app.MaximumNumberOfIterationsEditFieldLabel.HorizontalAlignment = 'right';
            app.MaximumNumberOfIterationsEditFieldLabel.Position = [25 89 172 22];
            app.MaximumNumberOfIterationsEditFieldLabel.Text = 'Maximum Number Of Iterations';

            % Create MaximumNumberOfIterationsEditField
            app.MaximumNumberOfIterationsEditField = uieditfield(app.ActiveContourOptionsPanel, 'numeric');
            app.MaximumNumberOfIterationsEditField.LowerLimitInclusive = 'off';
            app.MaximumNumberOfIterationsEditField.Limits = [0 Inf];
            app.MaximumNumberOfIterationsEditField.RoundFractionalValues = 'on';
            app.MaximumNumberOfIterationsEditField.Position = [64 64 100 22];
            app.MaximumNumberOfIterationsEditField.Value = 100;

            % Create SmoothFactorEditFieldLabel
            app.SmoothFactorEditFieldLabel = uilabel(app.ActiveContourOptionsPanel);
            app.SmoothFactorEditFieldLabel.HorizontalAlignment = 'right';
            app.SmoothFactorEditFieldLabel.Position = [8 34 84 22];
            app.SmoothFactorEditFieldLabel.Text = 'Smooth Factor';

            % Create SmoothFactorEditField
            app.SmoothFactorEditField = uieditfield(app.ActiveContourOptionsPanel, 'numeric');
            app.SmoothFactorEditField.Limits = [0 Inf];
            app.SmoothFactorEditField.Position = [119 34 94 22];

            % Create ContractionBiasEditFieldLabel
            app.ContractionBiasEditFieldLabel = uilabel(app.ActiveContourOptionsPanel);
            app.ContractionBiasEditFieldLabel.HorizontalAlignment = 'right';
            app.ContractionBiasEditFieldLabel.Position = [8 5 93 22];
            app.ContractionBiasEditFieldLabel.Text = 'Contraction Bias';

            % Create ContractionBiasEditField
            app.ContractionBiasEditField = uieditfield(app.ActiveContourOptionsPanel, 'numeric');
            app.ContractionBiasEditField.Limits = [-1 1];
            app.ContractionBiasEditField.Position = [119 5 94 22];

            % Create SelectModelButtonGroup
            app.SelectModelButtonGroup = uibuttongroup(app.ActiveContourOptionsPanel);
            app.SelectModelButtonGroup.SelectionChangedFcn = createCallbackFcn(app, @SelectModelButtonGroupSelectionChanged, true);
            app.SelectModelButtonGroup.BorderType = 'none';
            app.SelectModelButtonGroup.BorderWidth = 0;
            app.SelectModelButtonGroup.TitlePosition = 'centertop';
            app.SelectModelButtonGroup.Title = 'Select Model';
            app.SelectModelButtonGroup.Position = [16 114 188 47];

            % Create ChanVeseButton
            app.ChanVeseButton = uiradiobutton(app.SelectModelButtonGroup);
            app.ChanVeseButton.Text = 'Chan-Vese';
            app.ChanVeseButton.Position = [21 5 81 22];
            app.ChanVeseButton.Value = true;

            % Create EdgeButton
            app.EdgeButton = uiradiobutton(app.SelectModelButtonGroup);
            app.EdgeButton.Text = 'Edge';
            app.EdgeButton.Position = [109 5 65 22];

            % Show the figure after all components are created
            app.ROIVolumeSegmenterUIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = ROIVolumeSegmenter_exported(varargin)

            runningApp = getRunningApp(app);

            % Check for running singleton app
            if isempty(runningApp)

                % Create UIFigure and components
                createComponents(app)

                % Register the app with App Designer
                registerApp(app, app.ROIVolumeSegmenterUIFigure)

                % Execute the startup function
                runStartupFcn(app, @(app)startupFcn(app, varargin{:}))
            else

                % Focus the running singleton app
                figure(runningApp.ROIVolumeSegmenterUIFigure)

                app = runningApp;
            end

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.ROIVolumeSegmenterUIFigure)
        end
    end
end