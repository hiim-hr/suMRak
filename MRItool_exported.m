classdef MRItool_exported < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        UIFigure                        matlab.ui.Figure
        TabGroup                        matlab.ui.container.TabGroup
        PreviewTab                      matlab.ui.container.Tab
        SliceSpinner_4                  matlab.ui.control.Spinner
        SliceSpinner_4Label             matlab.ui.control.Label
        SliceSpinner_3                  matlab.ui.control.Spinner
        SliceSpinner_3Label             matlab.ui.control.Label
        UITable                         matlab.ui.control.Table
        Slider                          matlab.ui.control.Slider
        SliderLabel                     matlab.ui.control.Label
        NumberofsequencesEditField      matlab.ui.control.NumericEditField
        NumberofsequencesEditFieldLabel  matlab.ui.control.Label
        StudyfolderEditField            matlab.ui.control.EditField
        StudyfolderEditFieldLabel       matlab.ui.control.Label
        BrowseButton                    matlab.ui.control.Button
        UpdateButton                    matlab.ui.control.Button
        SliceSpinner_2                  matlab.ui.control.Spinner
        SliceSpinner_2Label             matlab.ui.control.Label
        SliceSpinner                    matlab.ui.control.Spinner
        SliceSpinnerLabel               matlab.ui.control.Label
        Sequence2DropDown               matlab.ui.control.DropDown
        Sequence2DropDownLabel          matlab.ui.control.Label
        Sequence1DropDown               matlab.ui.control.DropDown
        Sequence1DropDownLabel          matlab.ui.control.Label
        TransposeButton                 matlab.ui.control.Button
        TransposeButton_2               matlab.ui.control.Button
        UIAxes                          matlab.ui.control.UIAxes
        UIAxes_2                        matlab.ui.control.UIAxes
        SegmenterTab                    matlab.ui.container.Tab
        ExportsequenceButton            matlab.ui.control.Button
        SavesequenceButton              matlab.ui.control.Button
        ActionLabel                     matlab.ui.control.Label
        RotateButton_Segmenter_2        matlab.ui.control.Button
        FreeButton_Remove_Lesion        matlab.ui.control.Button
        FreeButton_Add_Lesion           matlab.ui.control.Button
        MainselectionButton_Lesiion     matlab.ui.control.Button
        IIILesionselectionLabel         matlab.ui.control.Label
        MainselectionButton_Hemisphere  matlab.ui.control.Button
        CorrectionButton_Hemisphere     matlab.ui.control.Button
        HemisphereButtonGroup           matlab.ui.container.ButtonGroup
        RightredButton                  matlab.ui.control.RadioButton
        LeftblueButton                  matlab.ui.control.RadioButton
        IIHemisphereselectionLabel      matlab.ui.control.Label
        Button                          matlab.ui.control.Button
        SavesliceButton                 matlab.ui.control.Button
        ResetsliceButton                matlab.ui.control.Button
        FreeButton_Remove               matlab.ui.control.Button
        PolyButton_Remove               matlab.ui.control.Button
        PolyButton_Add                  matlab.ui.control.Button
        FreeButton_Add                  matlab.ui.control.Button
        ROILabel                        matlab.ui.control.Label
        MorphologyLabel                 matlab.ui.control.Label
        CloseMaskButton                 matlab.ui.control.Button
        OpenMaskButton                  matlab.ui.control.Button
        DiskradiusSpinner               matlab.ui.control.Spinner
        DiskradiusSpinnerLabel          matlab.ui.control.Label
        AutoClusterButton               matlab.ui.control.Button
        IBrainsegmentationLabel         matlab.ui.control.Label
        InitialselectionButton          matlab.ui.control.Button
        ImageshownSwitch                matlab.ui.control.Switch
        ImageshownSwitchLabel           matlab.ui.control.Label
        RotateButton_Segmenter          matlab.ui.control.Button
        SliceSpinner_Segmenter          matlab.ui.control.Spinner
        SliceSpinner_5Label             matlab.ui.control.Label
        SelectsequencetosegmentDropDown  matlab.ui.control.DropDown
        SelectsequencetosegmentDropDownLabel  matlab.ui.control.Label
        UIAxes_Segmenter                matlab.ui.control.UIAxes
        DSCTab                          matlab.ui.container.Tab
        SelectvolumetricdataDropDown    matlab.ui.control.DropDown
        SelectvolumetricdataformapcalculationLabel  matlab.ui.control.Label
        MTTMapLabel                     matlab.ui.control.Label
        CBVMapLabel                     matlab.ui.control.Label
        CBFMapLabel                     matlab.ui.control.Label
        SliceSpinner_MTT                matlab.ui.control.Spinner
        SliceSpinner_7Label             matlab.ui.control.Label
        SliceSpinner_CBV                matlab.ui.control.Spinner
        SliceSpinner_6Label             matlab.ui.control.Label
        SliceSpinner_CBF                matlab.ui.control.Spinner
        SliceSpinner_5Label_2           matlab.ui.control.Label
        GlobalslicesliderSlider         matlab.ui.control.Slider
        GlobalslicesliderSliderLabel    matlab.ui.control.Label
        Button3                         matlab.ui.control.Button
        CalculatemapsButton             matlab.ui.control.Button
        UIAxes_DSC_MTT                  matlab.ui.control.UIAxes
        UIAxes_DSC_CBV                  matlab.ui.control.UIAxes
        UIAxes_DSC_CBF                  matlab.ui.control.UIAxes
    end

    
    properties (Access = private)
        
        % Loading and preview tab properties
        StudyPath % Filepath of selected study directory
        SequencePropertyTable % Table of loaded sequence properties
        Sequence1ImageData % Image matrix of sequence 1
        Sequence2ImageData % Image matrix of sequence 1
        Sequence3ImageData % Image matrix of sequence 1
        Sequence4ImageData % Image matrix of sequence 1
        
        % Segmenter tab
        % Initial segmentation
        OriginalImage % Original slice image data
        SeqDimsSegmenter % Dimensions of selected sequence for segmentation 
        FreeImage % Property for storing imshow of OriginalImage image without a mask overlay or MaskedImage
        SliceLimits % Current slice pixel intensity range
        MaskedImage % Masked image of current slice
        Mask % Binary mask of current slice
        GreenScreen % Mask green screen of current slice
        
        % Hemisphere and lesion segmentation
        BlueScreen % Hemisphere mask blue screen of current slice
        RedScreen % Hemisphere mask red screen of current slice
        LeftHemi % Left hemisphere mask
        RightHemi % Right hemisphere mask
        Lesion % Lesion mask
        
        % Saved segmenter data
        SavedImageSegmenter % Saved segmented data of current sequence
        SavedMaskSegmenter % Saved mask data of current sequence
        SavedTableSegmenter = table(); % Table with all saved segmented sequences
        
        % DSC tab
        DropDownItemsDSC = {'None'};
        WorkMask
        MTTData
        CBFData
        CBVData
        CBVLCData
        
    end
    

    % Callbacks that handle component events
    methods (Access = private)

        % Button pushed function: BrowseButton
        function BrowseButtonPushed(app, event)
            addBrukerPaths;
            
            % Select study directory and update the edit field text
            app.StudyPath = uigetdir; 
            app.StudyfolderEditField.Value = app.StudyPath; 
        end

        % Button pushed function: UpdateButton
        function UpdateButtonPushed(app, event)
            % Create property arrays of sequences in selected study
            seq_Num = 0;
            seq_Path = "None";  
            visu_AcqProt = {'None'};
            TE_time = 0;
            TR_time = 0;  
            seq_ImageData = {[]};
            voxel_Dims = [0 0];
            %nekajtemp = 'C:\Users\Stern\Downloads\20220426_124605_RepairStroke_rPairumbra_gdpilot_009_BL3_1_3';
            
            %for i=1:14 %app.NumberofsequencesEditField.Value
            for i=1:app.NumberofsequencesEditField.Value
                seq_Path_temp = fullfile(app.StudyPath, filesep, num2str(i), [filesep ,'pdata', filesep, '1']);
                %seq_Path_temp = fullfile(nekajtemp, filesep, num2str(i), [filesep ,'pdata', filesep, '1']);
                try
                    %Create image object
                    imageObj = ImageDataObject(seq_Path_temp);
                    attempt_AcqProt = [num2str(i), ' -> ', imageObj.Visu.VisuAcquisitionProtocol];
                    %Store properties into respective arrays
                    try
                        attempt_voxelDims = imageObj.Visu.VisuCoreExtent./imageObj.Visu.VisuCoreSize;
                        try
                            imageObj.Visu.VisuAcqEchoTime < imageObj.Visu.VisuAcqRepetitionTime;
                            voxel_Dims = cat(1, voxel_Dims, imageObj.Visu.VisuCoreExtent./imageObj.Visu.VisuCoreSize);
                            visu_AcqProt = cat(1, visu_AcqProt, append(num2str(i), '. ', imageObj.Visu.VisuAcquisitionProtocol));
                            seq_Num = cat(1, seq_Num, i);
                            seq_Path = cat(1, seq_Path, seq_Path_temp);
                            seq_ImageData = cat(1, seq_ImageData, {squeeze(ImageDataObject(seq_Path_temp).data)});
                            TE_time = cat(1, TE_time, imageObj.Visu.VisuAcqEchoTime*10^- 3);
                            TR_time = cat(1, TR_time, imageObj.Visu.VisuAcqRepetitionTime*10^-3);
                        catch
                            %x = [num2str(i), ' -> TIME DATA ERROR'];
                        end
                    catch
                        %x = [num2str(i), ' -> VOXEL DIM ERROR'];
                    end
                catch
                    %x = [num2str(i), ' -> WOBBLE'];
                end
            end
            
%             size(TE_time)
%             size(seq_Num)
%             size(TR_time)
%             size(voxel_Dims)
%             size(seq_Path)
%             size(seq_ImageData)
%             size(visu_AcqProt)

            % Construct sequence property table
            app.SequencePropertyTable = table(seq_Num, TE_time, TR_time, voxel_Dims, seq_Path, seq_ImageData, 'RowNames', visu_AcqProt);
            app.UITable.Data=app.SequencePropertyTable;
            
            % Update drop down items
            app.Sequence1DropDown.Items = visu_AcqProt;
            app.Sequence2DropDown.Items = visu_AcqProt;
            app.SelectsequencetosegmentDropDown.Items = visu_AcqProt;
        end

        % Value changed function: Sequence1DropDown
        function Sequence1DropDownValueChanged(app, event)
            value = app.Sequence1DropDown.Value;  
            
            % Get selected sequence image data
            app.Sequence1ImageData = cell2mat(table2array(app.SequencePropertyTable({value}, "seq_ImageData")));
            
            % Get data dimension sizes, set slice spinner limits
            sequence_dims = size(app.Sequence1ImageData);
            dim3_size = sequence_dims(3);
            app.SliceSpinner.Limits = [1, dim3_size];
            app.Slider.Limits = [1, dim3_size];
            
            % Display sequence, update slice spinner
            imshow(app.Sequence1ImageData(:,:,1), [], 'Parent', app.UIAxes);
            disableDefaultInteractivity(app.UIAxes_Segmenter)
            app.SliceSpinner.Value = 1;
        end

        % Value changed function: SliceSpinner
        function SliceSpinnerValueChanged(app, event)
        imshow(app.Sequence1ImageData(:,:,app.SliceSpinner.Value), [], 'Parent', app.UIAxes);
        end

        % Button pushed function: TransposeButton
        function TransposeButtonPushed(app, event)
            app.Sequence1ImageData = pagetranspose(app.Sequence1ImageData);
            imshow(app.Sequence1ImageData(:,:,app.SliceSpinner.Value), [], 'Parent', app.UIAxes);
        end

        % Value changed function: Sequence2DropDown
        function Sequence2DropDownValueChanged(app, event)
            value = app.Sequence2DropDown.Value;
            
            % Get selected sequence image data
            app.Sequence2ImageData = cell2mat(table2array(app.SequencePropertyTable({value}, "seq_ImageData")));
            
            % Get data dimension sizes, set slice spinner limits
            sequence_dims = size(app.Sequence2ImageData);
            dim3_size = sequence_dims(3);
            app.SliceSpinner_2.Limits = [1, dim3_size];
            
            % Display sequence, update slice spinner
            imshow(app.Sequence2ImageData(:,:,1), [], 'Parent', app.UIAxes_2);
            app.SliceSpinner_2.Value = 1;
        end

        % Button pushed function: TransposeButton_2
        function TransposeButton_2Pushed(app, event)
            app.Sequence2ImageData = pagetranspose(app.Sequence2ImageData);
            imshow(app.Sequence2ImageData(:,:,app.SliceSpinner_2.Value), [], 'Parent', app.UIAxes_2);
        end

        % Value changed function: SliceSpinner_2
        function SliceSpinner_2ValueChanged(app, event)
            imshow(app.Sequence2ImageData(:,:,app.SliceSpinner_2.Value), [], 'Parent', app.UIAxes_2);
        end

        % Value changing function: Slider
        function SliderValueChanging(app, event)
            changingValue = round(event.Value);     
            imshow(app.Sequence1ImageData(:,:,changingValue), [], 'Parent', app.UIAxes);
            app.SliceSpinner.Value=changingValue;
        end

        % Value changed function: SelectsequencetosegmentDropDown
        function SelectsequencetosegmentDropDownValueChanged(app, event)
            value = app.SelectsequencetosegmentDropDown.Value;
            
            % Get selected sequence image data
            app.OriginalImage = cell2mat(table2array(app.SequencePropertyTable({value}, "seq_ImageData")));
            
            
            % Get data dimension sizes, set slice and spinner limits
            app.SeqDimsSegmenter = size(app.OriginalImage);
            dim3_size = app.SeqDimsSegmenter(3);
            app.SliceSpinner_Segmenter.Limits = [1, dim3_size];
            slice_1 = app.OriginalImage(:,:,1);
            app.SliceLimits = [min(slice_1, [], 'all'), max(slice_1, [], 'all')];
            
            % Create zero arrays to save data into for current sequence
            app.SavedImageSegmenter = zeros(app.SeqDimsSegmenter);
            app.SavedMaskSegmenter = zeros(app.SeqDimsSegmenter(1:3));
            
            % Display sequence, update slice spinner
            app.FreeImage = imshow(app.OriginalImage(:,:,1), [], 'Parent', app.UIAxes_Segmenter);
            app.SliceSpinner_Segmenter.Value = 1;
            
            % Set interactions of segmenter uiaxes
            app.UIAxes_Segmenter.Interactions = [regionZoomInteraction zoomInteraction];
            
            % Reset zoom
            app.UIAxes_Segmenter.XLim = [-inf inf];
            app.UIAxes_Segmenter.YLim = [-inf inf];
        end

        % Value changed function: SliceSpinner_Segmenter
        function SliceSpinner_SegmenterValueChanged(app, event)
            
            % Get current slice image, set intensity limits, show image
            current_slice = app.OriginalImage(:,:,app.SliceSpinner_Segmenter.Value);
            app.SliceLimits = [min(current_slice, [], 'all'), max(current_slice, [], 'all')];
            app.FreeImage = imshow(current_slice, [], 'Parent', app.UIAxes_Segmenter);
            
            % Reset zoom
            app.UIAxes_Segmenter.XLim = [-inf inf];
            app.UIAxes_Segmenter.YLim = [-inf inf];
            
            app.ImageshownSwitch.Enable = 'off'; % Turn off image shown switch
            app.ImageshownSwitch.Value = "Overlay"; % Set image shown value to overlay
            app.AutoClusterButton.Enable = 'off'; % TUrn off auto cluster button
        end

        % Button pushed function: RotateButton_Segmenter
        function RotateButton_SegmenterPushed(app, event)
            
            % Rotate image data, update dimensions, show image
            app.OriginalImage = rot90(app.OriginalImage, -1);
            app.SavedImageSegmenter = rot90(app.SavedImageSegmenter, -1);
            app.SavedMaskSegmenter = rot90(app.SavedMaskSegmenter, -1);
            app.SeqDimsSegmenter = size(app.OriginalImage);
            app.FreeImage = imshow(app.OriginalImage(:,:,app.SliceSpinner_Segmenter.Value), [], 'Parent', app.UIAxes_Segmenter);
        end

        % Button pushed function: RotateButton_Segmenter_2
        function ResetviewButton_Segmenter_Pushed(app, event)
            % Reset zoom
            app.UIAxes_Segmenter.XLim = [-inf inf];
            app.UIAxes_Segmenter.YLim = [-inf inf];
        end

        % Button pushed function: InitialselectionButton
        function InitialselectionButtonPushed(app, event)
            
            % Show current slice, draw initial ROI, create mask and masked
            % image, create mask greenscreen
            app.FreeImage = imshow(app.OriginalImage(:,:,app.SliceSpinner_Segmenter.Value), [], 'Parent', app.UIAxes_Segmenter);
            
            init_Region = drawfreehand(app.UIAxes_Segmenter);
            app.Mask = createMask(init_Region);
            app.MaskedImage = app.OriginalImage(:,:,app.SliceSpinner_Segmenter.Value).*app.Mask;
            delete(init_Region)
            
            app.GreenScreen = cat(3, zeros(app.SeqDimsSegmenter(1:2)), ones(app.SeqDimsSegmenter(1:2)), zeros(app.SeqDimsSegmenter(1:2)));
            
            % Show image with mask overlaid on top
            hold(app.UIAxes_Segmenter, "on")
            mask_Overlay = imshow(app.GreenScreen, "Parent",app.UIAxes_Segmenter);
            hold(app.UIAxes_Segmenter, "off")
            mask_Overlay.AlphaData = app.Mask-0.9;
            
            app.ImageshownSwitch.Enable = 'on'; % Turn on image shown switch
            app.AutoClusterButton.Enable = 'on'; % Turn on auto cluster button
        end

        % Button pushed function: AutoClusterButton
        function AutoClusterButtonPushed(app, event)
            
            % Get clusters on masked image
            clusters = imsegkmeans(single(app.MaskedImage),2,'NumAttempts',2);
            app.Mask = clusters == 2;
            
            % Show image with mask overlaid on top
            app.FreeImage = imshow(app.OriginalImage(:,:,app.SliceSpinner_Segmenter.Value), [], 'Parent', app.UIAxes_Segmenter);
            hold(app.UIAxes_Segmenter, "on")
            mask_Overlay = imshow(app.GreenScreen, "Parent",app.UIAxes_Segmenter);
            hold(app.UIAxes_Segmenter, "off")
            mask_Overlay.AlphaData = app.Mask-0.9;      
            
            app.AutoClusterButton.Enable = 'off'; % Turn off auto cluster button
            app.ImageshownSwitch.Value = "Overlay"; % Set image shown value to overlay
        end

        % Button pushed function: OpenMaskButton
        function OpenMaskButtonPushed(app, event)
            
            % Construct structuring element, open image mask
            disk_Radius = app.DiskradiusSpinner.Value;
            SE = strel('disk', disk_Radius, 0);
            app.Mask = imopen(app.Mask, SE);
            
            % Show image with mask overlaid on top
            app.FreeImage = imshow(app.OriginalImage(:,:,app.SliceSpinner_Segmenter.Value), [], 'Parent', app.UIAxes_Segmenter);
            hold(app.UIAxes_Segmenter, "on")
            mask_Overlay = imshow(app.GreenScreen, "Parent",app.UIAxes_Segmenter);
            hold(app.UIAxes_Segmenter, "off")
            mask_Overlay.AlphaData = app.Mask-0.9;
            
            app.ImageshownSwitch.Value = "Overlay"; % Set image shown value to overlay
        end

        % Button pushed function: CloseMaskButton
        function CloseMaskButtonPushed(app, event)
            
            % Construct structuring element, close image mask
            disk_Radius = app.DiskradiusSpinner.Value;
            SE = strel('disk', disk_Radius, 0);
            app.Mask = imclose(app.Mask, SE);
            
            % Show image with mask overlaid on top
            app.FreeImage = imshow(app.OriginalImage(:,:,app.SliceSpinner_Segmenter.Value), [], 'Parent', app.UIAxes_Segmenter);
            hold(app.UIAxes_Segmenter, "on")
            mask_Overlay = imshow(app.GreenScreen, "Parent",app.UIAxes_Segmenter);
            hold(app.UIAxes_Segmenter, "off")
            mask_Overlay.AlphaData = app.Mask-0.9;
            
            app.ImageshownSwitch.Value = "Overlay"; % Set image shown value to overlay
        end

        % Button pushed function: FreeButton_Add
        function FreeButton_AddPushed(app, event)
            
            % Draw freehand ROI
            added_Region = drawfreehand(app.UIAxes_Segmenter);
            
            % Update mask using new ROI based on current image displayed -
            % masked or original with overlaid transparent mask
            if app.ImageshownSwitch.Value == "Overlay"
                added_Mask = added_Region.createMask(app.FreeImage);
                app.Mask = app.Mask|added_Mask;
                
                app.FreeImage = imshow(app.OriginalImage(:,:,app.SliceSpinner_Segmenter.Value), [], 'Parent', app.UIAxes_Segmenter);
                hold(app.UIAxes_Segmenter, "on")
                mask_Overlay = imshow(app.GreenScreen, "Parent",app.UIAxes_Segmenter);
                hold(app.UIAxes_Segmenter, "off")
                mask_Overlay.AlphaData = app.Mask-0.9;
            else
                added_Mask = added_Region.createMask(app.FreeImage);
                app.Mask = app.Mask|added_Mask;
                
                app.MaskedImage = app.Mask.*app.OriginalImage(:,:,app.SliceSpinner_Segmenter.Value);
                app.FreeImage = imshow(app.MaskedImage, 'DisplayRange', app.SliceLimits, 'Parent', app.UIAxes_Segmenter);
            end  
        end

        % Button pushed function: FreeButton_Remove
        function FreeButton_RemovePushed(app, event)
            
            % Draw freehand ROI
            removed_Region = drawfreehand(app.UIAxes_Segmenter);
            
            % Update mask using new ROI based on current image displayed -
            % masked or original with overlaid transparent mask
            if app.ImageshownSwitch.Value == "Overlay"
                removed_Mask = removed_Region.createMask(app.FreeImage);
                app.Mask(removed_Mask) = 0;
                
                app.FreeImage = imshow(app.OriginalImage(:,:,app.SliceSpinner_Segmenter.Value), [], 'Parent', app.UIAxes_Segmenter);
                hold(app.UIAxes_Segmenter, "on")
                mask_Overlay = imshow(app.GreenScreen, "Parent",app.UIAxes_Segmenter);
                hold(app.UIAxes_Segmenter, "off")
                mask_Overlay.AlphaData = app.Mask-0.9;
            else
                removed_Mask = removed_Region.createMask(app.FreeImage);
                app.Mask(removed_Mask) = 0;
                
                app.MaskedImage = app.Mask.*app.OriginalImage(:,:,app.SliceSpinner_Segmenter.Value);
                app.FreeImage = imshow(app.MaskedImage, 'DisplayRange', app.SliceLimits, 'Parent', app.UIAxes_Segmenter);
            end
        end

        % Button pushed function: PolyButton_Add
        function PolyButton_AddPushed(app, event)
            
            % Draw polygon ROI
            added_Region = drawpolygon(app.UIAxes_Segmenter);
            
            % Update mask using new ROI based on current image displayed -
            % masked or original with overlaid transparent mask
            if app.ImageshownSwitch.Value == "Overlay"
                added_Mask = added_Region.createMask(app.FreeImage);
                app.Mask = app.Mask|added_Mask;
                
                app.FreeImage = imshow(app.OriginalImage(:,:,app.SliceSpinner_Segmenter.Value), [], 'Parent', app.UIAxes_Segmenter);
                hold(app.UIAxes_Segmenter, "on")
                mask_Overlay = imshow(app.GreenScreen, "Parent",app.UIAxes_Segmenter);
                hold(app.UIAxes_Segmenter, "off")
                mask_Overlay.AlphaData = app.Mask-0.9;
            else
                added_Mask = added_Region.createMask(app.FreeImage);
                app.Mask = app.Mask|added_Mask;
                
                app.MaskedImage = app.Mask.*app.OriginalImage(:,:,app.SliceSpinner_Segmenter.Value);
                app.FreeImage = imshow(app.MaskedImage, 'DisplayRange', app.SliceLimits, 'Parent', app.UIAxes_Segmenter);
            end
        end

        % Button pushed function: PolyButton_Remove
        function PolyButton_RemovePushed(app, event)
            
            % Draw polygon ROI
            removed_Region = drawpolygon(app.UIAxes_Segmenter);
            
            % Update mask using new ROI based on current image displayed -
            % masked or original with overlaid transparent mask
            if app.ImageshownSwitch.Value == "Overlay"
                removed_Mask = createMask(removed_Region, app.FreeImage);
                app.Mask(removed_Mask) = 0;
                
                app.FreeImage = imshow(app.OriginalImage(:,:,app.SliceSpinner_Segmenter.Value), [], 'Parent', app.UIAxes_Segmenter);
                hold(app.UIAxes_Segmenter, "on")
                mask_Overlay = imshow(app.GreenScreen, "Parent",app.UIAxes_Segmenter);
                hold(app.UIAxes_Segmenter, "off")
                mask_Overlay.AlphaData = app.Mask-0.9;
            else
                removed_Mask = removed_Region.createMask(app.FreeImage);
                app.Mask(removed_Mask) = 0;
                
                app.MaskedImage = app.Mask.*app.OriginalImage(:,:,app.SliceSpinner_Segmenter.Value);
                app.FreeImage = imshow(app.MaskedImage, 'DisplayRange', app.SliceLimits, 'Parent', app.UIAxes_Segmenter);
            end
        end

        % Value changed function: ImageshownSwitch
        function ImageshownSwitchValueChanged(app, event)
            value = app.ImageshownSwitch.Value;
            
            % Show image based on switch value - masked or original with 
            % overlaid transparent mask
            if value == "Overlay"
                app.FreeImage = imshow(app.OriginalImage(:,:,app.SliceSpinner_Segmenter.Value), [], 'Parent', app.UIAxes_Segmenter);
                hold(app.UIAxes_Segmenter, "on")
                mask_Overlay = imshow(app.GreenScreen, "Parent",app.UIAxes_Segmenter);
                hold(app.UIAxes_Segmenter, "off")
                mask_Overlay.AlphaData = app.Mask-0.9;
            else
                app.MaskedImage = app.Mask.*app.OriginalImage(:,:,app.SliceSpinner_Segmenter.Value);
                app.FreeImage = imshow(app.MaskedImage, 'DisplayRange', app.SliceLimits, 'Parent', app.UIAxes_Segmenter);
            end
        end

        % Button pushed function: SavesliceButton
        function SavesliceButtonPushed(app, event)
           
            % Save slice image based on number of dimensions in original matrix
            num_dims = size(app.SeqDimsSegmenter);
            if num_dims(2) == 4
                for i=1:app.SeqDimsSegmenter(4)
                    app.SavedImageSegmenter(:,:,app.SliceSpinner_Segmenter.Value,i) = app.Mask.*app.OriginalImage(:,:,app.SliceSpinner_Segmenter.Value,i);
                end
            else
                app.SavedImageSegmenter(:,:,app.SliceSpinner_Segmenter.Value) = app.Mask.*app.OriginalImage(:,:,app.SliceSpinner_Segmenter.Value);
            end
            
            % Save slice mask
            app.SavedMaskSegmenter(:,:,app.SliceSpinner_Segmenter.Value) = app.Mask;
            
            % Update last action label
            app.ActionLabel.Text = "Slice " + num2str(app.SliceSpinner_Segmenter.Value) + " saved to temporary data.";
        end

        % Button pushed function: ResetsliceButton
        function ResetsliceButtonPushed(app, event)
            % Display original slice image
            app.FreeImage = imshow(app.OriginalImage(:,:,app.SliceSpinner_Segmenter.Value), [], 'Parent', app.UIAxes_Segmenter);  
            
            % Reset zoom
            app.UIAxes_Segmenter.XLim = [-inf inf];
            app.UIAxes_Segmenter.YLim = [-inf inf];
            
            % Reset slice image based on number of dimensions in original
            % matrix
            num_dims = size(app.SeqDimsSegmenter);
            if num_dims(2) == 4
                for i=1:app.SeqDimsSegmenter(4)
                    app.SavedImageSegmenter(:,:,app.SliceSpinner_Segmenter.Value,i) = zeros(app.SeqDimsSegmenter(1:2));
                end
            else
                app.SavedImageSegmenter(:,:,app.SliceSpinner_Segmenter.Value) = zeros(app.SeqDimsSegmenter(1:2));
            end
            
            % Reset slice mask
            app.SavedMaskSegmenter(:,:,app.SliceSpinner_Segmenter.Value) = zeros(app.SeqDimsSegmenter(1:2));
            
            % Update UI items
            app.ImageshownSwitch.Enable = 'off'; % Turn off image shown switch
            app.ImageshownSwitch.Value = "Overlay"; % Set image shown value to overlay
            app.AutoClusterButton.Enable = 'off'; % Turn off auto cluster button
            
            % Update last action label
            app.ActionLabel.Text = "Slice " + num2str(app.SliceSpinner_Segmenter.Value) + " reset in temporary data.";
        end

        % Button pushed function: MainselectionButton_Hemisphere
        function MainselectionButton_HemispherePushed(app, event)
            
            % Update and load masked slice image
            app.MaskedImage = app.Mask.*app.OriginalImage(:,:,app.SliceSpinner_Segmenter.Value);
            app.FreeImage = imshow(app.MaskedImage, 'DisplayRange', app.SliceLimits, 'Parent', app.UIAxes_Segmenter);
           
            % Create hemisphere mask screens
            app.BlueScreen = cat(3, zeros(app.SeqDimsSegmenter(1:2)), zeros(app.SeqDimsSegmenter(1:2)), ones(app.SeqDimsSegmenter(1:2)));
            app.RedScreen = cat(3, ones(app.SeqDimsSegmenter(1:2)), zeros(app.SeqDimsSegmenter(1:2)), zeros(app.SeqDimsSegmenter(1:2)));
            
            % Draw freehand ROI
            initial_Hemi = drawfreehand(app.UIAxes_Segmenter);
            initial_hemiMask = initial_Hemi.createMask(app.FreeImage);
            delete(initial_Hemi)
            
            % Get hemisphere masks and display overlaid image
            if app.RightredButton.Value == true
                app.RightHemi = initial_hemiMask & app.Mask;
                app.LeftHemi = app.Mask;
                app.LeftHemi(app.RightHemi) = 0;
            else
                app.LeftHemi = initial_hemiMask & app.Mask;
                app.RightHemi = app.Mask;
                app.RightHemi(app.LeftHemi) = 0;
            end
            
            hold(app.UIAxes_Segmenter, "on")
            mask_overlay_Blue = imshow(app.BlueScreen, "Parent",app.UIAxes_Segmenter);
            mask_overlay_Red = imshow(app.RedScreen, "Parent",app.UIAxes_Segmenter);
            hold(app.UIAxes_Segmenter, "off")
            mask_overlay_Blue.AlphaData = app.LeftHemi-0.9;
            mask_overlay_Red.AlphaData = app.RightHemi-0.9;
        end

        % Button pushed function: CorrectionButton_Hemisphere
        function CorrectionButton_HemispherePushed(app, event)
            
            % Draw freehand ROI
            correction_Hemi = drawfreehand(app.UIAxes_Segmenter);
            correction_hemiMask = correction_Hemi.createMask(app.FreeImage);
            delete(correction_Hemi)
            
            % Update heimsphere masks and display overlaid image
            if app.RightredButton.Value == true
                app.RightHemi = correction_hemiMask|app.RightHemi;
                app.LeftHemi(correction_hemiMask) = 0;
            else
                app.LeftHemi = correction_hemiMask|app.LeftHemi;
                app.RightHemi(correction_hemiMask) = 0;
            end
            
            app.FreeImage = imshow(app.MaskedImage, 'DisplayRange', app.SliceLimits, 'Parent', app.UIAxes_Segmenter);
            hold(app.UIAxes_Segmenter, "on")
            mask_overlay_Blue = imshow(app.BlueScreen, "Parent",app.UIAxes_Segmenter);
            mask_overlay_Red = imshow(app.RedScreen, "Parent",app.UIAxes_Segmenter);
            hold(app.UIAxes_Segmenter, "off")
            mask_overlay_Blue.AlphaData = app.LeftHemi-0.9;
            mask_overlay_Red.AlphaData = app.RightHemi-0.9;
        end

        % Button pushed function: MainselectionButton_Lesiion
        function MainselectionButton_LesiionPushed(app, event)
            
            % Update and load masked slice image
            app.MaskedImage = app.Mask.*app.OriginalImage(:,:,app.SliceSpinner_Segmenter.Value);
            app.FreeImage = imshow(app.MaskedImage, 'DisplayRange', app.SliceLimits, 'Parent', app.UIAxes_Segmenter);
            
            % Create lesion mask screen
            app.RedScreen = cat(3, ones(app.SeqDimsSegmenter(1:2)), zeros(app.SeqDimsSegmenter(1:2)), zeros(app.SeqDimsSegmenter(1:2)));
             
            % Draw freehand ROI, update lesion mask, display overlaid image
            initial_Lesion = drawfreehand(app.UIAxes_Segmenter);
            app.Lesion = initial_Lesion.createMask(app.FreeImage);
            delete(initial_Lesion)
            
            hold(app.UIAxes_Segmenter, "on")
            mask_overlay_Lesion = imshow(app.RedScreen, "Parent",app.UIAxes_Segmenter);
            hold(app.UIAxes_Segmenter, "off")
            mask_overlay_Lesion.AlphaData = app.Lesion-0.9;
        end

        % Button pushed function: FreeButton_Add_Lesion
        function FreeButton_Add_LesionPushed(app, event)
            
            % Draw freehand ROI, update lesion mask, display overlaid image
            add_Lesion = drawfreehand(app.UIAxes_Segmenter);
            add_lesion_Mask = add_Lesion.createMask(app.FreeImage);
            app.Lesion = app.Lesion|add_lesion_Mask;
            delete(add_Lesion)
            
            app.FreeImage = imshow(app.MaskedImage, 'DisplayRange', app.SliceLimits, 'Parent', app.UIAxes_Segmenter);
            hold(app.UIAxes_Segmenter, "on")
            mask_overlay_Lesion = imshow(app.RedScreen, "Parent",app.UIAxes_Segmenter);
            hold(app.UIAxes_Segmenter, "off")
            mask_overlay_Lesion.AlphaData = app.Lesion-0.9;
        end

        % Button pushed function: FreeButton_Remove_Lesion
        function FreeButton_Remove_LesionPushed(app, event)
           
            % Draw freehand ROI, update lesion mask, display overlaid image
            remove_Lesion = drawfreehand(app.UIAxes_Segmenter);
            remove_lesion_Mask = remove_Lesion.createMask(app.FreeImage);
            app.Lesion(remove_lesion_Mask) = 0;
            delete(remove_Lesion)
            
            app.FreeImage = imshow(app.MaskedImage, 'DisplayRange', app.SliceLimits, 'Parent', app.UIAxes_Segmenter);
            hold(app.UIAxes_Segmenter, "on")
            mask_overlay_Lesion = imshow(app.RedScreen, "Parent",app.UIAxes_Segmenter);
            hold(app.UIAxes_Segmenter, "off")
            mask_overlay_Lesion.AlphaData = app.Lesion-0.9;
        end

        % Button pushed function: SavesequenceButton
        function SavesequenceButtonPushed(app, event)
            
            % Move temporarily saved data to permanent app table
            temp_Table = table({app.SavedImageSegmenter}, {app.SavedMaskSegmenter}, 'RowNames', {app.SelectsequencetosegmentDropDown.Value}, 'VariableNames', {'Image' 'Mask'});
            app.SavedTableSegmenter = [app.SavedTableSegmenter; temp_Table];
            
            % Update DSC tab drop down menu
            app.DropDownItemsDSC = cat(1, app.DropDownItemsDSC, {app.SelectsequencetosegmentDropDown.Value});
            app.SelectvolumetricdataDropDown.Items = app.DropDownItemsDSC;
        end

        % Button pushed function: ExportsequenceButton
        function ExportsequenceButtonPushed(app, event)
            
            % Get directory and export image and mask data in NIfTI format
            temp_dir = uigetdir;
            temp_dir = append(temp_dir, '\');
            niftiwrite(app.SavedImageSegmenter, append(temp_dir, 'Image'))
            niftiwrite(app.SavedMaskSegmenter, append(temp_dir, 'Mask'))
        end

        % Button pushed function: Button
        function ButtonPushed(app, event)
            assignin('base',"sekvenca",app.SavedImageSegmenter)
        end

        % Button pushed function: CalculatemapsButton
        function CalculatemapsButtonPushed(app, event)
            
            % Get custom options for DSC tolbox
            custom_options = DSC_mri_getOptions();
            custom_options.display = 1;
            custom_options.deconv.method = {'SVD'}; %'cSVD';'oSVD'}
            


%             idx = any(app.SavedImageSegmenter(:,:,:,1), [1, 2]);
%             nesto = app.SavedImageSegmenter(:,:,idx,:);
%             disp(size(nesto))
            
            % Get volumetric data and sequence parameters for map
            % calculation
            drop_Value = app.SelectvolumetricdataDropDown.Value; 
            TE = table2array(app.SequencePropertyTable({drop_Value}, "TE_time"));
            TR = table2array(app.SequencePropertyTable({drop_Value}, "TR_time"));            
            work_Data = cell2mat(table2array(app.SavedTableSegmenter({drop_Value}, "Image")));
            app.WorkMask = cell2mat(table2array(app.SavedTableSegmenter({drop_Value}, "Mask")));
            
            % Calculate and display DSC maps
            if numel(size(work_Data)) == 4   
                [cbv,cbf,mtt,cbv_lc,ttp,mask,aif,conc,s0]=DSC_mri_core(work_Data, TE, TR, custom_options);
    %             assignin('base',"mtt", mtt)
    %             assignin('base',"cbf", cbf)
    %             assignin('base',"cbv_lc", cbv_lc)
    %             assignin('base',"cbv", cbv)
                
                app.MTTData = mtt.svd;
                app.MTTData(isnan(app.MTTData)) = 0;
                app.CBFData = cbf.svd.map;
                app.CBVData = cbv;
                app.CBVLCData = cbv_lc;
                
                data_dims = size(app.CBFData);
                app.SliceSpinner_CBF.Limits = [1, data_dims(3)];
                app.SliceSpinner_CBV.Limits = [1, data_dims(3)];
                app.SliceSpinner_MTT.Limits = [1, data_dims(3)];
                app.GlobalslicesliderSlider.Limits = [1, data_dims(3)];
                
                app.SliceSpinner_CBF.Enable = 'On';
                app.SliceSpinner_CBV.Enable = 'On';
                app.SliceSpinner_MTT.Enable = 'On';
    
                cbf_im = imshow(app.CBFData(:,:,1), [], 'Parent', app.UIAxes_DSC_CBF, Colormap = turbo);
                cbf_im.AlphaData = app.WorkMask(:,:,1);
                
                cbv_im = imshow(app.CBVData(:,:,1), [], 'Parent', app.UIAxes_DSC_CBV, Colormap = turbo);
                cbv_im.AlphaData = app.WorkMask(:,:,1);
                
                mtt_im = imshow(app.MTTData(:,:,1), [], 'Parent', app.UIAxes_DSC_MTT, Colormap = turbo);
                mtt_im.AlphaData = app.WorkMask(:,:,1);
            else
                disp('Wrong number of dimensions!')
            end
                
        end

        % Button pushed function: Button3
        function Button3Pushed(app, event)
            disp(app.SavedTableSegmenter)
        end

        % Value changed function: SliceSpinner_CBF
        function SliceSpinner_CBFValueChanged(app, event)
            cbf_im = imshow(app.CBFData(:,:,app.SliceSpinner_CBF.Value), [], 'Parent', app.UIAxes_DSC_CBF, Colormap = turbo);
            cbf_im.AlphaData = app.WorkMask(:,:,app.SliceSpinner_CBF.Value);
        end

        % Value changed function: SliceSpinner_CBV
        function SliceSpinner_CBVValueChanged(app, event)
            cbv_im = imshow(app.CBVData(:,:,app.SliceSpinner_CBV.Value), [], 'Parent', app.UIAxes_DSC_CBV, Colormap = turbo);
            cbv_im.AlphaData = app.WorkMask(:,:,app.SliceSpinner_CBV.Value);
        end

        % Value changed function: SliceSpinner_MTT
        function SliceSpinner_MTTValueChanged(app, event)
            mtt_im = imshow(app.MTTData(:,:,app.SliceSpinner_MTT.Value), [], 'Parent', app.UIAxes_DSC_MTT, Colormap = turbo);
            mtt_im.AlphaData = app.WorkMask(:,:,app.SliceSpinner_MTT.Value);
        end

        % Value changing function: GlobalslicesliderSlider
        function GlobalslicesliderSliderValueChanging(app, event)
            changingValue = round(event.Value);
            
            cbf_im = imshow(app.CBFData(:,:,changingValue), [], 'Parent', app.UIAxes_DSC_CBF, Colormap = turbo);
            cbf_im.AlphaData = app.WorkMask(:,:,changingValue);
            cbv_im = imshow(app.CBVData(:,:,changingValue), [], 'Parent', app.UIAxes_DSC_CBV, Colormap = turbo);
            cbv_im.AlphaData = app.WorkMask(:,:,changingValue);
            mtt_im = imshow(app.MTTData(:,:,changingValue), [], 'Parent', app.UIAxes_DSC_MTT, Colormap = turbo);
            mtt_im.AlphaData = app.WorkMask(:,:,changingValue);
            
            app.SliceSpinner_CBF.Value = changingValue;
            app.SliceSpinner_CBV.Value = changingValue;
            app.SliceSpinner_MTT.Value = changingValue;
        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create UIFigure and hide until all components are created
            app.UIFigure = uifigure('Visible', 'off');
            app.UIFigure.AutoResizeChildren = 'off';
            app.UIFigure.Position = [100 100 1436 746];
            app.UIFigure.Name = 'MATLAB App';

            % Create TabGroup
            app.TabGroup = uitabgroup(app.UIFigure);
            app.TabGroup.AutoResizeChildren = 'off';
            app.TabGroup.Position = [2 -1 1434 748];

            % Create PreviewTab
            app.PreviewTab = uitab(app.TabGroup);
            app.PreviewTab.AutoResizeChildren = 'off';
            app.PreviewTab.Title = 'Preview';

            % Create UIAxes_2
            app.UIAxes_2 = uiaxes(app.PreviewTab);
            title(app.UIAxes_2, 'Sequence 2')
            app.UIAxes_2.Toolbar.Visible = 'off';
            app.UIAxes_2.XTick = [];
            app.UIAxes_2.YTick = [];
            app.UIAxes_2.Position = [603 319 250 215];

            % Create UIAxes
            app.UIAxes = uiaxes(app.PreviewTab);
            app.UIAxes.XLimitMethod = 'tight';
            app.UIAxes.YLimitMethod = 'tight';
            app.UIAxes.XTick = [];
            app.UIAxes.XTickLabel = '';
            app.UIAxes.YTick = [];
            app.UIAxes.YTickLabel = '';
            app.UIAxes.Position = [134 319 250 215];

            % Create TransposeButton_2
            app.TransposeButton_2 = uibutton(app.PreviewTab, 'push');
            app.TransposeButton_2.ButtonPushedFcn = createCallbackFcn(app, @TransposeButton_2Pushed, true);
            app.TransposeButton_2.Position = [754 277 100 22];
            app.TransposeButton_2.Text = 'Transpose';

            % Create TransposeButton
            app.TransposeButton = uibutton(app.PreviewTab, 'push');
            app.TransposeButton.ButtonPushedFcn = createCallbackFcn(app, @TransposeButtonPushed, true);
            app.TransposeButton.Position = [287 277 100 22];
            app.TransposeButton.Text = 'Transpose';

            % Create Sequence1DropDownLabel
            app.Sequence1DropDownLabel = uilabel(app.PreviewTab);
            app.Sequence1DropDownLabel.HorizontalAlignment = 'right';
            app.Sequence1DropDownLabel.Position = [102 558 70 22];
            app.Sequence1DropDownLabel.Text = 'Sequence 1';

            % Create Sequence1DropDown
            app.Sequence1DropDown = uidropdown(app.PreviewTab);
            app.Sequence1DropDown.Items = {};
            app.Sequence1DropDown.ValueChangedFcn = createCallbackFcn(app, @Sequence1DropDownValueChanged, true);
            app.Sequence1DropDown.Placeholder = 'None';
            app.Sequence1DropDown.Position = [187 558 229 22];
            app.Sequence1DropDown.Value = {};

            % Create Sequence2DropDownLabel
            app.Sequence2DropDownLabel = uilabel(app.PreviewTab);
            app.Sequence2DropDownLabel.HorizontalAlignment = 'right';
            app.Sequence2DropDownLabel.Position = [552 558 70 22];
            app.Sequence2DropDownLabel.Text = 'Sequence 2';

            % Create Sequence2DropDown
            app.Sequence2DropDown = uidropdown(app.PreviewTab);
            app.Sequence2DropDown.Items = {};
            app.Sequence2DropDown.ValueChangedFcn = createCallbackFcn(app, @Sequence2DropDownValueChanged, true);
            app.Sequence2DropDown.Placeholder = 'None';
            app.Sequence2DropDown.Position = [637 558 229 22];
            app.Sequence2DropDown.Value = {};

            % Create SliceSpinnerLabel
            app.SliceSpinnerLabel = uilabel(app.PreviewTab);
            app.SliceSpinnerLabel.HorizontalAlignment = 'right';
            app.SliceSpinnerLabel.Position = [135 277 31 22];
            app.SliceSpinnerLabel.Text = 'Slice';

            % Create SliceSpinner
            app.SliceSpinner = uispinner(app.PreviewTab);
            app.SliceSpinner.ValueChangedFcn = createCallbackFcn(app, @SliceSpinnerValueChanged, true);
            app.SliceSpinner.Position = [181 277 100 22];

            % Create SliceSpinner_2Label
            app.SliceSpinner_2Label = uilabel(app.PreviewTab);
            app.SliceSpinner_2Label.HorizontalAlignment = 'right';
            app.SliceSpinner_2Label.Position = [604 277 31 22];
            app.SliceSpinner_2Label.Text = 'Slice';

            % Create SliceSpinner_2
            app.SliceSpinner_2 = uispinner(app.PreviewTab);
            app.SliceSpinner_2.ValueChangedFcn = createCallbackFcn(app, @SliceSpinner_2ValueChanged, true);
            app.SliceSpinner_2.Position = [650 277 100 22];

            % Create UpdateButton
            app.UpdateButton = uibutton(app.PreviewTab, 'push');
            app.UpdateButton.ButtonPushedFcn = createCallbackFcn(app, @UpdateButtonPushed, true);
            app.UpdateButton.Position = [426 622 100 22];
            app.UpdateButton.Text = 'Update';

            % Create BrowseButton
            app.BrowseButton = uibutton(app.PreviewTab, 'push');
            app.BrowseButton.ButtonPushedFcn = createCallbackFcn(app, @BrowseButtonPushed, true);
            app.BrowseButton.Position = [529 663 100 22];
            app.BrowseButton.Text = 'Browse';

            % Create StudyfolderEditFieldLabel
            app.StudyfolderEditFieldLabel = uilabel(app.PreviewTab);
            app.StudyfolderEditFieldLabel.HorizontalAlignment = 'right';
            app.StudyfolderEditFieldLabel.Position = [107 663 70 22];
            app.StudyfolderEditFieldLabel.Text = {'Study folder'; ''};

            % Create StudyfolderEditField
            app.StudyfolderEditField = uieditfield(app.PreviewTab, 'text');
            app.StudyfolderEditField.Editable = 'off';
            app.StudyfolderEditField.Position = [185 663 337 22];

            % Create NumberofsequencesEditFieldLabel
            app.NumberofsequencesEditFieldLabel = uilabel(app.PreviewTab);
            app.NumberofsequencesEditFieldLabel.HorizontalAlignment = 'right';
            app.NumberofsequencesEditFieldLabel.Position = [643 663 123 22];
            app.NumberofsequencesEditFieldLabel.Text = {'Number of sequences'; ''};

            % Create NumberofsequencesEditField
            app.NumberofsequencesEditField = uieditfield(app.PreviewTab, 'numeric');
            app.NumberofsequencesEditField.Position = [781 663 61 22];

            % Create SliderLabel
            app.SliderLabel = uilabel(app.PreviewTab);
            app.SliderLabel.HorizontalAlignment = 'right';
            app.SliderLabel.Position = [150 227 36 22];
            app.SliderLabel.Text = 'Slider';

            % Create Slider
            app.Slider = uislider(app.PreviewTab);
            app.Slider.ValueChangingFcn = createCallbackFcn(app, @SliderValueChanging, true);
            app.Slider.MinorTicks = [];
            app.Slider.Position = [207 236 150 3];

            % Create UITable
            app.UITable = uitable(app.PreviewTab);
            app.UITable.ColumnName = {'Column 1'; 'Column 2'; 'Column 3'; 'Column 4'};
            app.UITable.RowName = {};
            app.UITable.Position = [973 252 389 306];

            % Create SliceSpinner_3Label
            app.SliceSpinner_3Label = uilabel(app.PreviewTab);
            app.SliceSpinner_3Label.HorizontalAlignment = 'right';
            app.SliceSpinner_3Label.Position = [827 134 31 22];
            app.SliceSpinner_3Label.Text = 'Slice';

            % Create SliceSpinner_3
            app.SliceSpinner_3 = uispinner(app.PreviewTab);
            app.SliceSpinner_3.Position = [873 134 100 22];

            % Create SliceSpinner_4Label
            app.SliceSpinner_4Label = uilabel(app.PreviewTab);
            app.SliceSpinner_4Label.HorizontalAlignment = 'right';
            app.SliceSpinner_4Label.Position = [826 80 31 22];
            app.SliceSpinner_4Label.Text = 'Slice';

            % Create SliceSpinner_4
            app.SliceSpinner_4 = uispinner(app.PreviewTab);
            app.SliceSpinner_4.Position = [872 80 100 22];

            % Create SegmenterTab
            app.SegmenterTab = uitab(app.TabGroup);
            app.SegmenterTab.AutoResizeChildren = 'off';
            app.SegmenterTab.Title = 'Segmenter';

            % Create UIAxes_Segmenter
            app.UIAxes_Segmenter = uiaxes(app.SegmenterTab);
            app.UIAxes_Segmenter.Toolbar.Visible = 'off';
            app.UIAxes_Segmenter.XLimitMethod = 'tight';
            app.UIAxes_Segmenter.YLimitMethod = 'tight';
            app.UIAxes_Segmenter.XTick = [];
            app.UIAxes_Segmenter.YTick = [];
            app.UIAxes_Segmenter.Position = [6 48 1051 676];

            % Create SelectsequencetosegmentDropDownLabel
            app.SelectsequencetosegmentDropDownLabel = uilabel(app.SegmenterTab);
            app.SelectsequencetosegmentDropDownLabel.HorizontalAlignment = 'right';
            app.SelectsequencetosegmentDropDownLabel.Position = [1177 678 157 22];
            app.SelectsequencetosegmentDropDownLabel.Text = 'Select sequence to segment';

            % Create SelectsequencetosegmentDropDown
            app.SelectsequencetosegmentDropDown = uidropdown(app.SegmenterTab);
            app.SelectsequencetosegmentDropDown.Items = {};
            app.SelectsequencetosegmentDropDown.ValueChangedFcn = createCallbackFcn(app, @SelectsequencetosegmentDropDownValueChanged, true);
            app.SelectsequencetosegmentDropDown.Placeholder = 'None';
            app.SelectsequencetosegmentDropDown.Position = [1160 648 202 21];
            app.SelectsequencetosegmentDropDown.Value = {};

            % Create SliceSpinner_5Label
            app.SliceSpinner_5Label = uilabel(app.SegmenterTab);
            app.SliceSpinner_5Label.HorizontalAlignment = 'right';
            app.SliceSpinner_5Label.Position = [348 17 31 22];
            app.SliceSpinner_5Label.Text = 'Slice';

            % Create SliceSpinner_Segmenter
            app.SliceSpinner_Segmenter = uispinner(app.SegmenterTab);
            app.SliceSpinner_Segmenter.ValueChangedFcn = createCallbackFcn(app, @SliceSpinner_SegmenterValueChanged, true);
            app.SliceSpinner_Segmenter.Position = [390 17 100 22];

            % Create RotateButton_Segmenter
            app.RotateButton_Segmenter = uibutton(app.SegmenterTab, 'push');
            app.RotateButton_Segmenter.ButtonPushedFcn = createCallbackFcn(app, @RotateButton_SegmenterPushed, true);
            app.RotateButton_Segmenter.Position = [508 17 94 22];
            app.RotateButton_Segmenter.Text = {'Rotate'; ''};

            % Create ImageshownSwitchLabel
            app.ImageshownSwitchLabel = uilabel(app.SegmenterTab);
            app.ImageshownSwitchLabel.HorizontalAlignment = 'center';
            app.ImageshownSwitchLabel.Position = [1222 579 77 22];
            app.ImageshownSwitchLabel.Text = {'Image shown'; ''};

            % Create ImageshownSwitch
            app.ImageshownSwitch = uiswitch(app.SegmenterTab, 'slider');
            app.ImageshownSwitch.Items = {'Overlay', 'Masked'};
            app.ImageshownSwitch.ValueChangedFcn = createCallbackFcn(app, @ImageshownSwitchValueChanged, true);
            app.ImageshownSwitch.Enable = 'off';
            app.ImageshownSwitch.Position = [1237 608 45 20];
            app.ImageshownSwitch.Value = 'Overlay';

            % Create InitialselectionButton
            app.InitialselectionButton = uibutton(app.SegmenterTab, 'push');
            app.InitialselectionButton.ButtonPushedFcn = createCallbackFcn(app, @InitialselectionButtonPushed, true);
            app.InitialselectionButton.Position = [1156 515 100 22];
            app.InitialselectionButton.Text = {'Initial selection'; ''};

            % Create IBrainsegmentationLabel
            app.IBrainsegmentationLabel = uilabel(app.SegmenterTab);
            app.IBrainsegmentationLabel.Position = [1201 546 119 22];
            app.IBrainsegmentationLabel.Text = {'I. Brain segmentation'; ''};

            % Create AutoClusterButton
            app.AutoClusterButton = uibutton(app.SegmenterTab, 'push');
            app.AutoClusterButton.ButtonPushedFcn = createCallbackFcn(app, @AutoClusterButtonPushed, true);
            app.AutoClusterButton.Enable = 'off';
            app.AutoClusterButton.Position = [1266 515 100 22];
            app.AutoClusterButton.Text = 'Auto Cluster';

            % Create DiskradiusSpinnerLabel
            app.DiskradiusSpinnerLabel = uilabel(app.SegmenterTab);
            app.DiskradiusSpinnerLabel.HorizontalAlignment = 'right';
            app.DiskradiusSpinnerLabel.Position = [1208 446 65 22];
            app.DiskradiusSpinnerLabel.Text = {'Disk radius'; ''};

            % Create DiskradiusSpinner
            app.DiskradiusSpinner = uispinner(app.SegmenterTab);
            app.DiskradiusSpinner.Limits = [1 100];
            app.DiskradiusSpinner.Position = [1215 413 51 22];
            app.DiskradiusSpinner.Value = 3;

            % Create OpenMaskButton
            app.OpenMaskButton = uibutton(app.SegmenterTab, 'push');
            app.OpenMaskButton.ButtonPushedFcn = createCallbackFcn(app, @OpenMaskButtonPushed, true);
            app.OpenMaskButton.Position = [1114 446 82 22];
            app.OpenMaskButton.Text = {'Open Mask'; ''};

            % Create CloseMaskButton
            app.CloseMaskButton = uibutton(app.SegmenterTab, 'push');
            app.CloseMaskButton.ButtonPushedFcn = createCallbackFcn(app, @CloseMaskButtonPushed, true);
            app.CloseMaskButton.Position = [1114 413 82 22];
            app.CloseMaskButton.Text = {'Close Mask'; ''};

            % Create MorphologyLabel
            app.MorphologyLabel = uilabel(app.SegmenterTab);
            app.MorphologyLabel.Position = [1160 476 68 15];
            app.MorphologyLabel.Text = {'Morphology'; ''};

            % Create ROILabel
            app.ROILabel = uilabel(app.SegmenterTab);
            app.ROILabel.Position = [1340 476 25 15];
            app.ROILabel.Text = {'ROI'; ''; ''};

            % Create FreeButton_Add
            app.FreeButton_Add = uibutton(app.SegmenterTab, 'push');
            app.FreeButton_Add.ButtonPushedFcn = createCallbackFcn(app, @FreeButton_AddPushed, true);
            app.FreeButton_Add.Position = [1298 445 50 22];
            app.FreeButton_Add.Text = {'+ Free'; ''};

            % Create PolyButton_Add
            app.PolyButton_Add = uibutton(app.SegmenterTab, 'push');
            app.PolyButton_Add.ButtonPushedFcn = createCallbackFcn(app, @PolyButton_AddPushed, true);
            app.PolyButton_Add.Position = [1298 413 50 22];
            app.PolyButton_Add.Text = '+ Poly';

            % Create PolyButton_Remove
            app.PolyButton_Remove = uibutton(app.SegmenterTab, 'push');
            app.PolyButton_Remove.ButtonPushedFcn = createCallbackFcn(app, @PolyButton_RemovePushed, true);
            app.PolyButton_Remove.Position = [1357 413 50 22];
            app.PolyButton_Remove.Text = {'- Poly'; ''};

            % Create FreeButton_Remove
            app.FreeButton_Remove = uibutton(app.SegmenterTab, 'push');
            app.FreeButton_Remove.ButtonPushedFcn = createCallbackFcn(app, @FreeButton_RemovePushed, true);
            app.FreeButton_Remove.Position = [1357 445 50 22];
            app.FreeButton_Remove.Text = {'- Free'; ''};

            % Create ResetsliceButton
            app.ResetsliceButton = uibutton(app.SegmenterTab, 'push');
            app.ResetsliceButton.ButtonPushedFcn = createCallbackFcn(app, @ResetsliceButtonPushed, true);
            app.ResetsliceButton.Position = [1156 366 100 22];
            app.ResetsliceButton.Text = 'Reset slice';

            % Create SavesliceButton
            app.SavesliceButton = uibutton(app.SegmenterTab, 'push');
            app.SavesliceButton.ButtonPushedFcn = createCallbackFcn(app, @SavesliceButtonPushed, true);
            app.SavesliceButton.Position = [1266 366 100 22];
            app.SavesliceButton.Text = 'Save slice';

            % Create Button
            app.Button = uibutton(app.SegmenterTab, 'push');
            app.Button.ButtonPushedFcn = createCallbackFcn(app, @ButtonPushed, true);
            app.Button.Position = [1211 17 100 22];

            % Create IIHemisphereselectionLabel
            app.IIHemisphereselectionLabel = uilabel(app.SegmenterTab);
            app.IIHemisphereselectionLabel.Position = [1190 299 134 22];
            app.IIHemisphereselectionLabel.Text = {'II. Hemisphere selection'; ''};

            % Create HemisphereButtonGroup
            app.HemisphereButtonGroup = uibuttongroup(app.SegmenterTab);
            app.HemisphereButtonGroup.AutoResizeChildren = 'off';
            app.HemisphereButtonGroup.TitlePosition = 'centertop';
            app.HemisphereButtonGroup.Title = 'Hemisphere ';
            app.HemisphereButtonGroup.Position = [1144 217 100 74];

            % Create LeftblueButton
            app.LeftblueButton = uiradiobutton(app.HemisphereButtonGroup);
            app.LeftblueButton.Text = 'Left - blue';
            app.LeftblueButton.Position = [11 28 75 22];
            app.LeftblueButton.Value = true;

            % Create RightredButton
            app.RightredButton = uiradiobutton(app.HemisphereButtonGroup);
            app.RightredButton.Text = 'Right - red';
            app.RightredButton.Position = [11 6 78 22];

            % Create CorrectionButton_Hemisphere
            app.CorrectionButton_Hemisphere = uibutton(app.SegmenterTab, 'push');
            app.CorrectionButton_Hemisphere.ButtonPushedFcn = createCallbackFcn(app, @CorrectionButton_HemispherePushed, true);
            app.CorrectionButton_Hemisphere.Position = [1259 223 96 22];
            app.CorrectionButton_Hemisphere.Text = {'Correction ROI'; ''};

            % Create MainselectionButton_Hemisphere
            app.MainselectionButton_Hemisphere = uibutton(app.SegmenterTab, 'push');
            app.MainselectionButton_Hemisphere.ButtonPushedFcn = createCallbackFcn(app, @MainselectionButton_HemispherePushed, true);
            app.MainselectionButton_Hemisphere.Position = [1259 259 96 22];
            app.MainselectionButton_Hemisphere.Text = {'Main selection'; ''};

            % Create IIILesionselectionLabel
            app.IIILesionselectionLabel = uilabel(app.SegmenterTab);
            app.IIILesionselectionLabel.Position = [1209 177 108 22];
            app.IIILesionselectionLabel.Text = {'III. Lesion selection'; ''};

            % Create MainselectionButton_Lesiion
            app.MainselectionButton_Lesiion = uibutton(app.SegmenterTab, 'push');
            app.MainselectionButton_Lesiion.ButtonPushedFcn = createCallbackFcn(app, @MainselectionButton_LesiionPushed, true);
            app.MainselectionButton_Lesiion.Position = [1215 147 96 22];
            app.MainselectionButton_Lesiion.Text = {'Main selection'; ''};

            % Create FreeButton_Add_Lesion
            app.FreeButton_Add_Lesion = uibutton(app.SegmenterTab, 'push');
            app.FreeButton_Add_Lesion.ButtonPushedFcn = createCallbackFcn(app, @FreeButton_Add_LesionPushed, true);
            app.FreeButton_Add_Lesion.Position = [1208 114 50 22];
            app.FreeButton_Add_Lesion.Text = {'+ Free'; ''};

            % Create FreeButton_Remove_Lesion
            app.FreeButton_Remove_Lesion = uibutton(app.SegmenterTab, 'push');
            app.FreeButton_Remove_Lesion.ButtonPushedFcn = createCallbackFcn(app, @FreeButton_Remove_LesionPushed, true);
            app.FreeButton_Remove_Lesion.Position = [1267 114 50 22];
            app.FreeButton_Remove_Lesion.Text = {'- Free'; ''};

            % Create RotateButton_Segmenter_2
            app.RotateButton_Segmenter_2 = uibutton(app.SegmenterTab, 'push');
            app.RotateButton_Segmenter_2.ButtonPushedFcn = createCallbackFcn(app, @ResetviewButton_Segmenter_Pushed, true);
            app.RotateButton_Segmenter_2.Position = [613 17 94 22];
            app.RotateButton_Segmenter_2.Text = 'Reset view';

            % Create ActionLabel
            app.ActionLabel = uilabel(app.SegmenterTab);
            app.ActionLabel.HorizontalAlignment = 'center';
            app.ActionLabel.FontAngle = 'italic';
            app.ActionLabel.Position = [1114 337 293 22];
            app.ActionLabel.Text = 'Last action';

            % Create SavesequenceButton
            app.SavesequenceButton = uibutton(app.SegmenterTab, 'push');
            app.SavesequenceButton.ButtonPushedFcn = createCallbackFcn(app, @SavesequenceButtonPushed, true);
            app.SavesequenceButton.Position = [1158 59 100 22];
            app.SavesequenceButton.Text = 'Save sequence';

            % Create ExportsequenceButton
            app.ExportsequenceButton = uibutton(app.SegmenterTab, 'push');
            app.ExportsequenceButton.ButtonPushedFcn = createCallbackFcn(app, @ExportsequenceButtonPushed, true);
            app.ExportsequenceButton.Position = [1267 59 100 22];
            app.ExportsequenceButton.Text = 'Export sequence';

            % Create DSCTab
            app.DSCTab = uitab(app.TabGroup);
            app.DSCTab.Title = 'DSC';

            % Create UIAxes_DSC_CBF
            app.UIAxes_DSC_CBF = uiaxes(app.DSCTab);
            app.UIAxes_DSC_CBF.Toolbar.Visible = 'off';
            app.UIAxes_DSC_CBF.XLimitMethod = 'tight';
            app.UIAxes_DSC_CBF.YLimitMethod = 'tight';
            app.UIAxes_DSC_CBF.XTick = [];
            app.UIAxes_DSC_CBF.XTickLabel = '';
            app.UIAxes_DSC_CBF.YTick = [];
            app.UIAxes_DSC_CBF.YTickLabel = '';
            app.UIAxes_DSC_CBF.Position = [36 48 442 393];

            % Create UIAxes_DSC_CBV
            app.UIAxes_DSC_CBV = uiaxes(app.DSCTab);
            app.UIAxes_DSC_CBV.Toolbar.Visible = 'off';
            app.UIAxes_DSC_CBV.XLimitMethod = 'tight';
            app.UIAxes_DSC_CBV.YLimitMethod = 'tight';
            app.UIAxes_DSC_CBV.XTick = [];
            app.UIAxes_DSC_CBV.XTickLabel = '';
            app.UIAxes_DSC_CBV.YTick = [];
            app.UIAxes_DSC_CBV.YTickLabel = '';
            app.UIAxes_DSC_CBV.Position = [496 48 442 393];

            % Create UIAxes_DSC_MTT
            app.UIAxes_DSC_MTT = uiaxes(app.DSCTab);
            app.UIAxes_DSC_MTT.Toolbar.Visible = 'off';
            app.UIAxes_DSC_MTT.XLimitMethod = 'tight';
            app.UIAxes_DSC_MTT.YLimitMethod = 'tight';
            app.UIAxes_DSC_MTT.XTick = [];
            app.UIAxes_DSC_MTT.XTickLabel = '';
            app.UIAxes_DSC_MTT.YTick = [];
            app.UIAxes_DSC_MTT.YTickLabel = '';
            app.UIAxes_DSC_MTT.Position = [956 48 442 393];

            % Create CalculatemapsButton
            app.CalculatemapsButton = uibutton(app.DSCTab, 'push');
            app.CalculatemapsButton.ButtonPushedFcn = createCallbackFcn(app, @CalculatemapsButtonPushed, true);
            app.CalculatemapsButton.Position = [654 592 128 22];
            app.CalculatemapsButton.Text = 'Calculate maps';

            % Create Button3
            app.Button3 = uibutton(app.DSCTab, 'push');
            app.Button3.ButtonPushedFcn = createCallbackFcn(app, @Button3Pushed, true);
            app.Button3.Position = [1282 643 87 22];
            app.Button3.Text = 'Button3';

            % Create GlobalslicesliderSliderLabel
            app.GlobalslicesliderSliderLabel = uilabel(app.DSCTab);
            app.GlobalslicesliderSliderLabel.HorizontalAlignment = 'center';
            app.GlobalslicesliderSliderLabel.Position = [586 485 71 41];
            app.GlobalslicesliderSliderLabel.Text = {'Global slice '; 'slider'};

            % Create GlobalslicesliderSlider
            app.GlobalslicesliderSlider = uislider(app.DSCTab);
            app.GlobalslicesliderSlider.ValueChangingFcn = createCallbackFcn(app, @GlobalslicesliderSliderValueChanging, true);
            app.GlobalslicesliderSlider.MinorTicks = [];
            app.GlobalslicesliderSlider.Position = [678 513 150 3];

            % Create SliceSpinner_5Label_2
            app.SliceSpinner_5Label_2 = uilabel(app.DSCTab);
            app.SliceSpinner_5Label_2.HorizontalAlignment = 'right';
            app.SliceSpinner_5Label_2.Enable = 'off';
            app.SliceSpinner_5Label_2.Position = [181 17 31 22];
            app.SliceSpinner_5Label_2.Text = 'Slice';

            % Create SliceSpinner_CBF
            app.SliceSpinner_CBF = uispinner(app.DSCTab);
            app.SliceSpinner_CBF.ValueChangedFcn = createCallbackFcn(app, @SliceSpinner_CBFValueChanged, true);
            app.SliceSpinner_CBF.Enable = 'off';
            app.SliceSpinner_CBF.Position = [227 17 100 22];

            % Create SliceSpinner_6Label
            app.SliceSpinner_6Label = uilabel(app.DSCTab);
            app.SliceSpinner_6Label.HorizontalAlignment = 'right';
            app.SliceSpinner_6Label.Enable = 'off';
            app.SliceSpinner_6Label.Position = [656 17 31 22];
            app.SliceSpinner_6Label.Text = 'Slice';

            % Create SliceSpinner_CBV
            app.SliceSpinner_CBV = uispinner(app.DSCTab);
            app.SliceSpinner_CBV.ValueChangedFcn = createCallbackFcn(app, @SliceSpinner_CBVValueChanged, true);
            app.SliceSpinner_CBV.Enable = 'off';
            app.SliceSpinner_CBV.Position = [702 17 100 22];

            % Create SliceSpinner_7Label
            app.SliceSpinner_7Label = uilabel(app.DSCTab);
            app.SliceSpinner_7Label.HorizontalAlignment = 'right';
            app.SliceSpinner_7Label.Enable = 'off';
            app.SliceSpinner_7Label.Position = [1121 17 31 22];
            app.SliceSpinner_7Label.Text = 'Slice';

            % Create SliceSpinner_MTT
            app.SliceSpinner_MTT = uispinner(app.DSCTab);
            app.SliceSpinner_MTT.ValueChangedFcn = createCallbackFcn(app, @SliceSpinner_MTTValueChanged, true);
            app.SliceSpinner_MTT.Enable = 'off';
            app.SliceSpinner_MTT.Position = [1167 17 100 22];

            % Create CBFMapLabel
            app.CBFMapLabel = uilabel(app.DSCTab);
            app.CBFMapLabel.Position = [229 440 56 22];
            app.CBFMapLabel.Text = {'CBF Map'; ''};

            % Create CBVMapLabel
            app.CBVMapLabel = uilabel(app.DSCTab);
            app.CBVMapLabel.Position = [692 440 57 22];
            app.CBVMapLabel.Text = {'CBV Map'; ''};

            % Create MTTMapLabel
            app.MTTMapLabel = uilabel(app.DSCTab);
            app.MTTMapLabel.Position = [1166 440 56 22];
            app.MTTMapLabel.Text = {'MTT Map'; ''};

            % Create SelectvolumetricdataformapcalculationLabel
            app.SelectvolumetricdataformapcalculationLabel = uilabel(app.DSCTab);
            app.SelectvolumetricdataformapcalculationLabel.HorizontalAlignment = 'right';
            app.SelectvolumetricdataformapcalculationLabel.Position = [608 673 229 22];
            app.SelectvolumetricdataformapcalculationLabel.Text = 'Select volumetric data for map calculation';

            % Create SelectvolumetricdataDropDown
            app.SelectvolumetricdataDropDown = uidropdown(app.DSCTab);
            app.SelectvolumetricdataDropDown.Items = {};
            app.SelectvolumetricdataDropDown.Placeholder = 'None';
            app.SelectvolumetricdataDropDown.Position = [538 643 360 21];
            app.SelectvolumetricdataDropDown.Value = {};

            % Show the figure after all components are created
            app.UIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = MRItool_exported

            % Create UIFigure and components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.UIFigure)

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