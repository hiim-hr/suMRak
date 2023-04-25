classdef MRItool_exported < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        UIFigure                        matlab.ui.Figure
        TabGroup                        matlab.ui.container.TabGroup
        PreviewTab                      matlab.ui.container.Tab
        Dim4SliderPreview               matlab.ui.control.Slider
        Dim4Slider_2Label               matlab.ui.control.Label
        Dim5SliderPreview               matlab.ui.control.Slider
        Dim5SliderLabel                 matlab.ui.control.Label
        LoadsingleButton                matlab.ui.control.Button
        UITable                         matlab.ui.control.Table
        NumberofsequencesEditField      matlab.ui.control.NumericEditField
        NumberofsequencesEditFieldLabel  matlab.ui.control.Label
        StudyfolderEditField            matlab.ui.control.EditField
        StudyfolderEditFieldLabel       matlab.ui.control.Label
        BrowseButton                    matlab.ui.control.Button
        UpdateButton                    matlab.ui.control.Button
        SliceSpinnerPreview             matlab.ui.control.Spinner
        SliceSpinnerLabel               matlab.ui.control.Label
        PreviewDropDown                 matlab.ui.control.DropDown
        PreviewLabel                    matlab.ui.control.Label
        RotateButtonPreview             matlab.ui.control.Button
        UIAxesPreview                   matlab.ui.control.UIAxes
        SegmenterTab                    matlab.ui.container.Tab
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
        InitialselectionButton          matlab.ui.control.Button
        FreeButton_Remove_Lesion        matlab.ui.control.Button
        FreeButton_Add_Lesion           matlab.ui.control.Button
        MainselectionButton_Lesion      matlab.ui.control.Button
        IIILesionselectionLabel         matlab.ui.control.Label
        MainselectionButton_Hemisphere  matlab.ui.control.Button
        CorrectionButton_Hemisphere     matlab.ui.control.Button
        HemisphereButtonGroup           matlab.ui.container.ButtonGroup
        RightredButton                  matlab.ui.control.RadioButton
        LeftblueButton                  matlab.ui.control.RadioButton
        IIHemisphereselectionLabel      matlab.ui.control.Label
        SegmentusingexternalmaskButton  matlab.ui.control.Button
        Dim5Spinner_Segmenter           matlab.ui.control.Spinner
        Dim5Label                       matlab.ui.control.Label
        Dim4Spinner_Segmenter           matlab.ui.control.Spinner
        Dim4Label                       matlab.ui.control.Label
        ExportsequenceButton            matlab.ui.control.Button
        SavesequenceButton              matlab.ui.control.Button
        ActionLabel                     matlab.ui.control.Label
        ResetViewButton_Segmenter       matlab.ui.control.Button
        SavesliceButton                 matlab.ui.control.Button
        IBrainsegmentationLabel         matlab.ui.control.Label
        ResetsliceButton                matlab.ui.control.Button
        ImageshownSwitch                matlab.ui.control.Switch
        ImageshownSwitchLabel           matlab.ui.control.Label
        RotateButton_Segmenter          matlab.ui.control.Button
        SliceSpinner_Segmenter          matlab.ui.control.Spinner
        SliceSpinner_SegmenterLabel     matlab.ui.control.Label
        SelectsequencetosegmentDropDown  matlab.ui.control.DropDown
        SelectsequencetosegmentDropDownLabel  matlab.ui.control.Label
        UIAxes_Segmenter                matlab.ui.control.UIAxes
        DSCTab                          matlab.ui.container.Tab
        ExportROImaskButton             matlab.ui.control.Button
        ComparationPanel                matlab.ui.container.Panel
        ASLMaxLabel                     matlab.ui.control.Label
        ASLMinLabel                     matlab.ui.control.Label
        ASLSDLabel                      matlab.ui.control.Label
        ASLMeanLabel                    matlab.ui.control.Label
        DSCMaxLabel                     matlab.ui.control.Label
        DSCMinLabel                     matlab.ui.control.Label
        DSCSDLabel                      matlab.ui.control.Label
        DSCMeanLabel                    matlab.ui.control.Label
        VoxelNValueLabel                matlab.ui.control.Label
        ASLLabel                        matlab.ui.control.Label
        DSCLabel                        matlab.ui.control.Label
        ComparationregionsListBox       matlab.ui.control.ListBox
        ComparationregionsListBoxLabel  matlab.ui.control.Label
        MaxLabel                        matlab.ui.control.Label
        MinLabel                        matlab.ui.control.Label
        SDLabel                         matlab.ui.control.Label
        MeanLabel                       matlab.ui.control.Label
        VoxelNLabel                     matlab.ui.control.Label
        ROIpixelexclusionButton         matlab.ui.control.Button
        ASLcomparationROIButton         matlab.ui.control.Button
        DSCcomparationROIButton         matlab.ui.control.Button
        ExportDSCmapsButton             matlab.ui.control.Button
        MethodButtonGroup               matlab.ui.container.ButtonGroup
        oSVDButton                      matlab.ui.control.RadioButton
        cSVDButton                      matlab.ui.control.RadioButton
        SVDButton                       matlab.ui.control.RadioButton
        ExportASLmapButton              matlab.ui.control.Button
        DSCMapDropDown                  matlab.ui.control.DropDown
        DSCMapDropDownLabel             matlab.ui.control.Label
        ComparemapsButton               matlab.ui.control.Button
        SelectASLDropDown               matlab.ui.control.DropDown
        SelectASLexperimenttocompareLabel  matlab.ui.control.Label
        SelectvolumetricdataDropDown    matlab.ui.control.DropDown
        SelectDSCvolumetricdataformapcalculationLabel  matlab.ui.control.Label
        ASLMapLabel                     matlab.ui.control.Label
        SliceSpinner_ASL                matlab.ui.control.Spinner
        SliceSpinner_ASLLabel           matlab.ui.control.Label
        SliceSpinner_DSCMaps            matlab.ui.control.Spinner
        SliceSpinner_DSCMapsLabel       matlab.ui.control.Label
        CalculateDSCmapsButton          matlab.ui.control.Button
        UIAxes_ASL                      matlab.ui.control.UIAxes
        UIAxes_DSCMaps                  matlab.ui.control.UIAxes
        RegistrationTab                 matlab.ui.container.Tab
        SliceSpinner_Parameter          matlab.ui.control.Spinner
        SliceSpinner_ParameterLabel     matlab.ui.control.Label
        SelectparameterDropDown         matlab.ui.control.DropDown
        SelectparameterLabel            matlab.ui.control.Label
        UsedifferentparametermapCheckBox  matlab.ui.control.CheckBox
        SliceSpinner_Moving             matlab.ui.control.Spinner
        SliceSpinner_MovingLabel        matlab.ui.control.Label
        SliceSpinner_Fixed              matlab.ui.control.Spinner
        SliceSpinner_FixedLabel         matlab.ui.control.Label
        RegisterButton                  matlab.ui.control.Button
        SelectmovingDropDown            matlab.ui.control.DropDown
        SelectmovingLabel               matlab.ui.control.Label
        SelectfixedDropDown             matlab.ui.control.DropDown
        SelectfixedLabel                matlab.ui.control.Label
        UIAxes_Registration             matlab.ui.control.UIAxes
    end

    
    properties (Access = private)
        
        % Loading and preview tab properties
        LoadCounter = 1
        StudyPath % Filepath of selected study directory
        SequencePropertyTable % Table of loaded sequence properties
        PreviewSequenceImageData % Image matrix of preview sequence
        
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
        
        % DSC/ASL tab
        DropDownItemsDSC = {'None'}; % DSC tab drop down placeholder
        WorkMaskDSC % Working mask of currently displayed DSC sequence
        MTTData % MTT data of currently displayed DSC sequence
        CBFData % CBF data of currently displayed DSC sequence
        CBVData % CBV data of currently displayed DSC sequence
        CBVLCData % CBV_LC data of currently displayed DSC sequence
        DSCImage % Property for storing imshow of currently displayed DSC image without mask overlay
        WorkMaskASL % Working mask of currently displayed ASL sequence
        ImageDataASL % Image data of currently displayed ASL sequence
        ASLImage % Property for storing imshow of currently displayed ASL image without mask overlay
        ROICounter = 1 % Comparation ROI counter used for nomenclature and storage
        SavedROI % Table for Comparation ROI storage
    end
    

    % Callbacks that handle component events
    methods (Access = private)

        % Button pushed function: BrowseButton
        function BrowseButtonPushed(app, event)
            
            addBrukerPaths;
            
            % Select study directory and update the edit field text
            app.StudyPath = uigetdir; 
            app.StudyfolderEditField.Value = app.StudyPath; 
            figure(app.UIFigure)
        end

        % Button pushed function: UpdateButton
        function UpdateButtonPushed(app, event)

            progress = uiprogressdlg(app.UIFigure,'Title','Please wait',...
                'Indeterminate','on', 'Message', 'Loading data');
            drawnow
           
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
                    % Create image object
                    imageObj = ImageDataObject(seq_Path_temp);
                    attempt_AcqProt = [num2str(i), ' -> ', imageObj.Visu.VisuAcquisitionProtocol];
                    % Store properties into respective arrays
                    try
                        attempt_voxelDims = imageObj.Visu.VisuCoreExtent./imageObj.Visu.VisuCoreSize;
                        try
                            imageObj.Visu.VisuAcqEchoTime < imageObj.Visu.VisuAcqRepetitionTime;
                            voxel_Dims = cat(1, voxel_Dims, imageObj.Visu.VisuCoreExtent./imageObj.Visu.VisuCoreSize);
                            visu_AcqProt = cat(1, visu_AcqProt, append(num2str(i), '. ', imageObj.Visu.VisuAcquisitionProtocol));
                            seq_Num = cat(1, seq_Num, i);
                            seq_Path = cat(1, seq_Path, seq_Path_temp);
                            seq_ImageData = cat(1, seq_ImageData, {squeeze(imageObj.data)});
                            TE_time = cat(1, TE_time, imageObj.Visu.VisuAcqEchoTime*10^-3);
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

            % Construct sequence property table
            exp_ID = visu_AcqProt;
            variable_Names = ["Experiment ID", "Image data", "Experiment number", "TE", "TR", "Voxel dimensions", "Path"];
            app.SequencePropertyTable = table(exp_ID, seq_ImageData, seq_Num, TE_time, TR_time, voxel_Dims, seq_Path, 'RowNames', visu_AcqProt, 'VariableNames', variable_Names);
            app.UITable.Data=app.SequencePropertyTable;
            app.UITable.ColumnName = variable_Names;
            
            % Update drop down items
            app.PreviewDropDown.Items = visu_AcqProt;
            app.SelectsequencetosegmentDropDown.Items = visu_AcqProt;
            
            % close the dialog box
            close(progress)
        end

        % Button pushed function: LoadsingleButton
        function LoadsingleButtonPushed(app, event)
            
            % Get filepath of single experiment image data, create image
            % object and get properties
            single_Path = uigetdir;
            figure(app.UIFigure)
            imageObj = ImageDataObject(single_Path);
            
            progress = uiprogressdlg(app.UIFigure,'Title','Please wait',...
                'Indeterminate','on', 'Message', 'Loading data');
            drawnow
            
            try
                imageObj.Visu.VisuAcqEchoTime < imageObj.Visu.VisuAcqRepetitionTime;
                TE_time = imageObj.Visu.VisuAcqEchoTime*10^-3;
                TR_time = imageObj.Visu.VisuAcqRepetitionTime*10^-3;
            catch
                TE_time = 0;
                TR_time = 0;
            end
            try
                visu_AcqProt = {append('Manual load ', num2str(app.LoadCounter), '. ', imageObj.Visu.VisuAcquisitionProtocol)};
            catch 
                visu_AcqProt = {['Unnamed_manual_seq ', num2str(app.LoadCounter)]};
            end      
            try
                voxel_Dims = imageObj.Visu.VisuCoreExtent./imageObj.Visu.VisuCoreSize;
            catch 
                voxel_Dims = [0 0];
            end
            
            % Update load counter used for naming
            seq_Num = app.LoadCounter;
            app.LoadCounter = app.LoadCounter+1;
            seq_Path = convertCharsToStrings(single_Path);
            seq_ImageData = {squeeze(imageObj.data)};
            
            % Construct temporary sequence property table and combine with
            % main
            exp_ID = visu_AcqProt;
            variable_Names = ["Experiment ID", "Image data", "Experiment number", "TE", "TR", "Voxel dimensions", "Path"];
            temp_Table = table(exp_ID, seq_ImageData, seq_Num, TE_time, TR_time, voxel_Dims, seq_Path, 'RowNames', visu_AcqProt, 'VariableNames', variable_Names);
            app.SequencePropertyTable = [app.SequencePropertyTable; temp_Table];
            app.UITable.Data=app.SequencePropertyTable;
            app.UITable.ColumnName = variable_Names;
            
            % Update drop down items
            app.PreviewDropDown.Items = table2array(app.SequencePropertyTable(:,"Experiment ID"));
            app.SelectsequencetosegmentDropDown.Items = table2array(app.SequencePropertyTable(:,"Experiment ID"));
            
            % close the dialog box
            close(progress)
        end

        % Value changed function: PreviewDropDown
        function PreviewDropDownValueChanged(app, event)
            value = app.PreviewDropDown.Value;  
            
            % Get selected sequence image data
            app.PreviewSequenceImageData = cell2mat(table2array(app.SequencePropertyTable({value}, "Image data")));
            
            % Get data dimension sizes, set slider limits
            sequence_dims = size(app.PreviewSequenceImageData);
            dim3_size = sequence_dims(3);
            app.SliceSpinnerPreview.Limits = [1, dim3_size];
            
            if numel(sequence_dims) == 4
                dim4_size = sequence_dims(4);
                app.Dim4SliderPreview.Enable = 'on';
                app.Dim5SliderPreview.Enable = 'off';
                app.Dim4SliderPreview.Limits = [1, dim4_size];
                
                app.Dim5SliderPreview.Value = 1;
                app.Dim4SliderPreview.Value = 1;
            elseif numel(sequence_dims) == 5
                dim4_size = sequence_dims(4);
                app.Dim4SliderPreview.Enable = 'on';
                app.Dim4SliderPreview.Limits = [1, dim4_size];
                dim5_size = sequence_dims(5);
                app.Dim5SliderPreview.Enable = 'on';
                app.Dim5SliderPreview.Limits = [1, dim5_size];
                
                app.Dim4SliderPreview.Value = 1;
                app.Dim5SliderPreview.Value = 1;
            elseif numel(sequence_dims) == 3
                app.Dim4SliderPreview.Enable = 'off';
                app.Dim5SliderPreview.Enable = 'off';
                
                app.Dim4SliderPreview.Value = 1;
                app.Dim5SliderPreview.Value = 1;
            end
            
            % Display sequence, update slice spinner
            imshow(app.PreviewSequenceImageData(:,:,1), [], 'Parent', app.UIAxesPreview);
            disableDefaultInteractivity(app.UIAxes_Segmenter)
            app.SliceSpinnerPreview.Value = 1;
            
            % Set interactions of preview uiaxes
            app.UIAxesPreview.Interactions = [];
        end

        % Value changed function: SliceSpinnerPreview
        function SliceSpinnerPreviewValueChanged(app, event)
            
            % Get current slice image, show image
            sequence_dims = size(app.PreviewSequenceImageData);
            if numel(sequence_dims) == 3
                current_slice = app.PreviewSequenceImageData(:,:,app.SliceSpinnerPreview.Value);
            elseif numel(sequence_dims) == 4
                current_slice = app.PreviewSequenceImageData(:,:,app.SliceSpinnerPreview.Value, app.Dim4SliderPreview.Value);
            elseif numel(sequence_dims) == 5
                current_slice = app.PreviewSequenceImageData(:,:,app.SliceSpinnerPreview.Value, app.Dim4SliderPreview.Value, app.Dim5SliderPreview.Value);
            end
            imshow(current_slice, [], 'Parent', app.UIAxesPreview);
        end

        % Value changing function: Dim4SliderPreview
        function Dim4SliderPreviewValueChanging(app, event)
            changingValue = round(event.Value);
            
            % Get current slice image in dim4 value, show image
            sequence_dims = size(app.PreviewSequenceImageData);
            if numel(sequence_dims) == 4
                current_slice = app.PreviewSequenceImageData(:,:,app.SliceSpinnerPreview.Value, changingValue);
            elseif numel(sequence_dims) == 5
                current_slice = app.PreviewSequenceImageData(:,:,app.SliceSpinnerPreview.Value, changingValue, app.Dim5SliderPreview.Value);
            end
            imshow(current_slice, [], 'Parent', app.UIAxesPreview);
        end

        % Value changing function: Dim5SliderPreview
        function Dim5SliderPreviewValueChanging(app, event)
            changingValue = round(event.Value);
            
            % Get current slice image in dim5 value, show image
            current_slice = app.PreviewSequenceImageData(:,:,app.SliceSpinnerPreview.Value, app.Dim4SliderPreview.Value, changingValue);
            imshow(current_slice, [], 'Parent', app.UIAxesPreview);
        end

        % Button pushed function: RotateButtonPreview
        function RotateButtonPreviewPushed(app, event)
            app.PreviewSequenceImageData = rot90(app.PreviewSequenceImageData, -1);
            
            sequence_dims = size(app.PreviewSequenceImageData);
            if numel(sequence_dims) == 3
                current_slice = app.PreviewSequenceImageData(:,:,app.SliceSpinnerPreview.Value);
            elseif numel(sequence_dims) == 4
                current_slice = app.PreviewSequenceImageData(:,:,app.SliceSpinnerPreview.Value, app.Dim4SliderPreview.Value);
            elseif numel(sequence_dims) == 5
                current_slice = app.PreviewSequenceImageData(:,:,app.SliceSpinnerPreview.Value, app.Dim4SliderPreview.Value, app.Dim5SliderPreview.Value);
            end
            imshow(current_slice, [], 'Parent', app.UIAxesPreview);
        end

        % Value changed function: SelectsequencetosegmentDropDown
        function SelectsequencetosegmentDropDownValueChanged(app, event)
            value = app.SelectsequencetosegmentDropDown.Value;
            
            % Get selected sequence image data
            app.OriginalImage = cell2mat(table2array(app.SequencePropertyTable({value}, "Image data")));
            
            
            % Get data dimension sizes, set slice and spinner limits/values
            app.SeqDimsSegmenter = size(app.OriginalImage);
            dim3_size = app.SeqDimsSegmenter(3);
            
            if numel(app.SeqDimsSegmenter) == 4
                dim4_size = app.SeqDimsSegmenter(4);
                app.Dim4Spinner_Segmenter.Enable = 'on';
                app.Dim5Spinner_Segmenter.Enable = 'off';
                app.Dim4Spinner_Segmenter.Limits = [1, dim4_size];
                app.Dim5Spinner_Segmenter.Value = 1;
            elseif numel(app.SeqDimsSegmenter) == 5
                dim4_size = app.SeqDimsSegmenter(4);
                app.Dim4Spinner_Segmenter.Enable = 'on';
                app.Dim4Spinner_Segmenter.Limits = [1, dim4_size];
                dim5_size = app.SeqDimsSegmenter(5);
                app.Dim5Spinner_Segmenter.Enable = 'on';
                app.Dim5Spinner_Segmenter.Limits = [1, dim5_size];
            elseif numel(app.SeqDimsSegmenter) == 3
                app.Dim4Spinner_Segmenter.Enable = 'off';
                app.Dim5Spinner_Segmenter.Enable = 'off';
                app.Dim4Spinner_Segmenter.Value = 1;
                app.Dim5Spinner_Segmenter.Value = 1;
            end
               
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
            if numel(app.SeqDimsSegmenter) == 3
                current_slice = app.OriginalImage(:,:,app.SliceSpinner_Segmenter.Value);
            elseif numel(app.SeqDimsSegmenter) == 4
                current_slice = app.OriginalImage(:,:,app.SliceSpinner_Segmenter.Value, app.Dim4Spinner_Segmenter.Value);
            elseif numel(app.SeqDimsSegmenter) == 5
                current_slice = app.OriginalImage(:,:,app.SliceSpinner_Segmenter.Value, app.Dim4Spinner_Segmenter.Value, app.Dim5Spinner_Segmenter.Value);
            end
            
            app.SliceLimits = [min(current_slice, [], 'all'), max(current_slice, [], 'all')];
            app.FreeImage = imshow(current_slice, [], 'Parent', app.UIAxes_Segmenter);
            
            % Reset zoom
            app.UIAxes_Segmenter.XLim = [-inf inf];
            app.UIAxes_Segmenter.YLim = [-inf inf];
            
            app.ImageshownSwitch.Enable = 'off'; % Turn off image shown switch
            app.ImageshownSwitch.Value = "Overlay"; % Set image shown value to overlay
            app.AutoClusterButton.Enable = 'off'; % TUrn off auto cluster button
        end

        % Value changed function: Dim4Spinner_Segmenter
        function Dim4Spinner_SegmenterValueChanged(app, event)
            
            % Get current slice image in dim4 value, set intensity limits, show image
            if numel(app.SeqDimsSegmenter) == 4
                current_slice = app.OriginalImage(:,:,app.SliceSpinner_Segmenter.Value, app.Dim4Spinner_Segmenter.Value);
            elseif numel(app.SeqDimsSegmenter) == 5
                current_slice = app.OriginalImage(:,:,app.SliceSpinner_Segmenter.Value, app.Dim4Spinner_Segmenter.Value, app.Dim5Spinner_Segmenter.Value);
            end
            app.SliceLimits = [min(current_slice, [], 'all'), max(current_slice, [], 'all')];
            app.FreeImage = imshow(current_slice, [], 'Parent', app.UIAxes_Segmenter);
            
            % Reset zoom
            app.UIAxes_Segmenter.XLim = [-inf inf];
            app.UIAxes_Segmenter.YLim = [-inf inf];
            
            app.ImageshownSwitch.Enable = 'off'; % Turn off image shown switch
            app.ImageshownSwitch.Value = "Overlay"; % Set image shown value to overlay
            app.AutoClusterButton.Enable = 'off'; % TUrn off auto cluster button
        end

        % Value changed function: Dim5Spinner_Segmenter
        function Dim5Spinner_SegmenterValueChanged(app, event)
            
            % Get current slice image in dim4 and dim5 value, set intensity limits, show image
            current_slice = app.OriginalImage(:,:,app.SliceSpinner_Segmenter.Value, app.Dim4Spinner_Segmenter.Value, app.Dim5Spinner_Segmenter.Value);
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

        % Button pushed function: ResetViewButton_Segmenter
        function ResetviewButton_Segmenter_Pushed(app, event)
           
            % Reset zoom
            app.UIAxes_Segmenter.XLim = [-inf inf];
            app.UIAxes_Segmenter.YLim = [-inf inf];
        end

        % Button pushed function: InitialselectionButton
        function InitialselectionButtonPushed(app, event)
            
            % Show current slice, draw initial ROI, create mask and masked
            % image, create mask greenscreen
            if numel(app.SeqDimsSegmenter) == 3
                app.FreeImage = imshow(app.OriginalImage(:,:,app.SliceSpinner_Segmenter.Value), [], 'Parent', app.UIAxes_Segmenter);
            elseif numel(app.SeqDimsSegmenter) == 4
                app.FreeImage = imshow(app.OriginalImage(:,:,app.SliceSpinner_Segmenter.Value, app.Dim4Spinner_Segmenter.Value), [], 'Parent', app.UIAxes_Segmenter);
            elseif numel(app.SeqDimsSegmenter) == 5
                app.FreeImage = imshow(app.OriginalImage(:,:,app.SliceSpinner_Segmenter.Value, app.Dim4Spinner_Segmenter.Value, app.Dim5Spinner_Segmenter.Value), [], 'Parent', app.UIAxes_Segmenter);
            end
            
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
            if numel(app.SeqDimsSegmenter) == 3
                app.FreeImage = imshow(app.OriginalImage(:,:,app.SliceSpinner_Segmenter.Value), [], 'Parent', app.UIAxes_Segmenter);
            elseif numel(app.SeqDimsSegmenter) == 4
                app.FreeImage = imshow(app.OriginalImage(:,:,app.SliceSpinner_Segmenter.Value, app.Dim4Spinner_Segmenter.Value), [], 'Parent', app.UIAxes_Segmenter);
            elseif numel(app.SeqDimsSegmenter) == 5
                app.FreeImage = imshow(app.OriginalImage(:,:,app.SliceSpinner_Segmenter.Value, app.Dim4Spinner_Segmenter.Value, app.Dim5Spinner_Segmenter.Value), [], 'Parent', app.UIAxes_Segmenter);
            end
            
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
            if numel(app.SeqDimsSegmenter) == 3
                app.FreeImage = imshow(app.OriginalImage(:,:,app.SliceSpinner_Segmenter.Value), [], 'Parent', app.UIAxes_Segmenter);
            elseif numel(app.SeqDimsSegmenter) == 4
                app.FreeImage = imshow(app.OriginalImage(:,:,app.SliceSpinner_Segmenter.Value, app.Dim4Spinner_Segmenter.Value), [], 'Parent', app.UIAxes_Segmenter);
            elseif numel(app.SeqDimsSegmenter) == 5
                app.FreeImage = imshow(app.OriginalImage(:,:,app.SliceSpinner_Segmenter.Value, app.Dim4Spinner_Segmenter.Value, app.Dim5Spinner_Segmenter.Value), [], 'Parent', app.UIAxes_Segmenter);
            end
            
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
            if numel(app.SeqDimsSegmenter) == 3
                app.FreeImage = imshow(app.OriginalImage(:,:,app.SliceSpinner_Segmenter.Value), [], 'Parent', app.UIAxes_Segmenter);
            elseif numel(app.SeqDimsSegmenter) == 4
                app.FreeImage = imshow(app.OriginalImage(:,:,app.SliceSpinner_Segmenter.Value, app.Dim4Spinner_Segmenter.Value), [], 'Parent', app.UIAxes_Segmenter);
            elseif numel(app.SeqDimsSegmenter) == 5
                app.FreeImage = imshow(app.OriginalImage(:,:,app.SliceSpinner_Segmenter.Value, app.Dim4Spinner_Segmenter.Value, app.Dim5Spinner_Segmenter.Value), [], 'Parent', app.UIAxes_Segmenter);
            end
            
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
                
                if numel(app.SeqDimsSegmenter) == 3
                    app.FreeImage = imshow(app.OriginalImage(:,:,app.SliceSpinner_Segmenter.Value), [], 'Parent', app.UIAxes_Segmenter);
                elseif numel(app.SeqDimsSegmenter) == 4
                    app.FreeImage = imshow(app.OriginalImage(:,:,app.SliceSpinner_Segmenter.Value, app.Dim4Spinner_Segmenter.Value), [], 'Parent', app.UIAxes_Segmenter);
                elseif numel(app.SeqDimsSegmenter) == 5
                    app.FreeImage = imshow(app.OriginalImage(:,:,app.SliceSpinner_Segmenter.Value, app.Dim4Spinner_Segmenter.Value, app.Dim5Spinner_Segmenter.Value), [], 'Parent', app.UIAxes_Segmenter);
                end
                
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
                
                if numel(app.SeqDimsSegmenter) == 3
                    app.FreeImage = imshow(app.OriginalImage(:,:,app.SliceSpinner_Segmenter.Value), [], 'Parent', app.UIAxes_Segmenter);
                elseif numel(app.SeqDimsSegmenter) == 4
                    app.FreeImage = imshow(app.OriginalImage(:,:,app.SliceSpinner_Segmenter.Value, app.Dim4Spinner_Segmenter.Value), [], 'Parent', app.UIAxes_Segmenter);
                elseif numel(app.SeqDimsSegmenter) == 5
                    app.FreeImage = imshow(app.OriginalImage(:,:,app.SliceSpinner_Segmenter.Value, app.Dim4Spinner_Segmenter.Value, app.Dim5Spinner_Segmenter.Value), [], 'Parent', app.UIAxes_Segmenter);
                end
                
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
                
                if numel(app.SeqDimsSegmenter) == 3
                    app.FreeImage = imshow(app.OriginalImage(:,:,app.SliceSpinner_Segmenter.Value), [], 'Parent', app.UIAxes_Segmenter);
                elseif numel(app.SeqDimsSegmenter) == 4
                    app.FreeImage = imshow(app.OriginalImage(:,:,app.SliceSpinner_Segmenter.Value, app.Dim4Spinner_Segmenter.Value), [], 'Parent', app.UIAxes_Segmenter);
                elseif numel(app.SeqDimsSegmenter) == 5
                    app.FreeImage = imshow(app.OriginalImage(:,:,app.SliceSpinner_Segmenter.Value, app.Dim4Spinner_Segmenter.Value, app.Dim5Spinner_Segmenter.Value), [], 'Parent', app.UIAxes_Segmenter);
                end
                
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

                if numel(app.SeqDimsSegmenter) == 3
                    app.FreeImage = imshow(app.OriginalImage(:,:,app.SliceSpinner_Segmenter.Value), [], 'Parent', app.UIAxes_Segmenter);
                elseif numel(app.SeqDimsSegmenter) == 4
                    app.FreeImage = imshow(app.OriginalImage(:,:,app.SliceSpinner_Segmenter.Value, app.Dim4Spinner_Segmenter.Value), [], 'Parent', app.UIAxes_Segmenter);
                elseif numel(app.SeqDimsSegmenter) == 5
                    app.FreeImage = imshow(app.OriginalImage(:,:,app.SliceSpinner_Segmenter.Value, app.Dim4Spinner_Segmenter.Value, app.Dim5Spinner_Segmenter.Value), [], 'Parent', app.UIAxes_Segmenter);
                end
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
                if numel(app.SeqDimsSegmenter) == 3
                    app.FreeImage = imshow(app.OriginalImage(:,:,app.SliceSpinner_Segmenter.Value), [], 'Parent', app.UIAxes_Segmenter);
                elseif numel(app.SeqDimsSegmenter) == 4
                    app.FreeImage = imshow(app.OriginalImage(:,:,app.SliceSpinner_Segmenter.Value, app.Dim4Spinner_Segmenter.Value), [], 'Parent', app.UIAxes_Segmenter);
                elseif numel(app.SeqDimsSegmenter) == 5
                    app.FreeImage = imshow(app.OriginalImage(:,:,app.SliceSpinner_Segmenter.Value, app.Dim4Spinner_Segmenter.Value, app.Dim5Spinner_Segmenter.Value), [], 'Parent', app.UIAxes_Segmenter);
                end
                hold(app.UIAxes_Segmenter, "on")
                mask_Overlay = imshow(app.GreenScreen, "Parent",app.UIAxes_Segmenter);
                hold(app.UIAxes_Segmenter, "off")
                mask_Overlay.AlphaData = app.Mask-0.9;
            else
                app.MaskedImage = app.Mask.*app.OriginalImage(:,:,app.SliceSpinner_Segmenter.Value);
                app.FreeImage = imshow(app.MaskedImage, 'DisplayRange', app.SliceLimits, 'Parent', app.UIAxes_Segmenter);
            end
        end

        % Button pushed function: MainselectionButton_Hemisphere
        function MainselectionButton_HemispherePushed(app, event)
            
            % Update and load masked slice image;
            if numel(app.SeqDimsSegmenter) == 3
                app.MaskedImage = app.Mask.*app.OriginalImage(:,:,app.SliceSpinner_Segmenter.Value);
            elseif numel(app.SeqDimsSegmenter) == 4
                app.MaskedImage = app.Mask.*app.OriginalImage(:,:,app.SliceSpinner_Segmenter.Value, app.Dim4Spinner_Segmenter.Value);
            elseif numel(app.SeqDimsSegmenter) == 5
                app.MaskedImage = app.Mask.*app.OriginalImage(:,:,app.SliceSpinner_Segmenter.Value, app.Dim4Spinner_Segmenter.Value, app.Dim5Spinner_Segmenter.Value);
            end
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

        % Button pushed function: MainselectionButton_Lesion
        function MainselectionButton_LesionPushed(app, event)
            
            % Update and load masked slice image
            if numel(app.SeqDimsSegmenter) == 3
                app.MaskedImage = app.Mask.*app.OriginalImage(:,:,app.SliceSpinner_Segmenter.Value);
            elseif numel(app.SeqDimsSegmenter) == 4
                app.MaskedImage = app.Mask.*app.OriginalImage(:,:,app.SliceSpinner_Segmenter.Value, app.Dim4Spinner_Segmenter.Value);
            elseif numel(app.SeqDimsSegmenter) == 5
                app.MaskedImage = app.Mask.*app.OriginalImage(:,:,app.SliceSpinner_Segmenter.Value, app.Dim4Spinner_Segmenter.Value, app.Dim5Spinner_Segmenter.Value);
            end
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

        % Button pushed function: SavesequenceButton
        function SavesequenceButtonPushed(app, event)
            
            % Move temporarily saved data to permanent app table
            temp_Table = table({app.SavedImageSegmenter}, {app.SavedMaskSegmenter}, 'RowNames', {app.SelectsequencetosegmentDropDown.Value}, 'VariableNames', {'Image' 'Mask'});
            app.SavedTableSegmenter = [app.SavedTableSegmenter; temp_Table];
            
            % Update DSC and Registration tab drop down menus
            app.DropDownItemsDSC = cat(1, app.DropDownItemsDSC, {app.SelectsequencetosegmentDropDown.Value});
            app.SelectvolumetricdataDropDown.Items = app.DropDownItemsDSC;
            app.SelectASLDropDown.Items = app.DropDownItemsDSC;
            app.SelectfixedDropDown.Items = app.DropDownItemsDSC;
            app.SelectmovingDropDown.Items = app.DropDownItemsDSC;
            app.SelectparameterDropDown.Items = app.DropDownItemsDSC;
            
            % Update last action label
            app.ActionLabel.Text = "Segmented sequence saved to permanent data.";
        end

        % Button pushed function: ExportsequenceButton
        function ExportsequenceButtonPushed(app, event)
            
            % Get directory and export image and mask data in NIfTI format
            temp_dir = uigetdir;
            temp_dir = append(temp_dir, '\');
            niftiwrite(app.SavedImageSegmenter, append(temp_dir, 'Image'))
            niftiwrite(app.SavedMaskSegmenter, append(temp_dir, 'Mask'))
            
            % Update last action label
            app.ActionLabel.Text = "Segmented sequence mask and image data exported in NIfTI format.";
        end

        % Button pushed function: SegmentusingexternalmaskButton
        function SegmentusingexternalmaskButtonPushed(app, event)
            
            % Get external mask data
            temp_dir = uigetfile;
            figure(app.UIFigure)
            temp_Mask = niftiread(temp_dir);
            app.SavedMaskSegmenter = temp_Mask;
            
            % Upade saved image data with segmented data using loaded
            % external mask
            num_dims = size(app.SeqDimsSegmenter);
            if num_dims(2) == 4
                for j=1:app.SeqDimsSegmenter(3)
                    for i=1:app.SeqDimsSegmenter(4)
                        app.SavedImageSegmenter(:,:,j,i) = temp_Mask(:,:,j).*app.OriginalImage(:,:,j,i);
                    end
                end
            elseif num_dims(2) == 3
                for i=1:app.SeqDimsSegmenter(3)
                    app.SavedImageSegmenter(:,:,i) = temp_Mask(:,:,i).*app.OriginalImage(:,:,i);
                end
            end
            uiconfirm(app.UIFigure, "Data segmented successfully using external mask.", "External Segmentation","Options",{'OK'},"DefaultOption",1, "Icon","success")
        end

        % Button pushed function: CalculateDSCmapsButton
        function CalculateDSCmapsButtonPushed(app, event)
            
            % Get custom options for DSC tolbox
            custom_options = DSC_mri_getOptions();
            custom_options.display = 1;
            custom_options.deconv.method = {'SVD';'cSVD';'oSVD'};
            
            % Get volumetric data and sequence parameters for map
            % calculation
            drop_Value = app.SelectvolumetricdataDropDown.Value; 
            TE = table2array(app.SequencePropertyTable({drop_Value}, "TE"));
            TR = table2array(app.SequencePropertyTable({drop_Value}, "TR"));            
            work_Data = cell2mat(table2array(app.SavedTableSegmenter({drop_Value}, "Image")));
            app.WorkMaskDSC = cell2mat(table2array(app.SavedTableSegmenter({drop_Value}, "Mask")));
            
            % Calculate and display DSC maps
            if numel(size(work_Data)) == 4   
                [cbv,cbf,mtt,cbv_lc,ttp,mask,aif,conc,s0]=DSC_mri_core(work_Data, TE, TR, custom_options);
                assignin('base',"mtt", mtt)
                assignin('base',"cbf", cbf)
                assignin('base',"cbv", cbv)
                
                app.MTTData = mtt; 
                app.MTTData.svd(isnan(app.MTTData.svd)) = 0;
                app.MTTData.svd(isnan(app.MTTData.csvd)) = 0;
                app.MTTData.svd(isnan(app.MTTData.osvd)) = 0;
                app.CBFData = cbf;
                app.CBVData = cbv;
                app.CBVLCData = cbv_lc;
                
                data_dims = size(app.CBFData.svd.map);
                app.SliceSpinner_DSCMaps.Limits = [1, data_dims(3)];              
                app.SliceSpinner_DSCMaps.Enable = 'On';
                app.SliceSpinner_DSCMaps.Value = 1;
    
                if app.DSCMapDropDown.Value == "CBF"
                    if app.SVDButton.Value == true
                        app.DSCImage = imshow(app.CBFData.svd.map(:,:,1), [], 'Parent', app.UIAxes_DSCMaps, Colormap = turbo);
                    elseif app.cSVDButton.Value == true
                        app.DSCImage = imshow(app.CBFData.csvd.map(:,:,1), [], 'Parent', app.UIAxes_DSCMaps, Colormap = turbo);
                    elseif app.oSVDButton.Value == true
                        app.DSCImage = imshow(app.CBFData.osvd.map(:,:,1), [], 'Parent', app.UIAxes_DSCMaps, Colormap = turbo);
                    end
                elseif app.DSCMapDropDown.Value == "CBV"
                    app.DSCImage = imshow(app.CBVData(:,:,1), [], 'Parent', app.UIAxes_DSCMaps, Colormap = turbo);
                elseif app.DSCMapDropDown.Value == "MTT"
                    if app.SVDButton.Value == true
                        app.DSCImage = imshow(app.MTTData.svd(:,:,1), [], 'Parent', app.UIAxes_DSCMaps, Colormap = turbo);
                    elseif app.cSVDButton.Value == true
                        app.DSCImage = imshow(app.MTTData.csvd(:,:,1), [], 'Parent', app.UIAxes_DSCMaps, Colormap = turbo);
                    elseif app.oSVDButton.Value == true
                        app.DSCImage = imshow(app.MTTData.osvd(:,:,1), [], 'Parent', app.UIAxes_DSCMaps, Colormap = turbo);
                    end 
                end
                app.DSCImage.AlphaData = app.WorkMaskDSC(:,:,1);
            else
                uialert(app.UIFigure, 'DSC map calculation not possible, data must be 4-dimensional.', 'Dimension error')
            end
            
            % Set interactions on UIAxes
            app.UIAxes_DSCMaps.Interactions = [regionZoomInteraction zoomInteraction];
            
            % Reset comparation data
            app.ComparationregionsListBox.Items = {};
            app.ComparationregionsListBox.Value = {};
            app.ROICounter = 1;
            app.SavedROI = table();
        end

        % Value changed function: DSCMapDropDown
        function DSCMapDropDownValueChanged(app, event)
            
            % Display chosen map image based on method selected
            if app.DSCMapDropDown.Value == "CBF"
                if app.SVDButton.Value == true
                    app.DSCImage = imshow(app.CBFData.svd.map(:,:,app.SliceSpinner_DSCMaps.Value), [], 'Parent', app.UIAxes_DSCMaps, Colormap = turbo);
                elseif app.cSVDButton.Value == true
                    app.DSCImage = imshow(app.CBFData.csvd.map(:,:,app.SliceSpinner_DSCMaps.Value), [], 'Parent', app.UIAxes_DSCMaps, Colormap = turbo);    
                elseif app.oSVDButton.Value == true
                    app.DSCImage = imshow(app.CBFData.osvd.map(:,:,app.SliceSpinner_DSCMaps.Value), [], 'Parent', app.UIAxes_DSCMaps, Colormap = turbo);
                end
            elseif app.DSCMapDropDown.Value == "CBV"
                app.DSCImage = imshow(app.CBVData(:,:,app.SliceSpinner_DSCMaps.Value), [], 'Parent', app.UIAxes_DSCMaps, Colormap = turbo);
            elseif app.DSCMapDropDown.Value == "MTT"
                if app.SVDButton.Value == true
                    app.DSCImage = imshow(app.MTTData.svd(:,:,app.SliceSpinner_DSCMaps.Value), [], 'Parent', app.UIAxes_DSCMaps, Colormap = turbo);
                elseif app.cSVDButton.Value == true
                    app.DSCImage = imshow(app.MTTData.csvd(:,:,app.SliceSpinner_DSCMaps.Value), [], 'Parent', app.UIAxes_DSCMaps, Colormap = turbo);       
                elseif app.oSVDButton.Value == true
                    app.DSCImage = imshow(app.MTTData.osvd(:,:,app.SliceSpinner_DSCMaps.Value), [], 'Parent', app.UIAxes_DSCMaps, Colormap = turbo);   
                end
            end
            app.DSCImage.AlphaData = app.WorkMaskDSC(:,:,app.SliceSpinner_DSCMaps.Value);
            
            % Reset zoom and comparation data
            app.UIAxes_DSCMaps.XLim = [-inf inf];
            app.UIAxes_DSCMaps.YLim = [-inf inf];
            app.ComparationregionsListBox.Value = {};
        end

        % Value changed function: SliceSpinner_DSCMaps
        function SliceSpinner_DSCMapsValueChanged(app, event)
            
            % Display chosen map image based on method selected and spinner
            % Value
            if app.DSCMapDropDown.Value == "CBF"
                if app.SVDButton.Value == true
                    app.DSCImage = imshow(app.CBFData.svd.map(:,:,app.SliceSpinner_DSCMaps.Value), [], 'Parent', app.UIAxes_DSCMaps, Colormap = turbo);
                elseif app.cSVDButton.Value == true
                    app.DSCImage = imshow(app.CBFData.csvd.map(:,:,app.SliceSpinner_DSCMaps.Value), [], 'Parent', app.UIAxes_DSCMaps, Colormap = turbo);        
                elseif app.oSVDButton.Value == true
                    app.DSCImage = imshow(app.CBFData.osvd.map(:,:,app.SliceSpinner_DSCMaps.Value), [], 'Parent', app.UIAxes_DSCMaps, Colormap = turbo);    
                end
            elseif app.DSCMapDropDown.Value == "CBV"
                app.DSCImage = imshow(app.CBVData(:,:,app.SliceSpinner_DSCMaps.Value), [], 'Parent', app.UIAxes_DSCMaps, Colormap = turbo);
            elseif app.DSCMapDropDown.Value == "MTT"
                if app.SVDButton.Value == true
                    app.DSCImage = imshow(app.MTTData.svd(:,:,app.SliceSpinner_DSCMaps.Value), [], 'Parent', app.UIAxes_DSCMaps, Colormap = turbo);    
                elseif app.cSVDButton.Value == true
                    app.DSCImage = imshow(app.MTTData.csvd(:,:,app.SliceSpinner_DSCMaps.Value), [], 'Parent', app.UIAxes_DSCMaps, Colormap = turbo);        
                elseif app.oSVDButton.Value == true
                    app.DSCImage = imshow(app.MTTData.osvd(:,:,app.SliceSpinner_DSCMaps.Value), [], 'Parent', app.UIAxes_DSCMaps, Colormap = turbo);    
                end
            end
            app.DSCImage.AlphaData = app.WorkMaskDSC(:,:,app.SliceSpinner_DSCMaps.Value);
            
            % Reset zoom and comparation data
            app.UIAxes_DSCMaps.XLim = [-inf inf];
            app.UIAxes_DSCMaps.YLim = [-inf inf];
            app.ComparationregionsListBox.Value = {};
        end

        % Selection changed function: MethodButtonGroup
        function MethodButtonGroupSelectionChanged(app, event)
            
            % Display chosen map image based on method selected
            selectedButton = app.MethodButtonGroup.SelectedObject.Text;
            if selectedButton == "SVD"
                if app.DSCMapDropDown.Value == "CBF"
                    app.DSCImage = imshow(app.CBFData.svd.map(:,:,app.SliceSpinner_DSCMaps.Value), [], 'Parent', app.UIAxes_DSCMaps, Colormap = turbo);
                elseif app.DSCMapDropDown.Value == "CBV"
                    app.DSCImage = imshow(app.CBVData(:,:,app.SliceSpinner_DSCMaps.Value), [], 'Parent', app.UIAxes_DSCMaps, Colormap = turbo);
                elseif app.DSCMapDropDown.Value == "MTT"
                    app.DSCImage = imshow(app.MTTData.svd(:,:,app.SliceSpinner_DSCMaps.Value), [], 'Parent', app.UIAxes_DSCMaps, Colormap = turbo);   
                end
            elseif selectedButton == "cSVD"
                if app.DSCMapDropDown.Value == "CBF"
                    app.DSCImage = imshow(app.CBFData.csvd.map(:,:,app.SliceSpinner_DSCMaps.Value), [], 'Parent', app.UIAxes_DSCMaps, Colormap = turbo);
                elseif app.DSCMapDropDown.Value == "CBV"
                    app.DSCImage = imshow(app.CBVData(:,:,app.SliceSpinner_DSCMaps.Value), [], 'Parent', app.UIAxes_DSCMaps, Colormap = turbo);
                elseif app.DSCMapDropDown.Value == "MTT"
                    app.DSCImage = imshow(app.MTTData.csvd(:,:,app.SliceSpinner_DSCMaps.Value), [], 'Parent', app.UIAxes_DSCMaps, Colormap = turbo);   
                end
            elseif selectedButton == "oSVD"
                if app.DSCMapDropDown.Value == "CBF"
                    app.DSCImage = imshow(app.CBFData.osvd.map(:,:,app.SliceSpinner_DSCMaps.Value), [], 'Parent', app.UIAxes_DSCMaps, Colormap = turbo);
                elseif app.DSCMapDropDown.Value == "CBV"
                    app.DSCImage = imshow(app.CBVData(:,:,app.SliceSpinner_DSCMaps.Value), [], 'Parent', app.UIAxes_DSCMaps, Colormap = turbo);
                elseif app.DSCMapDropDown.Value == "MTT"
                    app.DSCImage = imshow(app.MTTData.osvd(:,:,app.SliceSpinner_DSCMaps.Value), [], 'Parent', app.UIAxes_DSCMaps, Colormap = turbo);   
                end
            end
            app.DSCImage.AlphaData = app.WorkMaskDSC(:,:,app.SliceSpinner_DSCMaps.Value);
            
            % Reset zoom
            app.UIAxes_DSCMaps.XLim = [-inf inf];
            app.UIAxes_DSCMaps.YLim = [-inf inf];
        end

        % Button pushed function: ROIpixelexclusionButton
        function ROIpixelexclusionButtonPushed(app, event)
            
            % Draw freehand ROI
            dscROI = drawfreehand(app.UIAxes_DSCMaps);
            dscROI_mask = dscROI.createMask();
            delete(dscROI)      
            
            % Get current slice image data, modify it using freehand ROI
            selectedButton = app.MethodButtonGroup.SelectedObject.Text;
            if selectedButton == "SVD"
                if app.DSCMapDropDown.Value == "CBF"
                    modified_slice_DSC = app.CBFData.svd.map(:,:,app.SliceSpinner_DSCMaps.Value);
                elseif app.DSCMapDropDown.Value == "CBV"
                    modified_slice_DSC = app.CBVData(:,:,app.SliceSpinner_DSCMaps.Value);
                elseif app.DSCMapDropDown.Value == "MTT"
                    modified_slice_DSC = app.MTTData.svd(:,:,app.SliceSpinner_DSCMaps.Value); 
                end
            elseif selectedButton == "cSVD"
                if app.DSCMapDropDown.Value == "CBF"
                    modified_slice_DSC = app.CBFData.csvd.map(:,:,app.SliceSpinner_DSCMaps.Value);
                elseif app.DSCMapDropDown.Value == "CBV"
                    modified_slice_DSC = app.CBVData(:,:,app.SliceSpinner_DSCMaps.Value);
                elseif app.DSCMapDropDown.Value == "MTT"
                    modified_slice_DSC = app.MTTData.csvd(:,:,app.SliceSpinner_DSCMaps.Value); 
                end
            elseif selectedButton == "oSVD"
                if app.DSCMapDropDown.Value == "CBF"
                    modified_slice_DSC = app.CBFData.osvd.map(:,:,app.SliceSpinner_DSCMaps.Value);
                elseif app.DSCMapDropDown.Value == "CBV"
                    modified_slice_DSC = app.CBVData(:,:,app.SliceSpinner_DSCMaps.Value);
                elseif app.DSCMapDropDown.Value == "MTT"
                    modified_slice_DSC = app.MTTData.osvd(:,:,app.SliceSpinner_DSCMaps.Value);
                end
            end
            
            modified_slice_DSC(dscROI_mask==1) = 0;
            
            % Display newly adjusted image with data from ROI set to 0
            if app.DSCMapDropDown.Value == "CBF"
                if app.SVDButton.Value == true
                    app.DSCImage = imshow(modified_slice_DSC, [], 'Parent', app.UIAxes_DSCMaps, Colormap = turbo);
                elseif app.cSVDButton.Value == true
                    app.DSCImage = imshow(modified_slice_DSC, [], 'Parent', app.UIAxes_DSCMaps, Colormap = turbo);        
                elseif app.oSVDButton.Value == true
                    app.DSCImage = imshow(modified_slice_DSC, [], 'Parent', app.UIAxes_DSCMaps, Colormap = turbo);    
                end
            elseif app.DSCMapDropDown.Value == "CBV"
                app.DSCImage = imshow(modified_slice_DSC, [], 'Parent', app.UIAxes_DSCMaps, Colormap = turbo);
            elseif app.DSCMapDropDown.Value == "MTT"
                if app.SVDButton.Value == true
                    app.DSCImage = imshow(modified_slice_DSC, [], 'Parent', app.UIAxes_DSCMaps, Colormap = turbo);    
                elseif app.cSVDButton.Value == true
                    app.DSCImage = imshow(modified_slice_DSC, [], 'Parent', app.UIAxes_DSCMaps, Colormap = turbo);        
                elseif app.oSVDButton.Value == true
                    app.DSCImage = imshow(modified_slice_DSC, [], 'Parent', app.UIAxes_DSCMaps, Colormap = turbo);    
                end
            end
            temp_alphaMask = app.WorkMaskDSC(:,:,app.SliceSpinner_DSCMaps.Value);
            temp_alphaMask(dscROI_mask) = 0;
            app.DSCImage.AlphaData = temp_alphaMask;
        end

        % Button pushed function: ExportDSCmapsButton
        function ExportDSCmapsButtonPushed(app, event)
            
            % Get directory and export calculated DSC maps
            temp_dir = uigetdir;
            temp_dir = append(temp_dir, '\');
            
            niftiwrite(app.CBFData.svd.map, append(temp_dir, 'CBF-SVD'))
            niftiwrite(app.CBFData.csvd.map, append(temp_dir, 'CBF-cSVD'))
            niftiwrite(app.CBFData.osvd.map, append(temp_dir, 'CBF-oSVD'))
            
            niftiwrite(app.MTTData.svd, append(temp_dir, 'MTT-SVD'))
            niftiwrite(app.MTTData.csvd, append(temp_dir, 'MTT-cSVD'))
            niftiwrite(app.MTTData.osvd, append(temp_dir, 'MTT-oSVD'))
            
            niftiwrite(app.CBVData, append(temp_dir, 'CBV'))
        end

        % Value changed function: SelectASLDropDown
        function SelectASLDropDownValueChanged(app, event)
            
            % Display chosen ASL map image from saved segmented data,
            % update slice spinner
            drop_Value = app.SelectASLDropDown.Value; 
            app.ImageDataASL = cell2mat(table2array(app.SavedTableSegmenter({drop_Value}, "Image")));
            app.WorkMaskASL = cell2mat(table2array(app.SavedTableSegmenter({drop_Value}, "Mask")));
            app.ASLImage = imshow(app.ImageDataASL(:,:,1), [], 'Parent', app.UIAxes_ASL, Colormap = turbo);
            app.ASLImage.AlphaData = app.WorkMaskASL(:,:,1);
        
            data_dims = size(app.ImageDataASL);
            app.SliceSpinner_ASL.Limits = [1, data_dims(3)];              
            app.SliceSpinner_ASL.Enable = 'On';
            app.SliceSpinner_ASL.Value = 1;
            
            % Set interactions on UIAxes
            app.UIAxes_ASL.Interactions = [regionZoomInteraction zoomInteraction];
            
            % Reset zoom
            app.UIAxes_ASL.XLim = [-inf inf];
            app.UIAxes_ASL.YLim = [-inf inf];
            
            % Reset comparation data
            app.ComparationregionsListBox.Items = {};
            app.ComparationregionsListBox.Value = {};
            app.ROICounter = 1;
            app.SavedROI = table();
        end

        % Value changed function: SliceSpinner_ASL
        function SliceSpinner_ASLValueChanged(app, event)
            
            % Display ASL slice based of spinner Value
            app.ASLImage = imshow(app.ImageDataASL(:,:,app.SliceSpinner_ASL.Value), [], 'Parent', app.UIAxes_ASL, Colormap = turbo);
            app.ASLImage.AlphaData = app.WorkMaskASL(:,:,app.SliceSpinner_ASL.Value);
            
            % Reset zoom
            app.UIAxes_ASL.XLim = [-inf inf];
            app.UIAxes_ASL.YLim = [-inf inf];
            app.ComparationregionsListBox.Value = {};
        end

        % Button pushed function: ExportASLmapButton
        function ExportASLmapButtonPushed(app, event)
            
            % Get directory and export segmented ASL map
            temp_dir = uigetdir;
            temp_dir = append(temp_dir, '\');
            niftiwrite(app.ImageDataASL, append(temp_dir, 'ASL'))
        end

        % Button pushed function: ComparemapsButton
        function ComparemapsButtonPushed(app, event)
            
            % Calculate 2D correlation coeff. for current DSC/ASL slices
            % for using only pixels with nonzero values
            selectedButton = app.MethodButtonGroup.SelectedObject.Text;
            if selectedButton == "SVD"
                slice_DSC = app.CBFData.svd.map(:,:,app.SliceSpinner_DSCMaps.Value);
            elseif selectedButton == "cSVD"
                slice_DSC = app.CBFData.csvd.map(:,:,app.SliceSpinner_DSCMaps.Value);
            elseif selectedButton == "oSVD"
                slice_DSC = app.CBFData.osvd.map(:,:,app.SliceSpinner_DSCMaps.Value);
            end     
            slice_ASL = app.ImageDataASL(:,:,app.SliceSpinner_ASL.Value);
            dims = size(slice_ASL);
            
            if (app.SliceSpinner_DSCMaps.Value == app.SliceSpinner_ASL.Value) & (size(slice_ASL) == size(slice_DSC))
                up = 0;
                d1 = 0;
                d2 = 0;
                meansize = size(nonzeros(slice_DSC));
                meanDSC = sum(nonzeros(slice_DSC))/meansize(1);
                meanASL = sum(nonzeros(slice_ASL))/meansize(1);
                for i=1:dims(1)
                    for j=1:dims(2)
                        if slice_DSC(i,j)~=0
                            up = up + (slice_DSC(i,j)-meanDSC)*(slice_ASL(i,j)-meanASL);
                            d1 = d1 + (slice_DSC(i,j)-meanDSC)^2;
                            d2 = d2 + (slice_ASL(i,j)-meanASL)^2;
                        end
                    end
                end
                
                out = up/sqrt(d1*d2);
                disp(out)
            else
                uialert(app.UIFigure, 'Map comparation not possible for different slices or data dimensions.', 'Comparation Error')
            end
        end

        % Button pushed function: DSCcomparationROIButton
        function DSCcomparationROIButtonPushed(app, event)
            
            % Draw polygon ROI, save it to table, update statistical values
            % for DSC/ASL ROI data
            selectedButton = app.MethodButtonGroup.SelectedObject.Text;
            if selectedButton == "SVD"
                slice_DSC = app.CBFData.svd.map(:,:,app.SliceSpinner_DSCMaps.Value);
            elseif selectedButton == "cSVD"
                slice_DSC = app.CBFData.csvd.map(:,:,app.SliceSpinner_DSCMaps.Value);
            elseif selectedButton == "oSVD"
                slice_DSC = app.CBFData.osvd.map(:,:,app.SliceSpinner_DSCMaps.Value);
            end     
            slice_ASL = app.ImageDataASL(:,:,app.SliceSpinner_ASL.Value);
            dims = size(slice_ASL);

            if (app.SliceSpinner_DSCMaps.Value == app.SliceSpinner_ASL.Value) & (size(slice_ASL) == size(slice_DSC))
                dscROI = drawpolygon(app.UIAxes_DSCMaps);
                ROI_mask = dscROI.createMask(app.DSCImage);
                delete(dscROI)
                
                ROIName = append("Region ", num2str(app.ROICounter), " - Slice ", num2str(app.SliceSpinner_DSCMaps.Value));
                app.ComparationregionsListBox.Items = cat(2, app.ComparationregionsListBox.Items, ROIName);
                app.ComparationregionsListBox.Value = ROIName;
                app.ROICounter = app.ROICounter+1;
                
                temp_Table = table(ROIName, {ROI_mask}, 'RowNames', ROIName, 'VariableNames', {'Name' 'Mask'});
                app.SavedROI = [app.SavedROI; temp_Table];
                
                %imshow(ROI_mask,[])
                
                up = 0;
                d1 = 0;
                d2 = 0;
                meansize = size(nonzeros(ROI_mask));
                meanDSC = sum(slice_DSC(ROI_mask==1))/meansize(1);
                meanASL = sum(slice_ASL(ROI_mask==1))/meansize(1);
                for i=1:dims(1)
                    for j=1:dims(2)
                        if ROI_mask(i,j)~=0
                            up = up + (slice_DSC(i,j)-meanDSC)*(slice_ASL(i,j)-meanASL);
                            d1 = d1 + (slice_DSC(i,j)-meanDSC)^2;
                            d2 = d2 + (slice_ASL(i,j)-meanASL)^2;
                        end
                    end
                end
                    
                out = up/sqrt(d1*d2);
                %disp(out)   
                
                % Update comparation value labels
                app.VoxelNValueLabel.Text = num2str(meansize(1));
                
                app.DSCMeanLabel.Text = num2str(meanDSC);
                app.DSCSDLabel.Text = num2str(std(slice_DSC(ROI_mask==1)));
                app.DSCMinLabel.Text = num2str(min(slice_DSC(ROI_mask==1)));
                app.DSCMaxLabel.Text = num2str(max(slice_DSC(ROI_mask==1)));
                
                app.ASLMeanLabel.Text = num2str(meanASL);
                app.ASLSDLabel.Text = num2str(std(slice_ASL(ROI_mask==1)));
                app.ASLMinLabel.Text = num2str(min(slice_ASL(ROI_mask==1)));
                app.ASLMaxLabel.Text = num2str(max(slice_ASL(ROI_mask==1)));
                
                % Display chosen map image based on method selected and spinner
                % Value, with drawn ROI overlaid as mask
                temp_RedScreen = cat(3, ones(dims(1:2)), zeros(dims(1:2)), zeros(dims(1:2)));
                
                if app.SVDButton.Value == true
                    app.DSCImage = imshow(app.CBFData.svd.map(:,:,app.SliceSpinner_DSCMaps.Value), [], 'Parent', app.UIAxes_DSCMaps, Colormap = turbo);
                    hold(app.UIAxes_DSCMaps, "on")
                    mask_Overlay = imshow(temp_RedScreen, "Parent",app.UIAxes_DSCMaps);
                    hold(app.UIAxes_DSCMaps, "off")
                    mask_Overlay.AlphaData = ROI_mask-0.6;
                elseif app.cSVDButton.Value == true
                    app.DSCImage = imshow(app.CBFData.csvd.map(:,:,app.SliceSpinner_DSCMaps.Value), [], 'Parent', app.UIAxes_DSCMaps, Colormap = turbo);
                    hold(app.UIAxes_DSCMaps, "on")
                    mask_Overlay = imshow(temp_RedScreen, "Parent",app.UIAxes_DSCMaps);
                    hold(app.UIAxes_DSCMaps, "off")
                    mask_Overlay.AlphaData = ROI_mask-0.6;
                elseif app.oSVDButton.Value == true
                    app.DSCImage = imshow(app.CBFData.osvd.map(:,:,app.SliceSpinner_DSCMaps.Value), [], 'Parent', app.UIAxes_DSCMaps, Colormap = turbo);
                    hold(app.UIAxes_DSCMaps, "on")
                    mask_Overlay = imshow(temp_RedScreen, "Parent",app.UIAxes_DSCMaps);
                    hold(app.UIAxes_DSCMaps, "off")
                    mask_Overlay.AlphaData = ROI_mask-0.6;
                end
                
                app.DSCImage.AlphaData = app.WorkMaskDSC(:,:,app.SliceSpinner_DSCMaps.Value);
                
                app.ASLImage = imshow(app.ImageDataASL(:,:,app.SliceSpinner_ASL.Value), [], 'Parent', app.UIAxes_ASL, Colormap = turbo);
                hold(app.UIAxes_ASL, "on")
                mask_Overlay = imshow(temp_RedScreen, "Parent",app.UIAxes_ASL);
                hold(app.UIAxes_ASL, "off")
                mask_Overlay.AlphaData = ROI_mask-0.6;
                app.ASLImage.AlphaData = app.WorkMaskASL(:,:,app.SliceSpinner_ASL.Value);  
                
            else
                uialert(app.UIFigure, 'Map comparation not possible for different slices or data dimensions.', 'Comparation Error')
            end
        end

        % Button pushed function: ASLcomparationROIButton
        function ASLcomparationROIButtonPushed(app, event)
            
            % Draw polygon ROI, save it to table, update statistical values
            % for DSC/ASL ROI data
            selectedButton = app.MethodButtonGroup.SelectedObject.Text;
            if selectedButton == "SVD"
                slice_DSC = app.CBFData.svd.map(:,:,app.SliceSpinner_DSCMaps.Value);
            elseif selectedButton == "cSVD"
                slice_DSC = app.CBFData.csvd.map(:,:,app.SliceSpinner_DSCMaps.Value);
            elseif selectedButton == "oSVD"
                slice_DSC = app.CBFData.osvd.map(:,:,app.SliceSpinner_DSCMaps.Value);
            end     
            slice_ASL = app.ImageDataASL(:,:,app.SliceSpinner_ASL.Value);
            dims = size(slice_ASL);
            
            if (app.SliceSpinner_DSCMaps.Value == app.SliceSpinner_ASL.Value) & (size(slice_ASL) == size(slice_DSC))
                aslROI = drawpolygon(app.UIAxes_ASL);
                ROI_mask = aslROI.createMask(app.ASLImage);
                delete(aslROI)
                
                ROIName = append("Region ", num2str(app.ROICounter), " - Slice ", num2str(app.SliceSpinner_DSCMaps.Value));
                app.ComparationregionsListBox.Items = cat(2, app.ComparationregionsListBox.Items, ROIName);
                app.ComparationregionsListBox.Value = ROIName;
                app.ROICounter = app.ROICounter+1;
                
                temp_Table = table(ROIName, {ROI_mask}, 'RowNames', ROIName, 'VariableNames', {'Name' 'Mask'});
                app.SavedROI = [app.SavedROI; temp_Table];
                
                %imshow(ROI_mask,[])
                
                up = 0;
                d1 = 0;
                d2 = 0;
                meansize = size(nonzeros(ROI_mask));
                meanDSC = sum(slice_DSC(ROI_mask==1))/meansize(1);
                meanASL = sum(slice_ASL(ROI_mask==1))/meansize(1);
                for i=1:dims(1)
                    for j=1:dims(2)
                        if ROI_mask(i,j)~=0
                            up = up + (slice_DSC(i,j)-meanDSC)*(slice_ASL(i,j)-meanASL);
                            d1 = d1 + (slice_DSC(i,j)-meanDSC)^2;
                            d2 = d2 + (slice_ASL(i,j)-meanASL)^2;
                        end
                    end
                end
                
                out = up/sqrt(d1*d2);
                %disp(out)
                
                % Update comparation value labels
                app.VoxelNValueLabel.Text = num2str(meansize(1));
                
                app.DSCMeanLabel.Text = num2str(meanDSC);
                app.DSCSDLabel.Text = num2str(std(slice_DSC(ROI_mask==1)));
                app.DSCMinLabel.Text = num2str(min(slice_DSC(ROI_mask==1)));
                app.DSCMaxLabel.Text = num2str(max(slice_DSC(ROI_mask==1)));
                
                app.ASLMeanLabel.Text = num2str(meanASL);
                app.ASLSDLabel.Text = num2str(std(slice_ASL(ROI_mask==1)));
                app.ASLMinLabel.Text = num2str(min(slice_ASL(ROI_mask==1)));
                app.ASLMaxLabel.Text = num2str(max(slice_ASL(ROI_mask==1)));
                
                % Display chosen map image based on method selected and spinner
                % Value, with drawn ROI overlaid as mask
                temp_RedScreen = cat(3, ones(dims(1:2)), zeros(dims(1:2)), zeros(dims(1:2)));
                
                if app.SVDButton.Value == true
                    app.DSCImage = imshow(app.CBFData.svd.map(:,:,app.SliceSpinner_DSCMaps.Value), [], 'Parent', app.UIAxes_DSCMaps, Colormap = turbo);
                    hold(app.UIAxes_DSCMaps, "on")
                    mask_Overlay = imshow(temp_RedScreen, "Parent",app.UIAxes_DSCMaps);
                    hold(app.UIAxes_DSCMaps, "off")
                    mask_Overlay.AlphaData = ROI_mask-0.6;
                elseif app.cSVDButton.Value == true
                    app.DSCImage = imshow(app.CBFData.csvd.map(:,:,app.SliceSpinner_DSCMaps.Value), [], 'Parent', app.UIAxes_DSCMaps, Colormap = turbo);
                    hold(app.UIAxes_DSCMaps, "on")
                    mask_Overlay = imshow(temp_RedScreen, "Parent",app.UIAxes_DSCMaps);
                    hold(app.UIAxes_DSCMaps, "off")
                    mask_Overlay.AlphaData = ROI_mask-0.6;
                elseif app.oSVDButton.Value == true
                    app.DSCImage = imshow(app.CBFData.osvd.map(:,:,app.SliceSpinner_DSCMaps.Value), [], 'Parent', app.UIAxes_DSCMaps, Colormap = turbo);
                    hold(app.UIAxes_DSCMaps, "on")
                    mask_Overlay = imshow(temp_RedScreen, "Parent",app.UIAxes_DSCMaps);
                    hold(app.UIAxes_DSCMaps, "off")
                    mask_Overlay.AlphaData = ROI_mask-0.6;
                end
                
                app.DSCImage.AlphaData = app.WorkMaskDSC(:,:,app.SliceSpinner_DSCMaps.Value);
                
                app.ASLImage = imshow(app.ImageDataASL(:,:,app.SliceSpinner_ASL.Value), [], 'Parent', app.UIAxes_ASL, Colormap = turbo);
                hold(app.UIAxes_ASL, "on")
                mask_Overlay = imshow(temp_RedScreen, "Parent",app.UIAxes_ASL);
                hold(app.UIAxes_ASL, "off")
                mask_Overlay.AlphaData = ROI_mask-0.6;
                app.ASLImage.AlphaData = app.WorkMaskASL(:,:,app.SliceSpinner_ASL.Value);  
            else
                uialert(app.UIFigure, 'Map comparation not possible for different slices or data dimensions.', 'Comparation Error')
            end
        end

        % Value changed function: ComparationregionsListBox
        function ComparationregionsListBoxValueChanged(app, event)
            
            % Display chosen ROI on DSC/ASL map images, update statistical
            % values
            value = app.ComparationregionsListBox.Value;
            % disp(value)
            
            selectedButton = app.MethodButtonGroup.SelectedObject.Text;
            if selectedButton == "SVD"
                slice_DSC = app.CBFData.svd.map(:,:,app.SliceSpinner_DSCMaps.Value);
            elseif selectedButton == "cSVD"
                slice_DSC = app.CBFData.csvd.map(:,:,app.SliceSpinner_DSCMaps.Value);
            elseif selectedButton == "oSVD"
                slice_DSC = app.CBFData.osvd.map(:,:,app.SliceSpinner_DSCMaps.Value);
            end     
            slice_ASL = app.ImageDataASL(:,:,app.SliceSpinner_ASL.Value);
            dims = size(slice_ASL);
              
            ROI_mask = cell2mat(table2array(app.SavedROI({value}, "Mask")));
            
            %imshow(ROI_mask,[])
            
            up = 0;
            d1 = 0;
            d2 = 0;
            meansize = size(nonzeros(ROI_mask));
            meanDSC = sum(slice_DSC(ROI_mask==1))/meansize(1);
            meanASL = sum(slice_ASL(ROI_mask==1))/meansize(1);
            for i=1:dims(1)
                for j=1:dims(2)
                    if ROI_mask(i,j)~=0
                        up = up + (slice_DSC(i,j)-meanDSC)*(slice_ASL(i,j)-meanASL);
                        d1 = d1 + (slice_DSC(i,j)-meanDSC)^2;
                        d2 = d2 + (slice_ASL(i,j)-meanASL)^2;
                    end
                end
            end
            
            out = up/sqrt(d1*d2);
            %disp(out)
            
            % Update comparation value labels
            app.VoxelNValueLabel.Text = num2str(meansize(1));
            
            app.DSCMeanLabel.Text = num2str(meanDSC);
            app.DSCSDLabel.Text = num2str(std(slice_DSC(ROI_mask==1)));
            app.DSCMinLabel.Text = num2str(min(slice_DSC(ROI_mask==1)));
            app.DSCMaxLabel.Text = num2str(max(slice_DSC(ROI_mask==1)));
            
            app.ASLMeanLabel.Text = num2str(meanASL);
            app.ASLSDLabel.Text = num2str(std(slice_ASL(ROI_mask==1)));
            app.ASLMinLabel.Text = num2str(min(slice_ASL(ROI_mask==1)));
            app.ASLMaxLabel.Text = num2str(max(slice_ASL(ROI_mask==1)));
            
            % Display chosen map image based on method selected and spinner
            % Value
            temp_RedScreen = cat(3, ones(dims(1:2)), zeros(dims(1:2)), zeros(dims(1:2)));
            
            if app.SVDButton.Value == true
                app.DSCImage = imshow(app.CBFData.svd.map(:,:,app.SliceSpinner_DSCMaps.Value), [], 'Parent', app.UIAxes_DSCMaps, Colormap = turbo);
                hold(app.UIAxes_DSCMaps, "on")
                mask_Overlay = imshow(temp_RedScreen, "Parent",app.UIAxes_DSCMaps);
                hold(app.UIAxes_DSCMaps, "off")
                mask_Overlay.AlphaData = ROI_mask-0.6;
            elseif app.cSVDButton.Value == true
                app.DSCImage = imshow(app.CBFData.csvd.map(:,:,app.SliceSpinner_DSCMaps.Value), [], 'Parent', app.UIAxes_DSCMaps, Colormap = turbo);
                hold(app.UIAxes_DSCMaps, "on")
                mask_Overlay = imshow(temp_RedScreen, "Parent",app.UIAxes_DSCMaps);
                hold(app.UIAxes_DSCMaps, "off")
                mask_Overlay.AlphaData = ROI_mask-0.6;
            elseif app.oSVDButton.Value == true
                app.DSCImage = imshow(app.CBFData.osvd.map(:,:,app.SliceSpinner_DSCMaps.Value), [], 'Parent', app.UIAxes_DSCMaps, Colormap = turbo);
                hold(app.UIAxes_DSCMaps, "on")
                mask_Overlay = imshow(temp_RedScreen, "Parent",app.UIAxes_DSCMaps);
                hold(app.UIAxes_DSCMaps, "off")
                mask_Overlay.AlphaData = ROI_mask-0.6;
            end
            
            app.DSCImage.AlphaData = app.WorkMaskDSC(:,:,app.SliceSpinner_DSCMaps.Value);
            
            app.ASLImage = imshow(app.ImageDataASL(:,:,app.SliceSpinner_ASL.Value), [], 'Parent', app.UIAxes_ASL, Colormap = turbo);
            hold(app.UIAxes_ASL, "on")
            mask_Overlay = imshow(temp_RedScreen, "Parent",app.UIAxes_ASL);
            hold(app.UIAxes_ASL, "off")
            mask_Overlay.AlphaData = ROI_mask-0.6;
            app.ASLImage.AlphaData = app.WorkMaskASL(:,:,app.SliceSpinner_ASL.Value);  
        end

        % Button pushed function: ExportROImaskButton
        function ExportROImaskButtonPushed(app, event)
            % Get directory and export selected comparation region mask
            value = app.ComparationregionsListBox.Value;
            ROI_mask = cell2mat(table2array(app.SavedROI({value}, "Mask")));
            temp_dir = uigetdir;
            temp_dir = append(temp_dir, '\');
            niftiwrite(double(ROI_mask), append(temp_dir, value))
        end

        % Value changed function: SelectfixedDropDown
        function SelectfixedDropDownValueChanged(app, event)
            fixed_Image = cell2mat(table2array(app.SavedTableSegmenter({app.SelectfixedDropDown.Value}, "Image")));
            dims = size(fixed_Image);
            dim3_size = dims(3);
            app.SliceSpinner_Fixed.Limits = [1, dim3_size];
        end

        % Value changed function: SelectmovingDropDown
        function SelectmovingDropDownValueChanged(app, event)
            moving_Image = cell2mat(table2array(app.SavedTableSegmenter({app.SelectmovingDropDown.Value}, "Image")));
            dims = size(moving_Image);
            dim3_size = dims(3);
            app.SliceSpinner_Moving.Limits = [1, dim3_size];
        end

        % Value changed function: UsedifferentparametermapCheckBox
        function UsedifferentparametermapCheckBoxValueChanged(app, event)
            value = app.UsedifferentparametermapCheckBox.Value;
            if value == 1
                app.SelectparameterDropDown.Enable = 'on';
                app.SliceSpinner_Parameter.Enable = 'on';
            else
                app.SelectparameterDropDown.Enable = 'off';
                app.SliceSpinner_Parameter.Enable = 'off';
            end
        end

        % Value changed function: SelectparameterDropDown
        function SelectparameterDropDownValueChanged(app, event)
            parameter_Image = cell2mat(table2array(app.SavedTableSegmenter({app.SelectparameterDropDown.Value}, "Image")));
            dims = size(parameter_Image);
            dim3_size = dims(3);
            app.SliceSpinner_Parameter.Limits = [1, dim3_size];
        end

        % Button pushed function: RegisterButton
        function RegisterButtonPushed(app, event)
            fixed_Image = cell2mat(table2array(app.SavedTableSegmenter({app.SelectfixedDropDown.Value}, "Image")));
            fixed_Image_py = py.numpy.array(fixed_Image(:,:,app.SliceSpinner_Fixed.Value));
            moving_Image = cell2mat(table2array(app.SavedTableSegmenter({app.SelectmovingDropDown.Value}, "Image")));
            moving_Image_py = py.numpy.array(moving_Image(:,:,app.SliceSpinner_Moving.Value));

            progress = uiprogressdlg(app.UIFigure,'Title','Please wait',...
                'Indeterminate','on', 'Message', 'Registering images');
            drawnow
            
            if app.UsedifferentparametermapCheckBox.Value == 0
                resultImage_py = pyrunfile("Basic.py", "resultArray", fixIm = fixed_Image_py, movIm = moving_Image_py);
                resultImage = single(resultImage_py);
                imshow(resultImage, [], 'Parent', app.UIAxes_Registration, Colormap = turbo);
            else
                parameter_Image = cell2mat(table2array(app.SavedTableSegmenter({app.SelectparameterDropDown.Value}, "Image")));
                parameter_Image_py = py.numpy.array(parameter_Image(:,:,app.SliceSpinner_Parameter.Value));

                resultImage_py = pyrunfile("Transformix.py", "resultArray", fixIm = fixed_Image_py, movIm = moving_Image_py, paramIm = parameter_Image_py);
                resultImage = single(resultImage_py);
                imshow(resultImage, [], 'Parent', app.UIAxes_Registration, Colormap = turbo);
            end

            % close the dialog box
            close(progress)
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

            % Create UIAxesPreview
            app.UIAxesPreview = uiaxes(app.PreviewTab);
            app.UIAxesPreview.Toolbar.Visible = 'off';
            app.UIAxesPreview.XLimitMethod = 'tight';
            app.UIAxesPreview.YLimitMethod = 'tight';
            app.UIAxesPreview.XTick = [];
            app.UIAxesPreview.XTickLabel = '';
            app.UIAxesPreview.YTick = [];
            app.UIAxesPreview.YTickLabel = '';
            app.UIAxesPreview.Position = [756 96 607 425];

            % Create RotateButtonPreview
            app.RotateButtonPreview = uibutton(app.PreviewTab, 'push');
            app.RotateButtonPreview.ButtonPushedFcn = createCallbackFcn(app, @RotateButtonPreviewPushed, true);
            app.RotateButtonPreview.Position = [1121 63 100 22];
            app.RotateButtonPreview.Text = 'Rotate';

            % Create PreviewLabel
            app.PreviewLabel = uilabel(app.PreviewTab);
            app.PreviewLabel.HorizontalAlignment = 'right';
            app.PreviewLabel.Position = [933 523 48 22];
            app.PreviewLabel.Text = 'Preview';

            % Create PreviewDropDown
            app.PreviewDropDown = uidropdown(app.PreviewTab);
            app.PreviewDropDown.Items = {};
            app.PreviewDropDown.ValueChangedFcn = createCallbackFcn(app, @PreviewDropDownValueChanged, true);
            app.PreviewDropDown.Placeholder = 'None';
            app.PreviewDropDown.Position = [996 523 229 22];
            app.PreviewDropDown.Value = {};

            % Create SliceSpinnerLabel
            app.SliceSpinnerLabel = uilabel(app.PreviewTab);
            app.SliceSpinnerLabel.HorizontalAlignment = 'right';
            app.SliceSpinnerLabel.Position = [949 63 31 22];
            app.SliceSpinnerLabel.Text = 'Slice';

            % Create SliceSpinnerPreview
            app.SliceSpinnerPreview = uispinner(app.PreviewTab);
            app.SliceSpinnerPreview.ValueChangedFcn = createCallbackFcn(app, @SliceSpinnerPreviewValueChanged, true);
            app.SliceSpinnerPreview.Position = [995 63 100 22];

            % Create UpdateButton
            app.UpdateButton = uibutton(app.PreviewTab, 'push');
            app.UpdateButton.ButtonPushedFcn = createCallbackFcn(app, @UpdateButtonPushed, true);
            app.UpdateButton.Position = [675 606 100 22];
            app.UpdateButton.Text = 'Update';

            % Create BrowseButton
            app.BrowseButton = uibutton(app.PreviewTab, 'push');
            app.BrowseButton.ButtonPushedFcn = createCallbackFcn(app, @BrowseButtonPushed, true);
            app.BrowseButton.Position = [880 647 100 22];
            app.BrowseButton.Text = 'Browse';

            % Create StudyfolderEditFieldLabel
            app.StudyfolderEditFieldLabel = uilabel(app.PreviewTab);
            app.StudyfolderEditFieldLabel.HorizontalAlignment = 'right';
            app.StudyfolderEditFieldLabel.Position = [458 647 70 22];
            app.StudyfolderEditFieldLabel.Text = {'Study folder'; ''};

            % Create StudyfolderEditField
            app.StudyfolderEditField = uieditfield(app.PreviewTab, 'text');
            app.StudyfolderEditField.Editable = 'off';
            app.StudyfolderEditField.Position = [536 647 337 22];

            % Create NumberofsequencesEditFieldLabel
            app.NumberofsequencesEditFieldLabel = uilabel(app.PreviewTab);
            app.NumberofsequencesEditFieldLabel.HorizontalAlignment = 'right';
            app.NumberofsequencesEditFieldLabel.Position = [454 606 123 22];
            app.NumberofsequencesEditFieldLabel.Text = {'Number of sequences'; ''};

            % Create NumberofsequencesEditField
            app.NumberofsequencesEditField = uieditfield(app.PreviewTab, 'numeric');
            app.NumberofsequencesEditField.Position = [592 606 61 22];

            % Create UITable
            app.UITable = uitable(app.PreviewTab);
            app.UITable.ColumnName = {'Column 1'; 'Column 2'; 'Column 3'; 'Column 4'};
            app.UITable.RowName = {};
            app.UITable.Position = [67 96 599 452];

            % Create LoadsingleButton
            app.LoadsingleButton = uibutton(app.PreviewTab, 'push');
            app.LoadsingleButton.ButtonPushedFcn = createCallbackFcn(app, @LoadsingleButtonPushed, true);
            app.LoadsingleButton.Position = [880 606 100 22];
            app.LoadsingleButton.Text = 'Load single';

            % Create Dim5SliderLabel
            app.Dim5SliderLabel = uilabel(app.PreviewTab);
            app.Dim5SliderLabel.HorizontalAlignment = 'right';
            app.Dim5SliderLabel.Position = [703 307 44 22];
            app.Dim5SliderLabel.Text = 'Dim - 5';

            % Create Dim5SliderPreview
            app.Dim5SliderPreview = uislider(app.PreviewTab);
            app.Dim5SliderPreview.MajorTicks = [];
            app.Dim5SliderPreview.MajorTickLabels = {''};
            app.Dim5SliderPreview.Orientation = 'vertical';
            app.Dim5SliderPreview.ValueChangingFcn = createCallbackFcn(app, @Dim5SliderPreviewValueChanging, true);
            app.Dim5SliderPreview.MinorTicks = [];
            app.Dim5SliderPreview.Enable = 'off';
            app.Dim5SliderPreview.Position = [729 339 3 150];

            % Create Dim4Slider_2Label
            app.Dim4Slider_2Label = uilabel(app.PreviewTab);
            app.Dim4Slider_2Label.HorizontalAlignment = 'right';
            app.Dim4Slider_2Label.Position = [703 108 44 22];
            app.Dim4Slider_2Label.Text = 'Dim - 4';

            % Create Dim4SliderPreview
            app.Dim4SliderPreview = uislider(app.PreviewTab);
            app.Dim4SliderPreview.MajorTicks = [];
            app.Dim4SliderPreview.MajorTickLabels = {''};
            app.Dim4SliderPreview.Orientation = 'vertical';
            app.Dim4SliderPreview.ValueChangingFcn = createCallbackFcn(app, @Dim4SliderPreviewValueChanging, true);
            app.Dim4SliderPreview.MinorTicks = [];
            app.Dim4SliderPreview.Enable = 'off';
            app.Dim4SliderPreview.Position = [729 140 3 150];

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
            app.UIAxes_Segmenter.Position = [6 48 1061 676];

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

            % Create SliceSpinner_SegmenterLabel
            app.SliceSpinner_SegmenterLabel = uilabel(app.SegmenterTab);
            app.SliceSpinner_SegmenterLabel.HorizontalAlignment = 'right';
            app.SliceSpinner_SegmenterLabel.Position = [186 17 31 22];
            app.SliceSpinner_SegmenterLabel.Text = 'Slice';

            % Create SliceSpinner_Segmenter
            app.SliceSpinner_Segmenter = uispinner(app.SegmenterTab);
            app.SliceSpinner_Segmenter.ValueChangedFcn = createCallbackFcn(app, @SliceSpinner_SegmenterValueChanged, true);
            app.SliceSpinner_Segmenter.Position = [228 17 97 22];

            % Create RotateButton_Segmenter
            app.RotateButton_Segmenter = uibutton(app.SegmenterTab, 'push');
            app.RotateButton_Segmenter.ButtonPushedFcn = createCallbackFcn(app, @RotateButton_SegmenterPushed, true);
            app.RotateButton_Segmenter.Position = [690 17 94 22];
            app.RotateButton_Segmenter.Text = {'Rotate'; ''};

            % Create ImageshownSwitchLabel
            app.ImageshownSwitchLabel = uilabel(app.SegmenterTab);
            app.ImageshownSwitchLabel.HorizontalAlignment = 'center';
            app.ImageshownSwitchLabel.Position = [1222 544 77 22];
            app.ImageshownSwitchLabel.Text = {'Image shown'; ''};

            % Create ImageshownSwitch
            app.ImageshownSwitch = uiswitch(app.SegmenterTab, 'slider');
            app.ImageshownSwitch.Items = {'Overlay', 'Masked'};
            app.ImageshownSwitch.ValueChangedFcn = createCallbackFcn(app, @ImageshownSwitchValueChanged, true);
            app.ImageshownSwitch.Enable = 'off';
            app.ImageshownSwitch.Position = [1237 573 45 20];
            app.ImageshownSwitch.Value = 'Overlay';

            % Create ResetsliceButton
            app.ResetsliceButton = uibutton(app.SegmenterTab, 'push');
            app.ResetsliceButton.ButtonPushedFcn = createCallbackFcn(app, @ResetsliceButtonPushed, true);
            app.ResetsliceButton.Position = [1151 100 100 22];
            app.ResetsliceButton.Text = 'Reset slice';

            % Create IBrainsegmentationLabel
            app.IBrainsegmentationLabel = uilabel(app.SegmenterTab);
            app.IBrainsegmentationLabel.Position = [1201 511 119 22];
            app.IBrainsegmentationLabel.Text = {'I. Brain segmentation'; ''};

            % Create SavesliceButton
            app.SavesliceButton = uibutton(app.SegmenterTab, 'push');
            app.SavesliceButton.ButtonPushedFcn = createCallbackFcn(app, @SavesliceButtonPushed, true);
            app.SavesliceButton.Position = [1261 100 100 22];
            app.SavesliceButton.Text = 'Save slice';

            % Create ResetViewButton_Segmenter
            app.ResetViewButton_Segmenter = uibutton(app.SegmenterTab, 'push');
            app.ResetViewButton_Segmenter.ButtonPushedFcn = createCallbackFcn(app, @ResetviewButton_Segmenter_Pushed, true);
            app.ResetViewButton_Segmenter.Position = [794 17 94 22];
            app.ResetViewButton_Segmenter.Text = 'Reset view';

            % Create ActionLabel
            app.ActionLabel = uilabel(app.SegmenterTab);
            app.ActionLabel.HorizontalAlignment = 'center';
            app.ActionLabel.FontAngle = 'italic';
            app.ActionLabel.Position = [1109 68 293 25];
            app.ActionLabel.Text = 'Last action';

            % Create SavesequenceButton
            app.SavesequenceButton = uibutton(app.SegmenterTab, 'push');
            app.SavesequenceButton.ButtonPushedFcn = createCallbackFcn(app, @SavesequenceButtonPushed, true);
            app.SavesequenceButton.Position = [1151 38 100 22];
            app.SavesequenceButton.Text = 'Save sequence';

            % Create ExportsequenceButton
            app.ExportsequenceButton = uibutton(app.SegmenterTab, 'push');
            app.ExportsequenceButton.ButtonPushedFcn = createCallbackFcn(app, @ExportsequenceButtonPushed, true);
            app.ExportsequenceButton.Position = [1261 38 101 22];
            app.ExportsequenceButton.Text = 'Export sequence';

            % Create Dim4Label
            app.Dim4Label = uilabel(app.SegmenterTab);
            app.Dim4Label.HorizontalAlignment = 'right';
            app.Dim4Label.Position = [341 17 44 22];
            app.Dim4Label.Text = 'Dim - 4';

            % Create Dim4Spinner_Segmenter
            app.Dim4Spinner_Segmenter = uispinner(app.SegmenterTab);
            app.Dim4Spinner_Segmenter.ValueChangedFcn = createCallbackFcn(app, @Dim4Spinner_SegmenterValueChanged, true);
            app.Dim4Spinner_Segmenter.Enable = 'off';
            app.Dim4Spinner_Segmenter.Position = [396 17 100 22];

            % Create Dim5Label
            app.Dim5Label = uilabel(app.SegmenterTab);
            app.Dim5Label.HorizontalAlignment = 'right';
            app.Dim5Label.Position = [510 17 44 22];
            app.Dim5Label.Text = 'Dim - 5';

            % Create Dim5Spinner_Segmenter
            app.Dim5Spinner_Segmenter = uispinner(app.SegmenterTab);
            app.Dim5Spinner_Segmenter.ValueChangedFcn = createCallbackFcn(app, @Dim5Spinner_SegmenterValueChanged, true);
            app.Dim5Spinner_Segmenter.Enable = 'off';
            app.Dim5Spinner_Segmenter.Position = [565 17 100 22];

            % Create SegmentusingexternalmaskButton
            app.SegmentusingexternalmaskButton = uibutton(app.SegmenterTab, 'push');
            app.SegmentusingexternalmaskButton.ButtonPushedFcn = createCallbackFcn(app, @SegmentusingexternalmaskButtonPushed, true);
            app.SegmentusingexternalmaskButton.Position = [1175 613 174 22];
            app.SegmentusingexternalmaskButton.Text = 'Segment using external mask';

            % Create IIHemisphereselectionLabel
            app.IIHemisphereselectionLabel = uilabel(app.SegmenterTab);
            app.IIHemisphereselectionLabel.Position = [1193 329 134 22];
            app.IIHemisphereselectionLabel.Text = {'II. Hemisphere selection'; ''};

            % Create HemisphereButtonGroup
            app.HemisphereButtonGroup = uibuttongroup(app.SegmenterTab);
            app.HemisphereButtonGroup.AutoResizeChildren = 'off';
            app.HemisphereButtonGroup.BorderType = 'none';
            app.HemisphereButtonGroup.TitlePosition = 'centertop';
            app.HemisphereButtonGroup.Title = 'Hemisphere ';
            app.HemisphereButtonGroup.Position = [1147 247 100 74];

            % Create LeftblueButton
            app.LeftblueButton = uiradiobutton(app.HemisphereButtonGroup);
            app.LeftblueButton.Text = 'Left - blue';
            app.LeftblueButton.Position = [11 29 75 22];
            app.LeftblueButton.Value = true;

            % Create RightredButton
            app.RightredButton = uiradiobutton(app.HemisphereButtonGroup);
            app.RightredButton.Text = 'Right - red';
            app.RightredButton.Position = [11 7 78 22];

            % Create CorrectionButton_Hemisphere
            app.CorrectionButton_Hemisphere = uibutton(app.SegmenterTab, 'push');
            app.CorrectionButton_Hemisphere.ButtonPushedFcn = createCallbackFcn(app, @CorrectionButton_HemispherePushed, true);
            app.CorrectionButton_Hemisphere.Position = [1262 253 96 22];
            app.CorrectionButton_Hemisphere.Text = {'Correction ROI'; ''};

            % Create MainselectionButton_Hemisphere
            app.MainselectionButton_Hemisphere = uibutton(app.SegmenterTab, 'push');
            app.MainselectionButton_Hemisphere.ButtonPushedFcn = createCallbackFcn(app, @MainselectionButton_HemispherePushed, true);
            app.MainselectionButton_Hemisphere.Position = [1262 289 96 22];
            app.MainselectionButton_Hemisphere.Text = {'Main selection'; ''};

            % Create IIILesionselectionLabel
            app.IIILesionselectionLabel = uilabel(app.SegmenterTab);
            app.IIILesionselectionLabel.Position = [1202 203 108 22];
            app.IIILesionselectionLabel.Text = {'III. Lesion selection'; ''};

            % Create MainselectionButton_Lesion
            app.MainselectionButton_Lesion = uibutton(app.SegmenterTab, 'push');
            app.MainselectionButton_Lesion.ButtonPushedFcn = createCallbackFcn(app, @MainselectionButton_LesionPushed, true);
            app.MainselectionButton_Lesion.Position = [1208 173 96 22];
            app.MainselectionButton_Lesion.Text = {'Main selection'; ''};

            % Create FreeButton_Add_Lesion
            app.FreeButton_Add_Lesion = uibutton(app.SegmenterTab, 'push');
            app.FreeButton_Add_Lesion.ButtonPushedFcn = createCallbackFcn(app, @FreeButton_Add_LesionPushed, true);
            app.FreeButton_Add_Lesion.Position = [1201 140 50 22];
            app.FreeButton_Add_Lesion.Text = {'+ Free'; ''};

            % Create FreeButton_Remove_Lesion
            app.FreeButton_Remove_Lesion = uibutton(app.SegmenterTab, 'push');
            app.FreeButton_Remove_Lesion.ButtonPushedFcn = createCallbackFcn(app, @FreeButton_Remove_LesionPushed, true);
            app.FreeButton_Remove_Lesion.Position = [1260 140 50 22];
            app.FreeButton_Remove_Lesion.Text = {'- Free'; ''};

            % Create InitialselectionButton
            app.InitialselectionButton = uibutton(app.SegmenterTab, 'push');
            app.InitialselectionButton.ButtonPushedFcn = createCallbackFcn(app, @InitialselectionButtonPushed, true);
            app.InitialselectionButton.Position = [1156 480 100 22];
            app.InitialselectionButton.Text = {'Initial selection'; ''};

            % Create AutoClusterButton
            app.AutoClusterButton = uibutton(app.SegmenterTab, 'push');
            app.AutoClusterButton.ButtonPushedFcn = createCallbackFcn(app, @AutoClusterButtonPushed, true);
            app.AutoClusterButton.Enable = 'off';
            app.AutoClusterButton.Position = [1266 480 100 22];
            app.AutoClusterButton.Text = 'Auto Cluster';

            % Create DiskradiusSpinnerLabel
            app.DiskradiusSpinnerLabel = uilabel(app.SegmenterTab);
            app.DiskradiusSpinnerLabel.HorizontalAlignment = 'right';
            app.DiskradiusSpinnerLabel.Position = [1208 411 65 22];
            app.DiskradiusSpinnerLabel.Text = {'Disk radius'; ''};

            % Create DiskradiusSpinner
            app.DiskradiusSpinner = uispinner(app.SegmenterTab);
            app.DiskradiusSpinner.Limits = [1 100];
            app.DiskradiusSpinner.Position = [1215 378 58 22];
            app.DiskradiusSpinner.Value = 3;

            % Create OpenMaskButton
            app.OpenMaskButton = uibutton(app.SegmenterTab, 'push');
            app.OpenMaskButton.ButtonPushedFcn = createCallbackFcn(app, @OpenMaskButtonPushed, true);
            app.OpenMaskButton.Position = [1114 410 82 22];
            app.OpenMaskButton.Text = {'Open Mask'; ''};

            % Create CloseMaskButton
            app.CloseMaskButton = uibutton(app.SegmenterTab, 'push');
            app.CloseMaskButton.ButtonPushedFcn = createCallbackFcn(app, @CloseMaskButtonPushed, true);
            app.CloseMaskButton.Position = [1114 378 82 22];
            app.CloseMaskButton.Text = {'Close Mask'; ''};

            % Create MorphologyLabel
            app.MorphologyLabel = uilabel(app.SegmenterTab);
            app.MorphologyLabel.Position = [1160 441 68 15];
            app.MorphologyLabel.Text = {'Morphology'; ''};

            % Create ROILabel
            app.ROILabel = uilabel(app.SegmenterTab);
            app.ROILabel.Position = [1340 441 25 15];
            app.ROILabel.Text = {'ROI'; ''; ''};

            % Create FreeButton_Add
            app.FreeButton_Add = uibutton(app.SegmenterTab, 'push');
            app.FreeButton_Add.ButtonPushedFcn = createCallbackFcn(app, @FreeButton_AddPushed, true);
            app.FreeButton_Add.Position = [1298 410 50 22];
            app.FreeButton_Add.Text = {'+ Free'; ''};

            % Create PolyButton_Add
            app.PolyButton_Add = uibutton(app.SegmenterTab, 'push');
            app.PolyButton_Add.ButtonPushedFcn = createCallbackFcn(app, @PolyButton_AddPushed, true);
            app.PolyButton_Add.Position = [1298 378 50 22];
            app.PolyButton_Add.Text = '+ Poly';

            % Create PolyButton_Remove
            app.PolyButton_Remove = uibutton(app.SegmenterTab, 'push');
            app.PolyButton_Remove.ButtonPushedFcn = createCallbackFcn(app, @PolyButton_RemovePushed, true);
            app.PolyButton_Remove.Position = [1357 378 50 22];
            app.PolyButton_Remove.Text = {'- Poly'; ''};

            % Create FreeButton_Remove
            app.FreeButton_Remove = uibutton(app.SegmenterTab, 'push');
            app.FreeButton_Remove.ButtonPushedFcn = createCallbackFcn(app, @FreeButton_RemovePushed, true);
            app.FreeButton_Remove.Position = [1357 410 50 22];
            app.FreeButton_Remove.Text = {'- Free'; ''};

            % Create DSCTab
            app.DSCTab = uitab(app.TabGroup);
            app.DSCTab.AutoResizeChildren = 'off';
            app.DSCTab.Title = 'DSC';

            % Create UIAxes_DSCMaps
            app.UIAxes_DSCMaps = uiaxes(app.DSCTab);
            app.UIAxes_DSCMaps.Toolbar.Visible = 'off';
            app.UIAxes_DSCMaps.XLimitMethod = 'tight';
            app.UIAxes_DSCMaps.YLimitMethod = 'tight';
            app.UIAxes_DSCMaps.XTick = [];
            app.UIAxes_DSCMaps.XTickLabel = '';
            app.UIAxes_DSCMaps.YTick = [];
            app.UIAxes_DSCMaps.YTickLabel = '';
            app.UIAxes_DSCMaps.Position = [320 52 534 468];

            % Create UIAxes_ASL
            app.UIAxes_ASL = uiaxes(app.DSCTab);
            app.UIAxes_ASL.Toolbar.Visible = 'off';
            app.UIAxes_ASL.XLimitMethod = 'tight';
            app.UIAxes_ASL.YLimitMethod = 'tight';
            app.UIAxes_ASL.XTick = [];
            app.UIAxes_ASL.XTickLabel = '';
            app.UIAxes_ASL.YTick = [];
            app.UIAxes_ASL.YTickLabel = '';
            app.UIAxes_ASL.Position = [880 52 523 468];

            % Create CalculateDSCmapsButton
            app.CalculateDSCmapsButton = uibutton(app.DSCTab, 'push');
            app.CalculateDSCmapsButton.ButtonPushedFcn = createCallbackFcn(app, @CalculateDSCmapsButtonPushed, true);
            app.CalculateDSCmapsButton.Position = [525 592 128 22];
            app.CalculateDSCmapsButton.Text = 'Calculate DSC maps';

            % Create SliceSpinner_DSCMapsLabel
            app.SliceSpinner_DSCMapsLabel = uilabel(app.DSCTab);
            app.SliceSpinner_DSCMapsLabel.HorizontalAlignment = 'right';
            app.SliceSpinner_DSCMapsLabel.Enable = 'off';
            app.SliceSpinner_DSCMapsLabel.Position = [439 17 31 22];
            app.SliceSpinner_DSCMapsLabel.Text = 'Slice';

            % Create SliceSpinner_DSCMaps
            app.SliceSpinner_DSCMaps = uispinner(app.DSCTab);
            app.SliceSpinner_DSCMaps.ValueChangedFcn = createCallbackFcn(app, @SliceSpinner_DSCMapsValueChanged, true);
            app.SliceSpinner_DSCMaps.Enable = 'off';
            app.SliceSpinner_DSCMaps.Position = [485 17 100 22];

            % Create SliceSpinner_ASLLabel
            app.SliceSpinner_ASLLabel = uilabel(app.DSCTab);
            app.SliceSpinner_ASLLabel.HorizontalAlignment = 'right';
            app.SliceSpinner_ASLLabel.Enable = 'off';
            app.SliceSpinner_ASLLabel.Position = [1025 17 31 22];
            app.SliceSpinner_ASLLabel.Text = 'Slice';

            % Create SliceSpinner_ASL
            app.SliceSpinner_ASL = uispinner(app.DSCTab);
            app.SliceSpinner_ASL.ValueChangedFcn = createCallbackFcn(app, @SliceSpinner_ASLValueChanged, true);
            app.SliceSpinner_ASL.Enable = 'off';
            app.SliceSpinner_ASL.Position = [1071 17 100 22];

            % Create ASLMapLabel
            app.ASLMapLabel = uilabel(app.DSCTab);
            app.ASLMapLabel.Position = [1117 547 54 22];
            app.ASLMapLabel.Text = {'ASL Map'; ''};

            % Create SelectDSCvolumetricdataformapcalculationLabel
            app.SelectDSCvolumetricdataformapcalculationLabel = uilabel(app.DSCTab);
            app.SelectDSCvolumetricdataformapcalculationLabel.HorizontalAlignment = 'right';
            app.SelectDSCvolumetricdataformapcalculationLabel.Position = [460 663 259 22];
            app.SelectDSCvolumetricdataformapcalculationLabel.Text = 'Select DSC volumetric data for map calculation';

            % Create SelectvolumetricdataDropDown
            app.SelectvolumetricdataDropDown = uidropdown(app.DSCTab);
            app.SelectvolumetricdataDropDown.Items = {};
            app.SelectvolumetricdataDropDown.Placeholder = 'None';
            app.SelectvolumetricdataDropDown.Position = [408 633 360 21];
            app.SelectvolumetricdataDropDown.Value = {};

            % Create SelectASLexperimenttocompareLabel
            app.SelectASLexperimenttocompareLabel = uilabel(app.DSCTab);
            app.SelectASLexperimenttocompareLabel.HorizontalAlignment = 'right';
            app.SelectASLexperimenttocompareLabel.Position = [1048 663 191 22];
            app.SelectASLexperimenttocompareLabel.Text = 'Select ASL experiment to compare';

            % Create SelectASLDropDown
            app.SelectASLDropDown = uidropdown(app.DSCTab);
            app.SelectASLDropDown.Items = {};
            app.SelectASLDropDown.ValueChangedFcn = createCallbackFcn(app, @SelectASLDropDownValueChanged, true);
            app.SelectASLDropDown.Placeholder = 'None';
            app.SelectASLDropDown.Position = [963 633 360 21];
            app.SelectASLDropDown.Value = {};

            % Create ComparemapsButton
            app.ComparemapsButton = uibutton(app.DSCTab, 'push');
            app.ComparemapsButton.ButtonPushedFcn = createCallbackFcn(app, @ComparemapsButtonPushed, true);
            app.ComparemapsButton.Position = [1041 592 203 22];
            app.ComparemapsButton.Text = 'Compare ASL and DSC CBF maps';

            % Create DSCMapDropDownLabel
            app.DSCMapDropDownLabel = uilabel(app.DSCTab);
            app.DSCMapDropDownLabel.HorizontalAlignment = 'center';
            app.DSCMapDropDownLabel.Position = [539 563 101 22];
            app.DSCMapDropDownLabel.Text = 'DSC Map';

            % Create DSCMapDropDown
            app.DSCMapDropDown = uidropdown(app.DSCTab);
            app.DSCMapDropDown.Items = {'CBF', 'CBV', 'MTT'};
            app.DSCMapDropDown.ValueChangedFcn = createCallbackFcn(app, @DSCMapDropDownValueChanged, true);
            app.DSCMapDropDown.Position = [560 534 61 23];
            app.DSCMapDropDown.Value = 'CBF';

            % Create ExportASLmapButton
            app.ExportASLmapButton = uibutton(app.DSCTab, 'push');
            app.ExportASLmapButton.ButtonPushedFcn = createCallbackFcn(app, @ExportASLmapButtonPushed, true);
            app.ExportASLmapButton.Position = [177 17 112 22];
            app.ExportASLmapButton.Text = {'Export ASL map'; ''};

            % Create MethodButtonGroup
            app.MethodButtonGroup = uibuttongroup(app.DSCTab);
            app.MethodButtonGroup.AutoResizeChildren = 'off';
            app.MethodButtonGroup.SelectionChangedFcn = createCallbackFcn(app, @MethodButtonGroupSelectionChanged, true);
            app.MethodButtonGroup.BorderType = 'none';
            app.MethodButtonGroup.TitlePosition = 'centertop';
            app.MethodButtonGroup.Title = 'Method';
            app.MethodButtonGroup.Position = [677 527 176 53];

            % Create SVDButton
            app.SVDButton = uiradiobutton(app.MethodButtonGroup);
            app.SVDButton.Text = 'SVD';
            app.SVDButton.Position = [11 8 58 22];
            app.SVDButton.Value = true;

            % Create cSVDButton
            app.cSVDButton = uiradiobutton(app.MethodButtonGroup);
            app.cSVDButton.Text = 'cSVD';
            app.cSVDButton.Position = [58 8 65 22];

            % Create oSVDButton
            app.oSVDButton = uiradiobutton(app.MethodButtonGroup);
            app.oSVDButton.Text = 'oSVD';
            app.oSVDButton.Position = [112 8 65 22];

            % Create ExportDSCmapsButton
            app.ExportDSCmapsButton = uibutton(app.DSCTab, 'push');
            app.ExportDSCmapsButton.ButtonPushedFcn = createCallbackFcn(app, @ExportDSCmapsButtonPushed, true);
            app.ExportDSCmapsButton.Position = [38 17 112 22];
            app.ExportDSCmapsButton.Text = 'Export DSC maps';

            % Create DSCcomparationROIButton
            app.DSCcomparationROIButton = uibutton(app.DSCTab, 'push');
            app.DSCcomparationROIButton.ButtonPushedFcn = createCallbackFcn(app, @DSCcomparationROIButtonPushed, true);
            app.DSCcomparationROIButton.Position = [593 17 135 22];
            app.DSCcomparationROIButton.Text = 'DSC comparation ROI';

            % Create ASLcomparationROIButton
            app.ASLcomparationROIButton = uibutton(app.DSCTab, 'push');
            app.ASLcomparationROIButton.ButtonPushedFcn = createCallbackFcn(app, @ASLcomparationROIButtonPushed, true);
            app.ASLcomparationROIButton.Position = [1178 17 132 22];
            app.ASLcomparationROIButton.Text = 'ASL comparation ROI';

            % Create ROIpixelexclusionButton
            app.ROIpixelexclusionButton = uibutton(app.DSCTab, 'push');
            app.ROIpixelexclusionButton.ButtonPushedFcn = createCallbackFcn(app, @ROIpixelexclusionButtonPushed, true);
            app.ROIpixelexclusionButton.Position = [741 17 112 22];
            app.ROIpixelexclusionButton.Text = 'ROI pixel exclusion';

            % Create ComparationPanel
            app.ComparationPanel = uipanel(app.DSCTab);
            app.ComparationPanel.AutoResizeChildren = 'off';
            app.ComparationPanel.Position = [22 128 280 374];

            % Create VoxelNLabel
            app.VoxelNLabel = uilabel(app.ComparationPanel);
            app.VoxelNLabel.Position = [34 117 68 23];
            app.VoxelNLabel.Text = 'Voxel N';

            % Create MeanLabel
            app.MeanLabel = uilabel(app.ComparationPanel);
            app.MeanLabel.Position = [34 93 68 23];
            app.MeanLabel.Text = 'Mean';

            % Create SDLabel
            app.SDLabel = uilabel(app.ComparationPanel);
            app.SDLabel.Position = [34 71 68 23];
            app.SDLabel.Text = 'SD';

            % Create MinLabel
            app.MinLabel = uilabel(app.ComparationPanel);
            app.MinLabel.Position = [34 49 68 23];
            app.MinLabel.Text = 'Min';

            % Create MaxLabel
            app.MaxLabel = uilabel(app.ComparationPanel);
            app.MaxLabel.Position = [34 27 68 23];
            app.MaxLabel.Text = 'Max';

            % Create ComparationregionsListBoxLabel
            app.ComparationregionsListBoxLabel = uilabel(app.ComparationPanel);
            app.ComparationregionsListBoxLabel.BackgroundColor = [0.9412 0.9412 0.9412];
            app.ComparationregionsListBoxLabel.HorizontalAlignment = 'center';
            app.ComparationregionsListBoxLabel.Position = [83 332 117 22];
            app.ComparationregionsListBoxLabel.Text = 'Comparation regions';

            % Create ComparationregionsListBox
            app.ComparationregionsListBox = uilistbox(app.ComparationPanel);
            app.ComparationregionsListBox.Items = {};
            app.ComparationregionsListBox.ValueChangedFcn = createCallbackFcn(app, @ComparationregionsListBoxValueChanged, true);
            app.ComparationregionsListBox.Position = [16 185 251 137];
            app.ComparationregionsListBox.Value = {};

            % Create DSCLabel
            app.DSCLabel = uilabel(app.ComparationPanel);
            app.DSCLabel.HorizontalAlignment = 'center';
            app.DSCLabel.Position = [101 139 68 23];
            app.DSCLabel.Text = 'DSC';

            % Create ASLLabel
            app.ASLLabel = uilabel(app.ComparationPanel);
            app.ASLLabel.HorizontalAlignment = 'center';
            app.ASLLabel.Position = [186 139 68 23];
            app.ASLLabel.Text = 'ASL';

            % Create VoxelNValueLabel
            app.VoxelNValueLabel = uilabel(app.ComparationPanel);
            app.VoxelNValueLabel.HorizontalAlignment = 'center';
            app.VoxelNValueLabel.Position = [101 117 153 23];
            app.VoxelNValueLabel.Text = 'N/A';

            % Create DSCMeanLabel
            app.DSCMeanLabel = uilabel(app.ComparationPanel);
            app.DSCMeanLabel.HorizontalAlignment = 'center';
            app.DSCMeanLabel.Position = [101 93 68 23];
            app.DSCMeanLabel.Text = 'N/A';

            % Create DSCSDLabel
            app.DSCSDLabel = uilabel(app.ComparationPanel);
            app.DSCSDLabel.HorizontalAlignment = 'center';
            app.DSCSDLabel.Position = [101 71 68 23];
            app.DSCSDLabel.Text = 'N/A';

            % Create DSCMinLabel
            app.DSCMinLabel = uilabel(app.ComparationPanel);
            app.DSCMinLabel.HorizontalAlignment = 'center';
            app.DSCMinLabel.Position = [101 49 68 23];
            app.DSCMinLabel.Text = 'N/A';

            % Create DSCMaxLabel
            app.DSCMaxLabel = uilabel(app.ComparationPanel);
            app.DSCMaxLabel.HorizontalAlignment = 'center';
            app.DSCMaxLabel.Position = [101 27 68 23];
            app.DSCMaxLabel.Text = 'N/A';

            % Create ASLMeanLabel
            app.ASLMeanLabel = uilabel(app.ComparationPanel);
            app.ASLMeanLabel.HorizontalAlignment = 'center';
            app.ASLMeanLabel.Position = [186 93 68 23];
            app.ASLMeanLabel.Text = 'N/A';

            % Create ASLSDLabel
            app.ASLSDLabel = uilabel(app.ComparationPanel);
            app.ASLSDLabel.HorizontalAlignment = 'center';
            app.ASLSDLabel.Position = [186 71 68 23];
            app.ASLSDLabel.Text = 'N/A';

            % Create ASLMinLabel
            app.ASLMinLabel = uilabel(app.ComparationPanel);
            app.ASLMinLabel.HorizontalAlignment = 'center';
            app.ASLMinLabel.Position = [186 49 68 23];
            app.ASLMinLabel.Text = 'N/A';

            % Create ASLMaxLabel
            app.ASLMaxLabel = uilabel(app.ComparationPanel);
            app.ASLMaxLabel.HorizontalAlignment = 'center';
            app.ASLMaxLabel.Position = [186 27 68 23];
            app.ASLMaxLabel.Text = 'N/A';

            % Create ExportROImaskButton
            app.ExportROImaskButton = uibutton(app.DSCTab, 'push');
            app.ExportROImaskButton.ButtonPushedFcn = createCallbackFcn(app, @ExportROImaskButtonPushed, true);
            app.ExportROImaskButton.Position = [106 84 112 22];
            app.ExportROImaskButton.Text = 'Export ROI mask';

            % Create RegistrationTab
            app.RegistrationTab = uitab(app.TabGroup);
            app.RegistrationTab.Title = 'Registration';

            % Create UIAxes_Registration
            app.UIAxes_Registration = uiaxes(app.RegistrationTab);
            app.UIAxes_Registration.Toolbar.Visible = 'off';
            app.UIAxes_Registration.XLimitMethod = 'tight';
            app.UIAxes_Registration.YLimitMethod = 'tight';
            app.UIAxes_Registration.XTick = [];
            app.UIAxes_Registration.YTick = [];
            app.UIAxes_Registration.Position = [6 17 1028 683];

            % Create SelectfixedLabel
            app.SelectfixedLabel = uilabel(app.RegistrationTab);
            app.SelectfixedLabel.HorizontalAlignment = 'right';
            app.SelectfixedLabel.Position = [1136 662 130 22];
            app.SelectfixedLabel.Text = 'Select fixed image data';

            % Create SelectfixedDropDown
            app.SelectfixedDropDown = uidropdown(app.RegistrationTab);
            app.SelectfixedDropDown.Items = {};
            app.SelectfixedDropDown.ValueChangedFcn = createCallbackFcn(app, @SelectfixedDropDownValueChanged, true);
            app.SelectfixedDropDown.Placeholder = 'None';
            app.SelectfixedDropDown.Position = [1059 632 284 21];
            app.SelectfixedDropDown.Value = {};

            % Create SelectmovingLabel
            app.SelectmovingLabel = uilabel(app.RegistrationTab);
            app.SelectmovingLabel.HorizontalAlignment = 'right';
            app.SelectmovingLabel.Position = [1128 599 143 22];
            app.SelectmovingLabel.Text = 'Select moving image data';

            % Create SelectmovingDropDown
            app.SelectmovingDropDown = uidropdown(app.RegistrationTab);
            app.SelectmovingDropDown.Items = {};
            app.SelectmovingDropDown.ValueChangedFcn = createCallbackFcn(app, @SelectmovingDropDownValueChanged, true);
            app.SelectmovingDropDown.Placeholder = 'None';
            app.SelectmovingDropDown.Position = [1059 567 283 21];
            app.SelectmovingDropDown.Value = {};

            % Create RegisterButton
            app.RegisterButton = uibutton(app.RegistrationTab, 'push');
            app.RegisterButton.ButtonPushedFcn = createCallbackFcn(app, @RegisterButtonPushed, true);
            app.RegisterButton.Position = [1194 394 100 22];
            app.RegisterButton.Text = 'Register';

            % Create SliceSpinner_FixedLabel
            app.SliceSpinner_FixedLabel = uilabel(app.RegistrationTab);
            app.SliceSpinner_FixedLabel.HorizontalAlignment = 'right';
            app.SliceSpinner_FixedLabel.Position = [1376 662 31 22];
            app.SliceSpinner_FixedLabel.Text = 'Slice';

            % Create SliceSpinner_Fixed
            app.SliceSpinner_Fixed = uispinner(app.RegistrationTab);
            app.SliceSpinner_Fixed.Position = [1365 633 54 22];
            app.SliceSpinner_Fixed.Value = 1;

            % Create SliceSpinner_MovingLabel
            app.SliceSpinner_MovingLabel = uilabel(app.RegistrationTab);
            app.SliceSpinner_MovingLabel.HorizontalAlignment = 'right';
            app.SliceSpinner_MovingLabel.Position = [1376 596 31 22];
            app.SliceSpinner_MovingLabel.Text = 'Slice';

            % Create SliceSpinner_Moving
            app.SliceSpinner_Moving = uispinner(app.RegistrationTab);
            app.SliceSpinner_Moving.Position = [1365 567 54 22];
            app.SliceSpinner_Moving.Value = 1;

            % Create UsedifferentparametermapCheckBox
            app.UsedifferentparametermapCheckBox = uicheckbox(app.RegistrationTab);
            app.UsedifferentparametermapCheckBox.ValueChangedFcn = createCallbackFcn(app, @UsedifferentparametermapCheckBoxValueChanged, true);
            app.UsedifferentparametermapCheckBox.Text = 'Use different parameter map';
            app.UsedifferentparametermapCheckBox.Position = [1156 513 175 22];

            % Create SelectparameterLabel
            app.SelectparameterLabel = uilabel(app.RegistrationTab);
            app.SelectparameterLabel.HorizontalAlignment = 'right';
            app.SelectparameterLabel.Enable = 'off';
            app.SelectparameterLabel.Position = [1081 476 239 22];
            app.SelectparameterLabel.Text = 'Select image data for parameter generation';

            % Create SelectparameterDropDown
            app.SelectparameterDropDown = uidropdown(app.RegistrationTab);
            app.SelectparameterDropDown.Items = {};
            app.SelectparameterDropDown.ValueChangedFcn = createCallbackFcn(app, @SelectparameterDropDownValueChanged, true);
            app.SelectparameterDropDown.Enable = 'off';
            app.SelectparameterDropDown.Placeholder = 'None';
            app.SelectparameterDropDown.Position = [1059 444 283 21];
            app.SelectparameterDropDown.Value = {};

            % Create SliceSpinner_ParameterLabel
            app.SliceSpinner_ParameterLabel = uilabel(app.RegistrationTab);
            app.SliceSpinner_ParameterLabel.HorizontalAlignment = 'right';
            app.SliceSpinner_ParameterLabel.Enable = 'off';
            app.SliceSpinner_ParameterLabel.Position = [1376 476 31 22];
            app.SliceSpinner_ParameterLabel.Text = 'Slice';

            % Create SliceSpinner_Parameter
            app.SliceSpinner_Parameter = uispinner(app.RegistrationTab);
            app.SliceSpinner_Parameter.Enable = 'off';
            app.SliceSpinner_Parameter.Position = [1365 443 54 22];
            app.SliceSpinner_Parameter.Value = 1;

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