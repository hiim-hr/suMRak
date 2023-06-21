classdef BrukKit_exported < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        UIFigure                        matlab.ui.Figure
        TabGroup                        matlab.ui.container.TabGroup
        PreviewTab                      matlab.ui.container.Tab
        ContrastSlider_Preview          matlab.ui.control.Slider
        ContrastSliderLabel             matlab.ui.control.Label
        BrightnessSlider_Preview        matlab.ui.control.Slider
        BrightnessSliderLabel           matlab.ui.control.Label
        SliceSlider_Preview             matlab.ui.control.Slider
        SliceLabel                      matlab.ui.control.Label
        SliceSpinner_Preview            matlab.ui.control.Spinner
        ResetEnvironment                matlab.ui.control.Button
        Dim4Slider_Preview              matlab.ui.control.Slider
        Dim4Slider_PreviewLabel         matlab.ui.control.Label
        Dim5Slider_Preview              matlab.ui.control.Slider
        Dim5Slider_PreviewLabel         matlab.ui.control.Label
        LoadsingleButton                matlab.ui.control.Button
        UITable                         matlab.ui.control.Table
        StudyfolderEditField            matlab.ui.control.EditField
        StudyfolderEditFieldLabel       matlab.ui.control.Label
        LoadAllButton                   matlab.ui.control.Button
        PreviewDropDown                 matlab.ui.control.DropDown
        PreviewLabel                    matlab.ui.control.Label
        UIAxes_Preview                  matlab.ui.control.UIAxes
        SegmenterTab                    matlab.ui.container.Tab
        ContrastSlider_Segmenter        matlab.ui.control.Slider
        ColormapButtonGroup             matlab.ui.container.ButtonGroup
        TurboButton                     matlab.ui.control.RadioButton
        BWButton                        matlab.ui.control.RadioButton
        ContrastSliderLabel_2           matlab.ui.control.Label
        BrightnessSlider_Segmenter      matlab.ui.control.Slider
        BrightnessSliderLabel_2         matlab.ui.control.Label
        SliceSlider_Segmenter           matlab.ui.control.Slider
        SliceSliderLabel                matlab.ui.control.Label
        DeleteButton                    matlab.ui.control.Button
        ConfirmButton                   matlab.ui.control.Button
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
        Dim5Spinner_SegmenterLabel      matlab.ui.control.Label
        Dim4Spinner_Segmenter           matlab.ui.control.Spinner
        Dim4Spinner_SegmenterLabel      matlab.ui.control.Label
        ExportsequenceButton            matlab.ui.control.Button
        SavesequenceButton              matlab.ui.control.Button
        ActionLabel                     matlab.ui.control.Label
        SavesliceButton                 matlab.ui.control.Button
        IBrainsegmentationLabel         matlab.ui.control.Label
        ResetsliceButton                matlab.ui.control.Button
        ImageshownSwitch                matlab.ui.control.Switch
        ImageshownSwitchLabel           matlab.ui.control.Label
        SliceSpinner_Segmenter          matlab.ui.control.Spinner
        SegmentDropDown                 matlab.ui.control.DropDown
        SelectexperimenttosegmentDropDownLabel  matlab.ui.control.Label
        UIAxes_Segmenter                matlab.ui.control.UIAxes
        DSCASLTab                       matlab.ui.container.Tab
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
        Dim4Spinner_Parameter           matlab.ui.control.Spinner
        Dim4Spinner_ParameterLabel      matlab.ui.control.Label
        FixDim4CheckBox_Parameter       matlab.ui.control.CheckBox
        Dim4Spinner_Fixed               matlab.ui.control.Spinner
        Dim4Spinner_FixedLabel          matlab.ui.control.Label
        FixDim4CheckBox_Fixed           matlab.ui.control.CheckBox
        Dim4Spinner_Moving              matlab.ui.control.Spinner
        Dim4Spinner_MovingLabel         matlab.ui.control.Label
        FixDim4CheckBox_Moving          matlab.ui.control.CheckBox
        ExportRegisteredDataButton      matlab.ui.control.Button
        SaveRegisteredDataButton        matlab.ui.control.Button
        SliceSpinner_Registration       matlab.ui.control.Spinner
        SliceSpinner_RegistrationLabel  matlab.ui.control.Label
        ManualinstructioninputCheckBox  matlab.ui.control.CheckBox
        AddsliceButton                  matlab.ui.control.Button
        RegistrationInstructionsTextArea  matlab.ui.control.TextArea
        RegistrationInstructionsTextAreaLabel  matlab.ui.control.Label
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
        ContextMenu_Preview             matlab.ui.container.ContextMenu
        RotateMenu_Preview              matlab.ui.container.Menu
        FlipVerticallyMenu_Preview      matlab.ui.container.Menu
        FlipHorizontallyMenu_Preview    matlab.ui.container.Menu
        ResetViewMenu_Preview           matlab.ui.container.Menu
        ContextMenu_Segmenter           matlab.ui.container.ContextMenu
        RotateMenu_Segmenter            matlab.ui.container.Menu
        FlipVerticallyMenu_Segmenter    matlab.ui.container.Menu
        FlipHorizontallyMenu_Segmenter  matlab.ui.container.Menu
        ResetViewMenu_Segmenter         matlab.ui.container.Menu
        PermuteDimensionsMenu           matlab.ui.container.Menu
        PermuteMenu_3_4                 matlab.ui.container.Menu
        PermuteMenu_3_5                 matlab.ui.container.Menu
        PermuteMenu_4_5                 matlab.ui.container.Menu
    end

    
    properties (Access = private)
        
        % Loading and preview tab properties
        LoadCounter = 1
        StudyPath % Filepath of selected study directory
        ExperimentPropertyTable % Table of loaded sequence properties
        PreviewSequenceImageData % Image matrix of preview sequence
        PreviewImage % Property for storing imshow of PreviewSequenceImageData
        
        % Segmenter tab
        % Initial segmentation
        CurrentSlice % Points to current slice matrix
        OriginalSegmenterImageData % Original slice image data
        SequenceDims % Dimensions of selected sequence for segmentation 
        FreeImage % Property for storing imshow of OriginalSegmenterImageData image without a mask overlay or MaskedImage
        FreeROI % Property for storing current manual ROI object
        ROI_id = "" % Manual ROI identifier
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

        % Registration tab
        RegisteredImageData
        RegistrationCounter = 1;

        DropDownItemsSaved = {'None'}; % Working tab drop down placeholder
    end
    
    methods (Access = private)
        
        function RefreshImage(app, UIaxes)
            switch UIaxes
                case 'preview'
                    app.SequenceDims = size(app.PreviewSequenceImageData);
                    switch numel(app.SequenceDims)
                        case 3
                            app.CurrentSlice = app.PreviewSequenceImageData(:,:, round(app.SliceSlider_Preview.Value));
                        case 4
                            app.CurrentSlice = app.PreviewSequenceImageData(:,:, round(app.SliceSlider_Preview.Value), round(app.Dim4Slider_Preview.Value));
                        case 5
                            app.CurrentSlice = app.PreviewSequenceImageData(:,:, round(app.SliceSlider_Preview.Value), round(app.Dim4Slider_Preview.Value), round(app.Dim5Slider_Preview.Value));
                        otherwise
                            %error alert missing
                    end
                    app.CurrentSlice = im2uint8((app.CurrentSlice - min(app.CurrentSlice(:))) / (max(app.CurrentSlice(:)) - min(app.CurrentSlice(:)))); % Scale image to [0 1]
                    app.CurrentSlice = uint8(double(app.CurrentSlice) * exp(2 * app.ContrastSlider_Preview.Value) +  255 * app.BrightnessSlider_Preview.Value); % Apply contrast and brightness
                    app.PreviewImage = imshow(app.CurrentSlice, 'DisplayRange', [0 255], 'Parent', app.UIAxes_Preview);
                    app.PreviewImage.ContextMenu = app.ContextMenu_Preview;
                case 'segmenter'
                    app.SequenceDims = size(app.OriginalSegmenterImageData);
                    switch numel(app.SequenceDims)
                        case 2
                            app.CurrentSlice = app.OriginalSegmenterImageData(:,:);
                        case 3
                            app.CurrentSlice = app.OriginalSegmenterImageData(:,:,app.SliceSpinner_Segmenter.Value);
                        case 4
                            app.CurrentSlice = app.OriginalSegmenterImageData(:,:,app.SliceSpinner_Segmenter.Value, app.Dim4Spinner_Segmenter.Value);
                        case 5
                            app.CurrentSlice = app.OriginalSegmenterImageData(:,:,app.SliceSpinner_Segmenter.Value, app.Dim4Spinner_Segmenter.Value, app.Dim5Spinner_Segmenter.Value);
                        otherwise
                            %error alert missing
                    end
                    app.CurrentSlice = im2uint8((app.CurrentSlice - min(app.CurrentSlice(:))) / (max(app.CurrentSlice(:)) - min(app.CurrentSlice(:)))); % Scale image to [0 1]
                    app.CurrentSlice = uint8(double(app.CurrentSlice) * exp(app.ContrastSlider_Segmenter.Value) +  255 * app.BrightnessSlider_Segmenter.Value); % Apply contrast and brightness
                    switch app.ImageshownSwitch.Value
                        case "Overlay"
                            switch app.TurboButton.Value
                                case true
                                     app.FreeImage = imshow(app.CurrentSlice, 'DisplayRange', [0 255], 'Parent', app.UIAxes_Segmenter, Colormap = turbo);
                                otherwise
                                     app.FreeImage = imshow(app.CurrentSlice, 'DisplayRange', [0 255], 'Parent', app.UIAxes_Segmenter);
                            end
                                 
                            try
                                hold(app.UIAxes_Segmenter, "on");
                                mask_Overlay = imshow(app.GreenScreen, "Parent", app.UIAxes_Segmenter);
                                hold(app.UIAxes_Segmenter, "off");
                                mask_Overlay.AlphaData = app.Mask-0.7;
                            catch
                                return
                            end
                            mask_Overlay.ContextMenu = app.ContextMenu_Segmenter;
                        case "Masked"
                            app.MaskedImage = double(app.CurrentSlice).*app.Mask;
                            switch app.TurboButton.Value
                                case true
                                     app.FreeImage = imshow(app.MaskedImage, 'DisplayRange', [0 255], 'Parent', app.UIAxes_Segmenter, Colormap = turbo);
                                otherwise
                                     app.FreeImage = imshow(app.MaskedImage, 'DisplayRange', [0 255], 'Parent', app.UIAxes_Segmenter);
                            end
                            app.FreeImage.ContextMenu = app.ContextMenu_Segmenter;
                    end
                    
                otherwise
                    %error alert missing
            end
        end
    end
    

    % Callbacks that handle component events
    methods (Access = private)

        % Button pushed function: LoadAllButton
        function LoadAllButtonPushed(app, event)
            
            % Select study directory and update the edit field text
            app.StudyPath = uigetdir; 
            app.StudyfolderEditField.Value = app.StudyPath; 
            figure(app.UIFigure);

            progress = uiprogressdlg(app.UIFigure,'Title','Please wait',...
                'Indeterminate','on', 'Message', 'Loading data');
            drawnow
            
            % Create property arrays of sequences in selected study
            visu_AcqProt = {'None'};
            TE_time = 0;
            TR_time = 0;  
            exp_ImageData = {[]};
            voxel_Dims = [0 0];

            filelist_studyPath = dir(app.StudyPath);
            filelist_studyPath = rmmissing(str2double({filelist_studyPath.name}));
            
            for i=filelist_studyPath % List through experiments 
                experiment_dir = fullfile(app.StudyPath, filesep, num2str(i), filesep, 'pdata');
                filelist_expDir = dir(experiment_dir);
                filelist_expDir = rmmissing(str2double({filelist_expDir.name}));

                for j=filelist_expDir % List through processings
                    try
                        % Create image object
                        processing_dir = fullfile(experiment_dir, filesep, num2str(j));
                        imageObj = ImageDataObject(processing_dir);
                        try
                            attempt_AcqProt = imageObj.Visu.VisuAcquisitionProtocol;
                        catch
                            attempt_AcqProt = imageObj.Visu.VisuSeriesTypeId;
                        end
                        
                        % Store properties into respective arrays if a
                        % minimum of 3 dimensions is sastisfied
                        n_dims = size(size(squeeze(imageObj.data)));
                        if n_dims(2)>=3 
                            exp_ImageData = cat(1, exp_ImageData, {squeeze(rot90(imageObj.data, -1))});
                            visu_AcqProt = cat(1, visu_AcqProt, append(num2str(i), '-', num2str(j), '. ', attempt_AcqProt));
                            try
                                voxel_Dims = cat(1, voxel_Dims, imageObj.Visu.VisuCoreExtent./imageObj.Visu.VisuCoreSize);
                                try
                                    TE_time = cat(1, TE_time, imageObj.Visu.VisuAcqEchoTime*10^-3);
                                    TR_time = cat(1, TR_time, imageObj.Visu.VisuAcqRepetitionTime*10^-3);
                                catch
                                    TE_time = cat(1, TE_time, 0);
                                    TR_time = cat(1, TR_time, 0);
                                end
                            catch
                                voxel_Dims = cat(1, voxel_Dims, [0 0]);
                                TE_time = cat(1, TE_time, 0);
                                TR_time = cat(1, TR_time, 0);
                            end
                        else
                        end
                    catch
                    end
                end
            end

            % Construct experiment property table
            exp_ID = visu_AcqProt;
            variable_Names = ["Experiment ID", "Image data", "TE", "TR", "Voxel dimensions"];
            app.ExperimentPropertyTable = table(exp_ID, exp_ImageData, TE_time, TR_time, voxel_Dims, 'RowNames', visu_AcqProt, 'VariableNames', variable_Names);
            app.UITable.Data=app.ExperimentPropertyTable;
            app.UITable.ColumnName = variable_Names;
            
            % Update drop down items
            app.PreviewDropDown.Items = visu_AcqProt;
            app.SegmentDropDown.Items = visu_AcqProt;
            
            % close the dialog box
            close(progress);
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
                imageObj.Visu.VisuAcqEchoTime < imageObj.Visu.VisuAcqRepetitionTime; %#ok<VUNUS> 
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
            app.LoadCounter = app.LoadCounter+1;
            exp_ImageData = {squeeze(rot90(imageObj.data, -1))};
            
            % Construct temporary sequence property table and combine with
            % main
            exp_ID = visu_AcqProt;
            variable_Names = ["Experiment ID", "Image data", "TE", "TR", "Voxel dimensions"];
            temp_Table = table(exp_ID, exp_ImageData, TE_time, TR_time, voxel_Dims, 'RowNames', visu_AcqProt, 'VariableNames', variable_Names);
            app.ExperimentPropertyTable = [app.ExperimentPropertyTable; temp_Table];
            app.UITable.Data=app.ExperimentPropertyTable;
            app.UITable.ColumnName = variable_Names;
            
            % Update drop down items
            app.PreviewDropDown.Items = table2array(app.ExperimentPropertyTable(:,"Experiment ID"));
            app.SegmentDropDown.Items = table2array(app.ExperimentPropertyTable(:,"Experiment ID"));
            
            % close the dialog box
            close(progress)
        end

        % Button pushed function: ResetEnvironment
        function ResetEnvironmentButtonPushed(app, event)
            selection = uiconfirm(app.UIFigure,'Reset environment variables and saved data?','Confirm Reset',...
                        'Icon','warning');
            switch selection 
                case 'OK'  
                    % Reset tables
                    app.ExperimentPropertyTable = table();
                    app.UITable.Data=app.ExperimentPropertyTable;
                    app.SavedTableSegmenter = table();
    
                    % Reset counters
                    app.LoadCounter = 1;
                    app.ROICounter = 1;
                    app.RegistrationCounter = 1;
    
                    % Reset drop downs
                    app.PreviewDropDown.Items = {'None'};
                    app.SegmentDropDown.Items = {'None'};
                    app.DropDownItemsSaved = {'None'};
                    app.SelectvolumetricdataDropDown.Items = app.DropDownItemsSaved;
                    app.SelectASLDropDown.Items = app.DropDownItemsSaved;
                    app.DSCMapDropDown.Value = 'CBF';
                    app.SelectfixedDropDown.Items = app.DropDownItemsSaved;
                    app.SelectmovingDropDown.Items = app.DropDownItemsSaved;
                    app.SelectparameterDropDown.Items = app.DropDownItemsSaved;
    
                    % Reset UIAxes
                    cla(app.UIAxes_Preview);
                    cla(app.UIAxes_Segmenter);
                    cla(app.UIAxes_ASL);
                    cla(app.UIAxes_DSCMaps);
                    cla(app.UIAxes_Registration);
                    
                    % Reset sliders and spinners
                    app.BrightnessSlider_Preview.Value = 0;
                    app.BrightnessSlider_Preview.Enable = 'off';
                    app.ContrastSlider_Preview.Value = 0;
                    app.ContrastSlider_Preview.Enable = 'off';
                    app.SliceSpinner_Preview.Value = 1;
                    app.SliceSpinner_Preview.Enable = 'off';
                    app.SliceSlider_Preview.Value = 1;
                    app.SliceSlider_Preview.Enable = 'off';
                    app.Dim4Slider_Preview.Value = 1;
                    app.Dim5Slider_Preview.Value = 1;
                    app.SliceSlider_Segmenter.Value = 1;
                    app.SliceSpinner_Segmenter.Value = 1;
                    app.Dim4Spinner_Segmenter.Value = 1;
                    app.Dim5Spinner_Segmenter.Value = 1;
                    app.ContrastSlider_Segmenter.Value = 1;
                    app.BrightnessSlider_Segmenter.Value = 1;
                    app.SliceSpinner_ASL.Value = 1;
                    app.SliceSpinner_DSCMaps.Value = 1;
                    app.SliceSpinner_Fixed.Value = 1;
                    app.SliceSpinner_Moving.Value = 1;
                    app.SliceSpinner_Parameter.Value = 1;
    
                    % Reset UI items
                case 'Cancel'
                    return
            end
        end

        % Value changed function: PreviewDropDown
        function PreviewDropDownValueChanged(app, event)
            value = app.PreviewDropDown.Value;  

            % If 'None' is selected, clear UIaxes, disable controls and return
            if strcmp(value, 'None') == 1
                cla(app.UIAxes_Preview);
                app.SliceSlider_Preview.Enable = 'off';
                app.SliceSpinner_Preview.Enable = 'off';
                app.BrightnessSlider_Preview.Enable = 'off';
                app.ContrastSlider_Preview.Enable = 'off';
                app.Dim4Slider_Preview.Enable = 'off';
                app.Dim5Slider_Preview.Enable = 'off';
                return
            end
            
            % Get selected sequence image data
            app.PreviewSequenceImageData = cell2mat(app.ExperimentPropertyTable.(2)(value));
            
            % Initialize default slider values
            app.Dim5Slider_Preview.Value = 1;
            app.Dim4Slider_Preview.Value = 1;
            app.SliceSlider_Preview.Value = 1;
            app.SliceSpinner_Preview.Value = 1;
            app.BrightnessSlider_Preview.Value = 0;
            app.ContrastSlider_Preview.Value = 0;

            % Get data dimension sizes, set slider limits
            app.SequenceDims = size(app.PreviewSequenceImageData);
            dim3_size = app.SequenceDims(3);
            app.SliceSlider_Preview.Limits = [1, dim3_size];
            app.SliceSpinner_Preview.Limits = [1, dim3_size];
            
            switch numel(app.SequenceDims)
                case 4
                    dim4_size = app.SequenceDims(4);
                    app.Dim4Slider_Preview.Enable = 'on';
                    app.Dim5Slider_Preview.Enable = 'off';
                    app.Dim4Slider_Preview.Limits = [1, dim4_size];
                case 5
                    dim4_size = app.SequenceDims(4);
                    app.Dim4Slider_Preview.Enable = 'on';
                    app.Dim4Slider_Preview.Limits = [1, dim4_size];
                    dim5_size = app.SequenceDims(5);
                    app.Dim5Slider_Preview.Enable = 'on';
                    app.Dim5Slider_Preview.Limits = [1, dim5_size];
                case 3
                    app.Dim4Slider_Preview.Enable = 'off';
                    app.Dim5Slider_Preview.Enable = 'off';
            end

            % Enable slice, contrast and brightness controls
            app.SliceSlider_Preview.Enable = 'on';
            app.SliceSpinner_Preview.Enable = 'on';
            app.BrightnessSlider_Preview.Enable = 'on';
            app.ContrastSlider_Preview.Enable = 'on';
            
            % Display sequence
            RefreshImage(app, 'preview');
            disableDefaultInteractivity(app.UIAxes_Preview);
            
            % Set interactions of preview uiaxes
            app.UIAxes_Preview.Interactions = [regionZoomInteraction zoomInteraction];
            
        end

        % Value changing function: SliceSlider_Preview
        function SliceSlider_PreviewValueChanging(app, event)
            event.Source.Value = round(event.Value);
            app.SliceSpinner_Preview.Value = event.Source.Value;

            RefreshImage(app, 'preview');
        end

        % Value changed function: SliceSpinner_Preview
        function SliceSpinner_PreviewValueChanged(app, event)
            changingValue = round(event.Value);
            app.SliceSlider_Preview.Value = changingValue;

            RefreshImage(app, 'preview');
        end

        % Value changing function: Dim4Slider_Preview
        function Dim4Slider_PreviewValueChanging(app, event)
            event.Source.Value = round(event.Value);
            app.Dim4Slider_Preview.Value = event.Source.Value;

            RefreshImage(app, 'preview');
        end

        % Value changing function: Dim5Slider_Preview
        function Dim5Slider_PreviewValueChanging(app, event)
            event.Source.Value = round(event.Value);
            app.Dim5Slider_Preview.Value = event.Source.Value;
            
            RefreshImage(app, 'preview');
        end

        % Value changing function: ContrastSlider_Preview
        function ContrastSlider_PreviewValueChanging(app, event)
            app.ContrastSlider_Preview.Value = event.Value;
            RefreshImage(app, 'preview');
        end

        % Value changing function: BrightnessSlider_Preview
        function BrightnessSlider_PreviewValueChanging(app, event)
            app.BrightnessSlider_Preview.Value = event.Value;
            RefreshImage(app, 'preview');
        end

        % Menu selected function: RotateMenu_Preview
        function RotateMenu_PreviewSelected(app, event)
            
            % Rotate image data, show image
            app.PreviewSequenceImageData = rot90(app.PreviewSequenceImageData, -1);
            
            RefreshImage(app, 'preview');
        end

        % Menu selected function: FlipVerticallyMenu_Preview
        function FlipVerticallyMenu_PreviewSelected(app, event)
            
            % Flip image data, show image
            app.PreviewSequenceImageData = flipud(app.PreviewSequenceImageData);
            
            RefreshImage(app, 'preview');
        end

        % Menu selected function: FlipHorizontallyMenu_Preview
        function FlipHorizontallyMenu_PreviewSelected(app, event)
            
            % Flip image data, show image
            app.PreviewSequenceImageData = fliplr(app.PreviewSequenceImageData);
            
            RefreshImage(app, 'preview');
        end

        % Menu selected function: ResetViewMenu_Preview
        function ResetViewMenu_PreviewSelected(app, event)
            % Reset zoom
            app.UIAxes_Preview.XLim = [-inf inf];
            app.UIAxes_Preview.YLim = [-inf inf];

            % Reset contrast and brightness then refresh
            app.BrightnessSlider_Preview.Value = 0;
            app.ContrastSlider_Preview.Value = 0;
            RefreshImage(app, 'preview');
        end

        % Value changed function: SegmentDropDown
        function SegmentDropDownValueChanged(app, event)
            value = app.SegmentDropDown.Value;

            % If 'None' is selected, clear UIaxes, disable controls and return
            if strcmp(value, 'None') == 1
                cla(app.UIAxes_Segmenter);
                app.SliceSlider_Segmenter.Enable = 'off';
                app.SliceSpinner_Segmenter.Enable = 'off';
                app.Dim4Spinner_Segmenter.Enable = 'off';
                app.Dim5Spinner_Segmenter.Enable = 'off';
                app.BrightnessSlider_Segmenter.Enable = 'off';
                app.ContrastSlider_Segmenter.Enable = 'off';
                return
            end

            % Get selected sequence image data
            app.OriginalSegmenterImageData = cell2mat(app.ExperimentPropertyTable.(2)(value));


            % Initialize default slider values
            app.Dim5Spinner_Segmenter.Value = 1;
            app.Dim4Spinner_Segmenter.Value = 1;
            app.SliceSlider_Segmenter.Value = 1;
            app.SliceSpinner_Segmenter.Value = 1;
            app.BrightnessSlider_Segmenter.Value = 0;
            app.ContrastSlider_Segmenter.Value = 0;
            
            % Get data dimension sizes, define mask, set slice and spinner limits/values
            app.SequenceDims = size(app.OriginalSegmenterImageData);
            app.Mask = false(app.SequenceDims(1:2));
            app.GreenScreen = cat(3, zeros(app.SequenceDims(1:2)), ones(app.SequenceDims(1:2)), zeros(app.SequenceDims(1:2)));
            try
                dim3_size = app.SequenceDims(3);
                app.SliceSpinner_Segmenter.Limits = [1, dim3_size];
                app.SliceSlider_Segmenter.Limits = [1, dim3_size];
            catch
            end
            
            switch numel(app.SequenceDims)
                case 5
                    app.SliceSlider_Segmenter.Enable = 'on';
                    app.SliceSpinner_Segmenter.Enable = 'on';
                    dim4_size = app.SequenceDims(4);
                    app.Dim4Spinner_Segmenter.Enable = 'on';
                    app.Dim4Spinner_Segmenter.Limits = [1, dim4_size];
                    dim5_size = app.SequenceDims(5);
                    app.Dim5Spinner_Segmenter.Enable = 'on';
                    app.Dim5Spinner_Segmenter.Limits = [1, dim5_size];
                    app.PermuteDimensionsMenu.Enable = 'on';
                    app.PermuteMenu_3_4.Enable ='on';
                    app.PermuteMenu_3_5.Enable ='on';
                    app.PermuteMenu_4_5.Enable ='on';

                    % Create zero arrays to save data into for current sequence
                    app.SavedImageSegmenter = zeros(app.SequenceDims);
                    app.SavedMaskSegmenter = zeros(app.SequenceDims(1:3));

                case 4
                    app.SliceSlider_Segmenter.Enable = 'on';
                    app.SliceSpinner_Segmenter.Enable = 'on';
                    dim4_size = app.SequenceDims(4);
                    app.Dim4Spinner_Segmenter.Enable = 'on';
                    app.Dim4Spinner_Segmenter.Limits = [1, dim4_size];
                    app.Dim5Spinner_Segmenter.Enable = 'off';
                    app.PermuteDimensionsMenu.Enable = 'on';
                    app.PermuteMenu_3_4.Enable ='on';
                    app.PermuteMenu_3_5.Enable ='off';
                    app.PermuteMenu_4_5.Enable ='off';

                    % Create zero arrays to save data into for current sequence
                    app.SavedImageSegmenter = zeros(app.SequenceDims);
                    app.SavedMaskSegmenter = zeros(app.SequenceDims(1:3));
                case 3
                    app.SliceSlider_Segmenter.Enable = 'on';
                    app.SliceSpinner_Segmenter.Enable = 'on';
                    app.Dim4Spinner_Segmenter.Enable = 'off';
                    app.Dim5Spinner_Segmenter.Enable = 'off';
                    app.PermuteDimensionsMenu.Enable = 'off';
                    

                    % Create zero arrays to save data into for current sequence
                    app.SavedImageSegmenter = zeros(app.SequenceDims);
                    app.SavedMaskSegmenter = zeros(app.SequenceDims(1:3));
                case 2
                    app.SliceSlider_Segmenter.Enable = 'off';
                    app.SliceSpinner_Segmenter.Enable = 'off';
                    app.Dim4Spinner_Segmenter.Enable = 'off';
                    app.Dim5Spinner_Segmenter.Enable = 'off';

                    % Create zero arrays to save data into for current sequence
                    app.SavedImageSegmenter = zeros(app.SequenceDims);
                    app.SavedMaskSegmenter = zeros(app.SequenceDims);
            end

            % Display sequence
            RefreshImage(app, 'segmenter');

            % Enable contrast and brightness controls
            app.BrightnessSlider_Segmenter.Enable = 'on';
            app.ContrastSlider_Segmenter.Enable = 'on';
            
            % Set interactions of segmenter uiaxes
            app.UIAxes_Segmenter.Interactions = [regionZoomInteraction zoomInteraction];
            
            % Reset zoom
            app.UIAxes_Segmenter.XLim = [-inf inf];
            app.UIAxes_Segmenter.YLim = [-inf inf];

            % Update last action label
            app.ActionLabel.Text = "Last performed action will be shown here";        
        end

        % Value changing function: SliceSlider_Segmenter
        function SliceSlider_SegmenterValueChanging(app, event)
            event.Source.Value = round(event.Value);
            app.SliceSpinner_Segmenter.Value = event.Source.Value;
            
            RefreshImage(app, 'segmenter');
            
            % Reset zoom
            app.UIAxes_Segmenter.XLim = [-inf inf];
            app.UIAxes_Segmenter.YLim = [-inf inf];
            
            app.ImageshownSwitch.Enable = 'off'; % Turn off image shown switch
            app.ImageshownSwitch.Value = "Overlay"; % Set image shown value to overlay
            app.AutoClusterButton.Enable = 'off'; % TUrn off auto cluster button
        end

        % Value changed function: SliceSpinner_Segmenter
        function SliceSpinner_SegmenterValueChanged(app, event)
            event.Source.Value = round(event.Value);
            app.SliceSlider_Segmenter.Value = event.Source.Value;

            RefreshImage(app, 'segmenter');

            % Reset zoom
            app.UIAxes_Segmenter.XLim = [-inf inf];
            app.UIAxes_Segmenter.YLim = [-inf inf];
            
            app.ImageshownSwitch.Enable = 'off'; % Turn off image shown switch
            app.ImageshownSwitch.Value = "Overlay"; % Set image shown value to overlay
            app.AutoClusterButton.Enable = 'off'; % TUrn off auto cluster button
        end

        % Value changed function: Dim4Spinner_Segmenter
        function Dim4Spinner_SegmenterValueChanged(app, event)
            
            RefreshImage(app, 'segmenter');

            % Reset zoom
            app.UIAxes_Segmenter.XLim = [-inf inf];
            app.UIAxes_Segmenter.YLim = [-inf inf];
            
            app.ImageshownSwitch.Enable = 'off'; % Turn off image shown switch
            app.ImageshownSwitch.Value = "Overlay"; % Set image shown value to overlay
            app.AutoClusterButton.Enable = 'off'; % TUrn off auto cluster button
        end

        % Value changed function: Dim5Spinner_Segmenter
        function Dim5Spinner_SegmenterValueChanged(app, event)
             
            RefreshImage(app, 'segmenter');

            % Reset zoom
            app.UIAxes_Segmenter.XLim = [-inf inf];
            app.UIAxes_Segmenter.YLim = [-inf inf];
            
            app.ImageshownSwitch.Enable = 'off'; % Turn off image shown switch
            app.ImageshownSwitch.Value = "Overlay"; % Set image shown value to overlay
            app.AutoClusterButton.Enable = 'off'; % TUrn off auto cluster button
        end

        % Value changing function: ContrastSlider_Segmenter
        function ContrastSlider_SegmenterValueChanging(app, event)
            app.ContrastSlider_Segmenter.Value = event.Value;
            RefreshImage(app, 'segmenter');
        end

        % Value changing function: BrightnessSlider_Segmenter
        function BrightnessSlider_SegmenterValueChanging(app, event)
            app.BrightnessSlider_Segmenter.Value = event.Value;
            RefreshImage(app, 'segmenter');
        end

        % Menu selected function: RotateMenu_Segmenter
        function RotateMenu_SegmenterSelected(app, event)
            
            % Rotate image data, update dimensions, show image
            app.OriginalSegmenterImageData = rot90(app.OriginalSegmenterImageData, -1);
            app.Mask = rot90(app.Mask, -1);
            app.GreenScreen = rot90(app.GreenScreen, -1);
            app.SavedImageSegmenter = rot90(app.SavedImageSegmenter, -1);
            app.SavedMaskSegmenter = rot90(app.SavedMaskSegmenter, -1);
            RefreshImage(app, 'segmenter');
        end

        % Menu selected function: FlipVerticallyMenu_Segmenter
        function FlipVerticallyMenu_SegmenterSelected(app, event)
            
            % Flip image data, update dimensions, show image
            app.OriginalSegmenterImageData = flipud(app.OriginalSegmenterImageData);
            app.Mask = flipud(app.Mask);
            app.GreenScreen = flipud(app.GreenScreen);
            app.SavedImageSegmenter = flipud(app.SavedImageSegmenter);
            app.SavedMaskSegmenter = flipud(app.SavedMaskSegmenter);
            RefreshImage(app, 'segmenter');
        end

        % Menu selected function: FlipHorizontallyMenu_Segmenter
        function FlipHorizontallyMenu_SegmenterSelected(app, event)
            
            % Flip image data, update dimensions, show image
            app.OriginalSegmenterImageData = fliplr(app.OriginalSegmenterImageData);
            app.Mask = fliplr(app.Mask);
            app.GreenScreen = fliplr(app.GreenScreen);
            app.SavedImageSegmenter = fliplr(app.SavedImageSegmenter);
            app.SavedMaskSegmenter = fliplr(app.SavedMaskSegmenter);
            RefreshImage(app, 'segmenter');
        end

        % Menu selected function: ResetViewMenu_Segmenter
        function ResetViewMenu_SegmenterSelected(app, event)
            
            % Reset zoom
            app.UIAxes_Segmenter.XLim = [-inf inf];
            app.UIAxes_Segmenter.YLim = [-inf inf];

            % Reset contrast and brightness then refresh
            app.BrightnessSlider_Segmenter.Value = 0;
            app.ContrastSlider_Segmenter.Value = 0;
            RefreshImage(app, 'segmenter');
        end

        % Menu selected function: PermuteMenu_3_4
        function PermuteMenu_3_4Selected(app, event)
                
            selection = uiconfirm(app.UIFigure,'Permute experiment 3rd and 4th dimensions?','Permute Dimensions', 'Icon','question');
            switch selection
                case 'OK'
                    app.OriginalSegmenterImageData = permute(app.OriginalSegmenterImageData, [1,2,4,3]);
                    app.SavedImageSegmenter = permute(app.SavedImageSegmenter, [1,2,4,3]);
                    app.SavedMaskSegmenter = permute(app.SavedMaskSegmenter, [1,2,4,3]);

                    temp_limits = app.SliceSpinner_Segmenter.Limits;
                    temp_value = app.SliceSpinner_Segmenter.Value;
                    app.SliceSpinner_Segmenter.Limits = app.Dim4Spinner_Segmenter.Limits;
                    app.SliceSpinner_Segmenter.Value = app.Dim4Spinner_Segmenter.Value;
                    app.SliceSlider_Segmenter.Limits = app.Dim4Spinner_Segmenter.Limits;
                    app.SliceSlider_Segmenter.Value = app.Dim4Spinner_Segmenter.Value;
                    app.Dim4Spinner_Segmenter.Limits = temp_limits;
                    app.Dim4Spinner_Segmenter.Value = temp_value;

                case 'Cancel'
                    return
            end
        end

        % Menu selected function: PermuteMenu_3_5
        function PermuteMenu_3_5Selected(app, event)
            selection = uiconfirm(app.UIFigure,'Permute experiment 3rd and 5th dimensions?','Permute Dimensions', 'Icon','question');
            switch selection
                case 'OK'
                    app.OriginalSegmenterImageData = permute(app.OriginalSegmenterImageData, [1,2,5,4,3]);
                    app.SavedImageSegmenter = permute(app.SavedImageSegmenter, [1,2,5,4,3]);
                    app.SavedMaskSegmenter = permute(app.SavedMaskSegmenter, [1,2,5,4,3]);

                    temp_value_slice = app.SliceSpinner_Segmenter.Value;
                    temp_limits_slice = app.SliceSpinner_Segmenter.Limits;

                    app.SliceSpinner_Segmenter.Limits = app.Dim5Spinner_Segmenter.Limits;
                    app.SliceSpinner_Segmenter.Value = app.Dim5Spinner_Segmenter.Value;
                    app.SliceSlider_Segmenter.Limits = app.Dim5Spinner_Segmenter.Limits;
                    app.SliceSlider_Segmenter.Value = app.Dim5Spinner_Segmenter.Value;
                    app.Dim5Spinner_Segmenter.Limits = temp_limits_slice;
                    app.Dim5Spinner_Segmenter.Value = temp_value_slice;

                case 'Cancel'
                    return
            end
        end

        % Menu selected function: PermuteMenu_4_5
        function PermuteMenu_4_5Selected(app, event)
            selection = uiconfirm(app.UIFigure,'Permute experiment 4th and 5th dimensions?','Permute Dimensions', 'Icon','question');
            switch selection
                case 'OK'
                    app.OriginalSegmenterImageData = permute(app.OriginalSegmenterImageData, [1,2,3,5,4]);
                    app.SavedImageSegmenter = permute(app.SavedImageSegmenter, [1,2,3,5,4]);
                    app.SavedMaskSegmenter = permute(app.SavedMaskSegmenter, [1,2,3,5,4]);

                    temp_limits = app.Dim5Spinner_Segmenter.Limits;
                    temp_value = app.Dim5Spinner_Segmenter.Value;
                    app.Dim5Spinner_Segmenter.Limits = app.Dim4Spinner_Segmenter.Limits;
                    app.Dim5Spinner_Segmenter.Value = app.Dim4Spinner_Segmenter.Value;
                    app.Dim4Spinner_Segmenter.Limits = temp_limits;
                    app.Dim4Spinner_Segmenter.Value = temp_value;

                case 'Cancel'
                    return
            end
        end

        % Selection changed function: ColormapButtonGroup
        function ColormapButtonGroupSelectionChanged(app, event)
            RefreshImage(app, 'segmenter');
        end

        % Button pushed function: InitialselectionButton
        function InitialselectionButtonPushed(app, event)
            app.Mask = false(app.SequenceDims(1:2));
            RefreshImage(app, 'segmenter');

            % Draw initial ROI, create mask and masked image
            init_Region = drawfreehand(app.UIAxes_Segmenter);
            app.Mask = createMask(init_Region, app.OriginalSegmenterImageData(:,:,app.SliceSpinner_Segmenter.Value));
            delete(init_Region);
            
            % Show image with mask overlaid on top
            RefreshImage(app, 'segmenter');
            
            app.ImageshownSwitch.Enable = 'on'; % Turn on image shown switch
            app.AutoClusterButton.Enable = 'on'; % Turn on auto cluster button
        end

        % Button pushed function: AutoClusterButton
        function AutoClusterButtonPushed(app, event)
            
            % Get clusters on masked image, calculate best overlap using sorensen dice coefficient and
            % select best cluster
            clusters = imsegkmeans(single(app.CurrentSlice).*app.Mask,2,'NumAttempts',2);
            cluster_1_dice = dice(clusters==1, app.Mask);
            cluster_2_dice = dice(clusters==2, app.Mask);
            if cluster_1_dice > cluster_2_dice
                app.Mask = clusters == 1;
            else 
                app.Mask = clusters == 2;
            end
            
            % Show image with mask overlaid on top
            RefreshImage(app, 'segmenter');   
            
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
            RefreshImage(app, 'segmenter');
            
        end

        % Button pushed function: CloseMaskButton
        function CloseMaskButtonPushed(app, event)
            
            % Construct structuring element, close image mask
            disk_Radius = app.DiskradiusSpinner.Value;
            SE = strel('disk', disk_Radius, 0);
            app.Mask = imclose(app.Mask, SE);
            
            % Show image with mask overlaid on top
            RefreshImage(app, 'segmenter');
            
        end

        % Button pushed function: FreeButton_Add
        function FreeButton_AddPushed(app, event)
            
            % Draw freehand ROI
            app.FreeROI = drawfreehand(app.UIAxes_Segmenter, 'InteractionsAllowed', "reshape", 'FaceAlpha', 0.1, 'Color', [0.4660 0.6740 0.1880]);
            app.ROI_id = "add";
        end

        % Button pushed function: FreeButton_Remove
        function FreeButton_RemovePushed(app, event)
            
            % Draw freehand ROI
            app.FreeROI = drawfreehand(app.UIAxes_Segmenter, 'InteractionsAllowed', "reshape", 'FaceAlpha', 0.1, 'Color', [0.6350 0.0780 0.1840]);
            app.ROI_id = "remove";
        end

        % Button pushed function: PolyButton_Add
        function PolyButton_AddPushed(app, event)
            
            % Draw polygon ROI
            app.FreeROI = drawpolygon(app.UIAxes_Segmenter, 'InteractionsAllowed', "reshape", 'FaceAlpha', 0.1, 'Color', [0.4660 0.6740 0.1880]);
            app.ROI_id = "add";
        end

        % Button pushed function: PolyButton_Remove
        function PolyButton_RemovePushed(app, event)
            
            % Draw polygon ROI
            app.FreeROI = drawpolygon(app.UIAxes_Segmenter, 'InteractionsAllowed', "reshape", 'FaceAlpha', 0.1, 'Color', [0.6350 0.0780 0.1840]);
            app.ROI_id = "remove";
        end

        % Button pushed function: ConfirmButton
        function ConfirmButtonPushed(app, event)
                        
            % Update mask using new ROI based on current image displayed -
            % masked or original with overlaid transparent mask
            switch app.ROI_id
                case 'add'
                    try
                        added_Mask = app.FreeROI.createMask(app.FreeImage);
                        app.Mask = app.Mask|added_Mask;
                    catch
                    end
                    RefreshImage(app, 'segmenter');
                case 'remove'
                    try
                        removed_Mask = app.FreeROI.createMask(app.FreeImage);
                        app.Mask(removed_Mask) = 0;
                    catch
                    end
                    RefreshImage(app, 'segmenter');
            end
            
        end

        % Button pushed function: DeleteButton
        function DeleteButtonPushed(app, event)
            
            % Delete current ROI
            delete(app.FreeROI)
        end

        % Value changed function: ImageshownSwitch
        function ImageshownSwitchValueChanged(app, event)
            RefreshImage(app, 'segmenter');
        end

        % Button pushed function: MainselectionButton_Hemisphere
        function MainselectionButton_HemispherePushed(app, event)
            app.SequenceDims = size(app.OriginalSegmenterImageData);
            app.ImageshownSwitch.Value = 'Masked';
            RefreshImage(app, 'segmenter');

            % Create hemisphere mask screens
            app.BlueScreen = cat(3, zeros(app.SequenceDims(1:2)), zeros(app.SequenceDims(1:2)), ones(app.SequenceDims(1:2)));
            app.RedScreen = cat(3, ones(app.SequenceDims(1:2)), zeros(app.SequenceDims(1:2)), zeros(app.SequenceDims(1:2)));
            
            % Draw freehand ROI
            initial_Hemi = drawfreehand(app.UIAxes_Segmenter);
            initial_hemiMask = initial_Hemi.createMask(app.FreeImage);
            delete(initial_Hemi);
            
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
            
            hold(app.UIAxes_Segmenter, "on");
            mask_overlay_Blue = imshow(app.BlueScreen, "Parent",app.UIAxes_Segmenter);
            mask_overlay_Red = imshow(app.RedScreen, "Parent",app.UIAxes_Segmenter);
            hold(app.UIAxes_Segmenter, "off");
            mask_overlay_Blue.AlphaData = app.LeftHemi-0.9;
            mask_overlay_Red.AlphaData = app.RightHemi-0.9;
        end

        % Button pushed function: CorrectionButton_Hemisphere
        function CorrectionButton_HemispherePushed(app, event)
            app.ImageshownSwitch.Value = 'Masked';
            RefreshImage(app, 'segmenter');

            % Draw freehand ROI
            correction_Hemi = drawfreehand(app.UIAxes_Segmenter);
            correction_hemiMask = correction_Hemi.createMask(app.FreeImage);
            delete(correction_Hemi);
            
            % Update heimsphere masks and display overlaid image
            if app.RightredButton.Value == true
                app.RightHemi = correction_hemiMask|app.RightHemi;
                app.LeftHemi(correction_hemiMask) = 0;
            else
                app.LeftHemi = correction_hemiMask|app.LeftHemi;
                app.RightHemi(correction_hemiMask) = 0;
            end
            
            hold(app.UIAxes_Segmenter, "on");
            mask_overlay_Blue = imshow(app.BlueScreen, "Parent",app.UIAxes_Segmenter);
            mask_overlay_Red = imshow(app.RedScreen, "Parent",app.UIAxes_Segmenter);
            hold(app.UIAxes_Segmenter, "off");
            mask_overlay_Blue.AlphaData = app.LeftHemi-0.9;
            mask_overlay_Red.AlphaData = app.RightHemi-0.9; 
        end

        % Button pushed function: MainselectionButton_Lesion
        function MainselectionButton_LesionPushed(app, event)
            app.SequenceDims = size(app.OriginalSegmenterImageData);
            app.ImageshownSwitch.Value = 'Masked';
            RefreshImage(app, 'segmenter');
            
            % Create lesion mask screen
            app.RedScreen = cat(3, ones(app.SequenceDims(1:2)), zeros(app.SequenceDims(1:2)), zeros(app.SequenceDims(1:2)));
             
            % Draw freehand ROI, update lesion mask, display overlaid image
            initial_Lesion = drawfreehand(app.UIAxes_Segmenter);
            app.Lesion = initial_Lesion.createMask(app.FreeImage);
            delete(initial_Lesion);
            
            hold(app.UIAxes_Segmenter, "on");
            mask_overlay_Lesion = imshow(app.RedScreen, "Parent",app.UIAxes_Segmenter);
            hold(app.UIAxes_Segmenter, "off");
            mask_overlay_Lesion.AlphaData = app.Lesion-0.9;
        end

        % Button pushed function: FreeButton_Add_Lesion
        function FreeButton_Add_LesionPushed(app, event)
            app.ImageshownSwitch.Value = 'Masked';
            RefreshImage(app, 'segmenter');

            % Draw freehand ROI, update lesion mask, display overlaid image
            add_Lesion = drawfreehand(app.UIAxes_Segmenter);
            add_lesion_Mask = add_Lesion.createMask(app.FreeImage);
            app.Lesion = app.Lesion|add_lesion_Mask;
            delete(add_Lesion);
            
            hold(app.UIAxes_Segmenter, "on");
            mask_overlay_Lesion = imshow(app.RedScreen, "Parent",app.UIAxes_Segmenter);
            hold(app.UIAxes_Segmenter, "off");
            mask_overlay_Lesion.AlphaData = app.Lesion-0.9;
        end

        % Button pushed function: FreeButton_Remove_Lesion
        function FreeButton_Remove_LesionPushed(app, event)
            app.ImageshownSwitch.Value = 'Masked';
            RefreshImage(app, 'segmenter');

            % Draw freehand ROI, update lesion mask, display overlaid image
            remove_Lesion = drawfreehand(app.UIAxes_Segmenter);
            remove_lesion_Mask = remove_Lesion.createMask(app.FreeImage);
            app.Lesion(remove_lesion_Mask) = 0;
            delete(remove_Lesion);
            
            hold(app.UIAxes_Segmenter, "on");
            mask_overlay_Lesion = imshow(app.RedScreen, "Parent",app.UIAxes_Segmenter);
            hold(app.UIAxes_Segmenter, "off");
            mask_overlay_Lesion.AlphaData = app.Lesion-0.9;
        end

        % Button pushed function: SavesliceButton
        function SavesliceButtonPushed(app, event)
           app.SequenceDims = size(app.OriginalSegmenterImageData);

            % Save slice image based on number of dimensions in original matrix
            num_dims = size(app.SequenceDims);
            if num_dims(2) == 4 % What if num_dims = 5?
                for i=1:app.SequenceDims(4)
                    app.SavedImageSegmenter(:,:,app.SliceSpinner_Segmenter.Value,i) = app.Mask.*app.OriginalSegmenterImageData(:,:,app.SliceSpinner_Segmenter.Value,i);
                end
            else
                app.SavedImageSegmenter(:,:,app.SliceSpinner_Segmenter.Value) = app.Mask.*app.OriginalSegmenterImageData(:,:,app.SliceSpinner_Segmenter.Value);
            end
            
            % Save slice mask
            app.SavedMaskSegmenter(:,:,app.SliceSpinner_Segmenter.Value) = app.Mask;
            
            % Update last action label
            app.ActionLabel.Text = "Slice " + num2str(app.SliceSpinner_Segmenter.Value) + " saved to temporary data.";
        end

        % Button pushed function: ResetsliceButton
        function ResetsliceButtonPushed(app, event)
            app.SequenceDims = size(app.OriginalSegmenterImageData);

            % Display original slice image
            RefreshImage(app, 'segmenter'); 
            
            % Reset zoom
            app.UIAxes_Segmenter.XLim = [-inf inf];
            app.UIAxes_Segmenter.YLim = [-inf inf];
            
            % Reset slice image based on number of dimensions in original
            % matrix
            num_dims = size(app.SequenceDims);
            if num_dims(2) == 4 %What if num_dims(2) = 5?
                for i=1:app.SequenceDims(4)
                    app.SavedImageSegmenter(:,:,app.SliceSpinner_Segmenter.Value,i) = zeros(app.SequenceDims(1:2));
                end
            else
                app.SavedImageSegmenter(:,:,app.SliceSpinner_Segmenter.Value) = zeros(app.SequenceDims(1:2));
            end
            
            % Reset slice mask
            app.SavedMaskSegmenter(:,:,app.SliceSpinner_Segmenter.Value) = zeros(app.SequenceDims(1:2));
            
            app.ImageshownSwitch.Enable = 'off'; % Turn off image shown switch
            app.ImageshownSwitch.Value = "Overlay"; % Set image shown value to overlay
            app.AutoClusterButton.Enable = 'off'; % Turn off auto cluster button
            
            % Update last action label
            app.ActionLabel.Text = "Slice " + num2str(app.SliceSpinner_Segmenter.Value) + " reset in temporary data.";
        end

        % Button pushed function: SavesequenceButton
        function SavesequenceButtonPushed(app, event)
            
            % Construct temporary table of saved data
            temp_Table = table({app.SavedImageSegmenter}, {app.SavedMaskSegmenter}, 'RowNames', {app.SegmentDropDown.Value}, 'VariableNames', {'Image' 'Mask'});

            try
                % Move temporarily saved data to permanent app table
                app.SavedTableSegmenter = [app.SavedTableSegmenter; temp_Table];

                % Update DSC and Registration tab drop down menus
                app.DropDownItemsSaved = cat(1, app.DropDownItemsSaved, {app.SegmentDropDown.Value});
                app.SelectvolumetricdataDropDown.Items = app.DropDownItemsSaved;
                app.SelectASLDropDown.Items = app.DropDownItemsSaved;
                app.SelectfixedDropDown.Items = app.DropDownItemsSaved;
                app.SelectmovingDropDown.Items = app.DropDownItemsSaved;
                app.SelectparameterDropDown.Items = app.DropDownItemsSaved;
                
                % Display confirmation figure
                uiconfirm(app.UIFigure, "Segmented sequence saved to permanent data.", "","Options",{'OK'},"DefaultOption",1, "Icon","success")

            catch ME
                switch ME.identifier
                    case 'MATLAB:table:DuplicateRowNames'
                        selection = uiconfirm(app.UIFigure,'Saved data already contains an experiment under the same name, do you want to overwrite the data?','Overwrite data', 'Icon','question');
                        switch selection
                            case 'OK'

                                % Overwrite data of currently saved experiment under same identifier
                                app.SavedTableSegmenter.Image(app.SegmentDropDown.Value) = {app.SavedImageSegmenter};
                                app.SavedTableSegmenter.Mask(app.SegmentDropDown.Value) = {app.SavedMaskSegmenter};
                                
                                % Display confirmation figure
                                uiconfirm(app.UIFigure, "Segmented sequence saved to permanent data.", "","Options",{'OK'},"DefaultOption",1, "Icon","success")

                            case 'Cancel'
                                return
                        end
                    otherwise
                end
            end
            
            
        end

        % Button pushed function: ExportsequenceButton
        function ExportsequenceButtonPushed(app, event)
            
            % Get directory and export image and mask data in NIfTI format
            temp_dir = uigetdir;
            temp_dir = append(temp_dir, '\');
            niftiwrite(app.SavedImageSegmenter, append(temp_dir, 'Image'))
            niftiwrite(app.SavedMaskSegmenter, append(temp_dir, 'Mask'))
            
            % Update last action label
            %app.ActionLabel.Text = "Segmented sequence mask and image data exported in NIfTI format.";
            uiconfirm(app.UIFigure, "Segmented sequence mask and image data exported in NIfTI format.", "","Options",{'OK'},"DefaultOption",1, "Icon","success")
        end

        % Button pushed function: SegmentusingexternalmaskButton
        function SegmentusingexternalmaskButtonPushed(app, event)
            
            % Get external mask data
            [temp_file, temp_dir] = uigetfile('.nii');
            figure(app.UIFigure)
            temp_Mask = niftiread(cat(2, temp_dir, temp_file));
            app.SavedMaskSegmenter = temp_Mask;
            
            % Upade saved image data with segmented data using loaded
            % external mask
            num_dims = size(app.SequenceDims);
            if num_dims(2) == 4|num_dims(2) == 5 %#ok<OR2> 
                for j=1:app.SequenceDims(3)
                    for i=1:app.SequenceDims(4)
                        app.SavedImageSegmenter(:,:,j,i) = temp_Mask(:,:,j).*app.OriginalSegmenterImageData(:,:,j,i);
                    end
                end
            elseif num_dims(2) == 3
                for i=1:app.SequenceDims(3)
                    app.SavedImageSegmenter(:,:,i) = temp_Mask(:,:,i).*app.OriginalSegmenterImageData(:,:,i);
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
            TE = table2array(app.ExperimentPropertyTable({drop_Value}, "TE"));
            TR = table2array(app.ExperimentPropertyTable({drop_Value}, "TR"));            
            work_Data = cell2mat(app.SavedTableSegmenter.Image(drop_Value));
            app.WorkMaskDSC = cell2mat(app.SavedTableSegmenter.Mask(drop_Value));
            
            % Calculate and display DSC maps
            if numel(size(work_Data)) == 4   
                [cbv,cbf,mtt,cbv_lc,ttp,mask,aif,conc,s0]=DSC_mri_core(work_Data, TE, TR, custom_options); %#ok<ASGLU> 
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
                app.SliceSpinner_DSCMaps.Enable = 'on';
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

            app.DSCMapDropDown.Enable = 'on';
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
            app.ImageDataASL = cell2mat(app.SavedTableSegmenter.Image(drop_Value));
            app.WorkMaskASL = cell2mat(app.SavedTableSegmenter.Mask(drop_Value));
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
            
            if (app.SliceSpinner_DSCMaps.Value == app.SliceSpinner_ASL.Value) && (size(slice_ASL) == size(slice_DSC))
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

            if (app.SliceSpinner_DSCMaps.Value == app.SliceSpinner_ASL.Value) && (size(slice_ASL) == size(slice_DSC))
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
                    
                %out = up/sqrt(d1*d2);
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
            
            if (app.SliceSpinner_DSCMaps.Value == app.SliceSpinner_ASL.Value) && (size(slice_ASL) == size(slice_DSC))
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
                
                %out = up/sqrt(d1*d2);
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
            
            %out = up/sqrt(d1*d2);
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
            fixed_Image = cell2mat(app.SavedTableSegmenter.Image(app.SelectfixedDropDown.Value));
            dims = size(fixed_Image);
            n_dims = size(dims);
            if n_dims(2)>=4
                app.FixDim4CheckBox_Fixed.Enable = 'on';
                app.FixDim4CheckBox_Fixed.Value = 0;

                dim4_size = dims(4);
                app.Dim4Spinner_Fixed.Limits = [1, dim4_size];
                app.Dim4Spinner_Fixed.Value = 1;
            else 
                app.FixDim4CheckBox_Fixed.Enable = 'off';
                app.FixDim4CheckBox_Fixed.Value = 0;
                app.Dim4Spinner_Fixed.Enable = 'off';
                app.Dim4Spinner_Fixed.Value = 1;
            end
            dim3_size = dims(3);
            app.SliceSpinner_Fixed.Limits = [1, dim3_size];
            app.SliceSpinner_Fixed.Value = 1;
        end

        % Value changed function: FixDim4CheckBox_Fixed
        function FixDim4CheckBox_FixedValueChanged(app, event)
            value = app.FixDim4CheckBox_Fixed.Value;
            
            if value == 1
                app.Dim4Spinner_Fixed.Enable = 'on';
            else
                app.Dim4Spinner_Fixed.Enable = 'off';
            end
        end

        % Value changed function: SelectmovingDropDown
        function SelectmovingDropDownValueChanged(app, event)
            moving_Image = cell2mat(app.SavedTableSegmenter.Image(app.SelectmovingDropDown.Value));
            dims = size(moving_Image);
            n_dims = size(dims);
            dim3_size = dims(3);
            if n_dims(2)>=4
                app.FixDim4CheckBox_Moving.Enable = 'on';
                app.FixDim4CheckBox_Moving.Value = 0;

                dim4_size = dims(4);
                app.Dim4Spinner_Moving.Limits = [1, dim4_size];
                app.Dim4Spinner_Moving.Value = 1;
            else 
                app.FixDim4CheckBox_Moving.Enable = 'off';
                app.FixDim4CheckBox_Moving.Value = 0;
                app.Dim4Spinner_Moving.Enable = 'off';
                app.Dim4Spinner_Moving.Value = 1;
            end
            
            app.SliceSpinner_Moving.Limits = [1, dim3_size];
            app.SliceSpinner_Moving.Value = 1;
        end

        % Value changed function: FixDim4CheckBox_Moving
        function FixDim4CheckBox_MovingValueChanged(app, event)
            value = app.FixDim4CheckBox_Moving.Value;
            
            if value == 1
                app.Dim4Spinner_Moving.Enable = 'on';
            else
                app.Dim4Spinner_Moving.Enable = 'off';
            end
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
            parameter_Image = cell2mat(app.SavedTableSegmenter.Image(app.SelectparameterDropDown.Value));
            dims = size(parameter_Image);
            n_dims = size(dims);
            if n_dims(2)>=4
                app.FixDim4CheckBox_Parameter.Enable = 'on';
                app.FixDim4CheckBox_Parameter.Value = 0;

                dim4_size = dims(4);
                app.Dim4Spinner_Parameter.Limits = [1, dim4_size];
                app.Dim4Spinner_Parameter.Value = 1;
            else 
                app.FixDim4CheckBox_Parameter.Enable = 'off';
                app.FixDim4CheckBox_Parameter.Value = 0;
                app.Dim4Spinner_Parameter.Enable = 'off';
                app.Dim4Spinner_Parameter.Value = 1;
            end
            dim3_size = dims(3);
            app.SliceSpinner_Parameter.Limits = [1, dim3_size];
            app.SliceSpinner_Parameter.Value = 1;
        end

        % Value changed function: FixDim4CheckBox_Parameter
        function FixDim4CheckBox_ParameterValueChanged(app, event)
            value = app.FixDim4CheckBox_Parameter.Value;
            
            if value == 1
                app.Dim4Spinner_Parameter.Enable = 'on';
            else
                app.Dim4Spinner_Parameter.Enable = 'off';
            end
        end

        % Button pushed function: AddsliceButton
        function AddsliceButtonPushed(app, event)
        use_parameter_value = app.UsedifferentparametermapCheckBox.Value;
            if use_parameter_value == 1
                slice_instruction = append('m', num2str(app.SliceSpinner_Moving.Value), 'f', num2str(app.SliceSpinner_Fixed.Value), 'p', num2str(app.SliceSpinner_Parameter.Value));
                app.RegistrationInstructionsTextArea.Value = append(app.RegistrationInstructionsTextArea.Value, ' ', slice_instruction);

            else
                slice_instruction = append('m', num2str(app.SliceSpinner_Moving.Value), 'f', num2str(app.SliceSpinner_Fixed.Value));
                app.RegistrationInstructionsTextArea.Value = append(app.RegistrationInstructionsTextArea.Value, ' ', slice_instruction);
            end
        end

        % Value changed function: ManualinstructioninputCheckBox
        function ManualinstructioninputCheckBoxValueChanged(app, event)
            value = app.ManualinstructioninputCheckBox.Value;
               
            if value == 1
                app.RegistrationInstructionsTextArea.Editable = 'on';
            else
                app.RegistrationInstructionsTextArea.Editable = 'off';
            end
        end

        % Button pushed function: RegisterButton
        function RegisterButtonPushed(app, event)
            progress = uiprogressdlg(app.UIFigure,'Title','Please wait', 'Indeterminate','on', 'Message', 'Registering images');
            drawnow
            split_instr = split(app.RegistrationInstructionsTextArea.Value, ' ');
            split_instr = split_instr(2:end);

            app.RegisteredImageData = [];
            %disp(split_instr)
            for i=1:length(split_instr)

                slice_instr = cell2mat(split_instr(i));
                %disp(slice_instr)
                F_ind = strfind(slice_instr, 'f');

                moving_slice = str2num(slice_instr(2:(F_ind-1))); %#ok<ST2NM> 
                moving_Image = cell2mat(app.SavedTableSegmenter.Image(app.SelectmovingDropDown.Value));
                if app.FixDim4CheckBox_Moving.Value == 1   
                    moving_Image_py = py.numpy.array(moving_Image(:,:,moving_slice,app.Dim4Spinner_Moving.Value));
                else
                    moving_Image_py = py.numpy.array(moving_Image(:,:,moving_slice));
                end

                if ~contains(slice_instr, 'p') == 1
                    fixed_slice = str2num(slice_instr((F_ind+1):end)); %#ok<ST2NM> 

                    fixed_Image = cell2mat(app.SavedTableSegmenter.Image(app.SelectfixedDropDown.Value));
                    if app.FixDim4CheckBox_Fixed.Value == 1   
                        fixed_Image_py = py.numpy.array(fixed_Image(:,:,fixed_slice,app.Dim4Spinner_Fixed.Value));
                    else
                        fixed_Image_py = py.numpy.array(fixed_Image(:,:,fixed_slice));
                    end

                    resultImage_py = pyrunfile("Basic.py", "resultArray", fixIm = fixed_Image_py, movIm = moving_Image_py);
                    resultImage = single(resultImage_py);
                    app.RegisteredImageData = cat(3, app.RegisteredImageData, resultImage);
                else
                    P_ind = strfind(slice_instr, 'p');
                    fixed_slice = str2num(slice_instr((F_ind+1):(P_ind-1))); %#ok<ST2NM> 
                    param_slice = str2num(slice_instr((P_ind+1):end)); %#ok<ST2NM> 

                    fixed_Image = cell2mat(app.SavedTableSegmenter.Image(app.SelectfixedDropDown.Value));
                    if app.FixDim4CheckBox_Fixed.Value == 1   
                        fixed_Image_py = py.numpy.array(fixed_Image(:,:,fixed_slice,app.Dim4Spinner_Fixed.Value));
                    else
                        fixed_Image_py = py.numpy.array(fixed_Image(:,:,fixed_slice));
                    end

                    parameter_Image = cell2mat(app.SavedTableSegmenter.Image(app.SelectparameterDropDown.Value));
                    if app.FixDim4CheckBox_Parameter.Value == 1   
                        parameter_Image_py = py.numpy.array(parameter_Image(:,:,param_slice,app.Dim4Spinner_Parameter.Value));
                    else
                        parameter_Image_py = py.numpy.array(parameter_Image(:,:,param_slice));
                    end
    
                    resultImage_py = pyrunfile("Transformix.py", "resultArray", fixIm = fixed_Image_py, movIm = moving_Image_py, paramIm = parameter_Image_py);
                    resultImage = single(resultImage_py);
                    app.RegisteredImageData = cat(3, app.RegisteredImageData, resultImage);
                end
                %disp(moving_slice)
                %disp(fixed_slice)
                %disp(param_slice)
            end

            imshow(app.RegisteredImageData(:,:,1), [], 'Parent', app.UIAxes_Registration, Colormap = turbo);

            dims_reg = size(app.RegisteredImageData);
            try
                dim3_size = dims_reg(3);
                app.SliceSpinner_Registration.Limits = [1, dim3_size];
                app.SliceSpinner_Registration.Value = 1;
            catch
                app.SliceSpinner_Registration.Enable = 'off';
                app.SliceSpinner_Registration.Value = 1;
            end

            % Close the dialog box
            close(progress)
        end

        % Value changed function: SliceSpinner_Registration
        function SliceSpinner_RegistrationValueChanged(app, event)
            value = app.SliceSpinner_Registration.Value;
            imshow(app.RegisteredImageData(:,:,value), [], 'Parent', app.UIAxes_Registration, Colormap = turbo);
        end

        % Button pushed function: ExportRegisteredDataButton
        function ExportRegisteredDataButtonPushed(app, event)
            % Get directory and export image and mask data in NIfTI format
            temp_dir = uigetdir;
            temp_dir = append(temp_dir, '\');
            niftiwrite(app.RegisteredImageData, append(temp_dir, 'RegisteredImageData'))
            
            % Update last action label
            %app.ActionLabel.Text = "Segmented sequence mask and image data exported in NIfTI format.";
            uiconfirm(app.UIFigure, "Registered image data exported in NIfTI format.", "","Options",{'OK'},"DefaultOption",1, "Icon","success")
        end

        % Button pushed function: SaveRegisteredDataButton
        function SaveRegisteredDataButtonPushed(app, event)

            TE_time = 0;
            TR_time = 0;
            visu_AcqProt = {append('Registered data ', num2str(app.RegistrationCounter), '.')};
            try
                voxel_Dims = table2array(app.ExperimentPropertyTable({app.SelectfixedDropDown.Value}, "Voxel dimensions"));
            catch 
                voxel_Dims = [0 0];
            end
            exp_ImageData = {app.RegisteredImageData};

            % Update registration counter used for naming
            app.RegistrationCounter = app.RegistrationCounter+1;

            
            % Construct temporary sequence property table and combine with
            % main
            exp_ID = visu_AcqProt;
            variable_Names = ["Experiment ID", "Image data", "TE", "TR", "Voxel dimensions"];
            temp_Table = table(exp_ID, exp_ImageData, TE_time, TR_time, voxel_Dims, 'RowNames', visu_AcqProt, 'VariableNames', variable_Names);
            app.ExperimentPropertyTable = [app.ExperimentPropertyTable; temp_Table];
            app.UITable.Data=app.ExperimentPropertyTable;
            app.UITable.ColumnName = variable_Names;
            
            % Update drop down items
            app.PreviewDropDown.Items = app.ExperimentPropertyTable.(1);
            app.SegmentDropDown.Items = app.ExperimentPropertyTable.(1);
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

            % Create UIAxes_Preview
            app.UIAxes_Preview = uiaxes(app.PreviewTab);
            app.UIAxes_Preview.Toolbar.Visible = 'off';
            app.UIAxes_Preview.XLimitMethod = 'tight';
            app.UIAxes_Preview.YLimitMethod = 'tight';
            app.UIAxes_Preview.XTick = [];
            app.UIAxes_Preview.XTickLabel = '';
            app.UIAxes_Preview.YTick = [];
            app.UIAxes_Preview.YTickLabel = '';
            app.UIAxes_Preview.Position = [741 123 607 425];

            % Create PreviewLabel
            app.PreviewLabel = uilabel(app.PreviewTab);
            app.PreviewLabel.HorizontalAlignment = 'right';
            app.PreviewLabel.Position = [918 550 48 22];
            app.PreviewLabel.Text = 'Preview';

            % Create PreviewDropDown
            app.PreviewDropDown = uidropdown(app.PreviewTab);
            app.PreviewDropDown.Items = {};
            app.PreviewDropDown.ValueChangedFcn = createCallbackFcn(app, @PreviewDropDownValueChanged, true);
            app.PreviewDropDown.Placeholder = 'None';
            app.PreviewDropDown.Position = [981 550 229 22];
            app.PreviewDropDown.Value = {};

            % Create LoadAllButton
            app.LoadAllButton = uibutton(app.PreviewTab, 'push');
            app.LoadAllButton.ButtonPushedFcn = createCallbackFcn(app, @LoadAllButtonPushed, true);
            app.LoadAllButton.Position = [823 648 100 22];
            app.LoadAllButton.Text = 'Load All';

            % Create StudyfolderEditFieldLabel
            app.StudyfolderEditFieldLabel = uilabel(app.PreviewTab);
            app.StudyfolderEditFieldLabel.HorizontalAlignment = 'right';
            app.StudyfolderEditFieldLabel.Position = [401 647 70 22];
            app.StudyfolderEditFieldLabel.Text = {'Study folder'; ''};

            % Create StudyfolderEditField
            app.StudyfolderEditField = uieditfield(app.PreviewTab, 'text');
            app.StudyfolderEditField.Editable = 'off';
            app.StudyfolderEditField.Position = [479 647 337 22];

            % Create UITable
            app.UITable = uitable(app.PreviewTab);
            app.UITable.ColumnName = {'Column 1'; 'Column 2'; 'Column 3'; 'Column 4'};
            app.UITable.RowName = {};
            app.UITable.Position = [67 96 599 452];

            % Create LoadsingleButton
            app.LoadsingleButton = uibutton(app.PreviewTab, 'push');
            app.LoadsingleButton.ButtonPushedFcn = createCallbackFcn(app, @LoadsingleButtonPushed, true);
            app.LoadsingleButton.Position = [932 648 100 22];
            app.LoadsingleButton.Text = 'Load single';

            % Create Dim5Slider_PreviewLabel
            app.Dim5Slider_PreviewLabel = uilabel(app.PreviewTab);
            app.Dim5Slider_PreviewLabel.HorizontalAlignment = 'right';
            app.Dim5Slider_PreviewLabel.Position = [691 338 44 22];
            app.Dim5Slider_PreviewLabel.Text = 'Dim - 5';

            % Create Dim5Slider_Preview
            app.Dim5Slider_Preview = uislider(app.PreviewTab);
            app.Dim5Slider_Preview.MajorTicks = [];
            app.Dim5Slider_Preview.MajorTickLabels = {''};
            app.Dim5Slider_Preview.Orientation = 'vertical';
            app.Dim5Slider_Preview.ValueChangingFcn = createCallbackFcn(app, @Dim5Slider_PreviewValueChanging, true);
            app.Dim5Slider_Preview.MinorTicks = [];
            app.Dim5Slider_Preview.Enable = 'off';
            app.Dim5Slider_Preview.Position = [714 366 3 150];

            % Create Dim4Slider_PreviewLabel
            app.Dim4Slider_PreviewLabel = uilabel(app.PreviewTab);
            app.Dim4Slider_PreviewLabel.HorizontalAlignment = 'right';
            app.Dim4Slider_PreviewLabel.Position = [691 139 44 22];
            app.Dim4Slider_PreviewLabel.Text = 'Dim - 4';

            % Create Dim4Slider_Preview
            app.Dim4Slider_Preview = uislider(app.PreviewTab);
            app.Dim4Slider_Preview.MajorTicks = [];
            app.Dim4Slider_Preview.MajorTickLabels = {''};
            app.Dim4Slider_Preview.Orientation = 'vertical';
            app.Dim4Slider_Preview.ValueChangingFcn = createCallbackFcn(app, @Dim4Slider_PreviewValueChanging, true);
            app.Dim4Slider_Preview.MinorTicks = [];
            app.Dim4Slider_Preview.Enable = 'off';
            app.Dim4Slider_Preview.Position = [714 167 3 150];

            % Create ResetEnvironment
            app.ResetEnvironment = uibutton(app.PreviewTab, 'push');
            app.ResetEnvironment.ButtonPushedFcn = createCallbackFcn(app, @ResetEnvironmentButtonPushed, true);
            app.ResetEnvironment.Position = [660 613 116 22];
            app.ResetEnvironment.Text = 'Reset environment';

            % Create SliceSpinner_Preview
            app.SliceSpinner_Preview = uispinner(app.PreviewTab);
            app.SliceSpinner_Preview.Limits = [1 100];
            app.SliceSpinner_Preview.ValueChangedFcn = createCallbackFcn(app, @SliceSpinner_PreviewValueChanged, true);
            app.SliceSpinner_Preview.HorizontalAlignment = 'center';
            app.SliceSpinner_Preview.Enable = 'off';
            app.SliceSpinner_Preview.Position = [1184 81 53 22];
            app.SliceSpinner_Preview.Value = 1;

            % Create SliceLabel
            app.SliceLabel = uilabel(app.PreviewTab);
            app.SliceLabel.HorizontalAlignment = 'right';
            app.SliceLabel.Position = [893 81 31 22];
            app.SliceLabel.Text = 'Slice';

            % Create SliceSlider_Preview
            app.SliceSlider_Preview = uislider(app.PreviewTab);
            app.SliceSlider_Preview.Limits = [1 100];
            app.SliceSlider_Preview.MajorTicks = [];
            app.SliceSlider_Preview.MajorTickLabels = {};
            app.SliceSlider_Preview.ValueChangingFcn = createCallbackFcn(app, @SliceSlider_PreviewValueChanging, true);
            app.SliceSlider_Preview.MinorTicks = [];
            app.SliceSlider_Preview.Position = [945 90 221 3];
            app.SliceSlider_Preview.Value = 1;

            % Create BrightnessSliderLabel
            app.BrightnessSliderLabel = uilabel(app.PreviewTab);
            app.BrightnessSliderLabel.HorizontalAlignment = 'center';
            app.BrightnessSliderLabel.Position = [1355 341 62 22];
            app.BrightnessSliderLabel.Text = 'Brightness';

            % Create BrightnessSlider_Preview
            app.BrightnessSlider_Preview = uislider(app.PreviewTab);
            app.BrightnessSlider_Preview.Limits = [-1 1];
            app.BrightnessSlider_Preview.MajorTicks = 0;
            app.BrightnessSlider_Preview.Orientation = 'vertical';
            app.BrightnessSlider_Preview.ValueChangingFcn = createCallbackFcn(app, @BrightnessSlider_PreviewValueChanging, true);
            app.BrightnessSlider_Preview.MinorTicks = [];
            app.BrightnessSlider_Preview.Enable = 'off';
            app.BrightnessSlider_Preview.Position = [1384 371 3 150];

            % Create ContrastSliderLabel
            app.ContrastSliderLabel = uilabel(app.PreviewTab);
            app.ContrastSliderLabel.HorizontalAlignment = 'center';
            app.ContrastSliderLabel.Position = [1359 143 51 22];
            app.ContrastSliderLabel.Text = 'Contrast';

            % Create ContrastSlider_Preview
            app.ContrastSlider_Preview = uislider(app.PreviewTab);
            app.ContrastSlider_Preview.Limits = [-1 1];
            app.ContrastSlider_Preview.MajorTicks = 0;
            app.ContrastSlider_Preview.Orientation = 'vertical';
            app.ContrastSlider_Preview.ValueChangingFcn = createCallbackFcn(app, @ContrastSlider_PreviewValueChanging, true);
            app.ContrastSlider_Preview.MinorTicks = [];
            app.ContrastSlider_Preview.Enable = 'off';
            app.ContrastSlider_Preview.Position = [1383 173 3 150];

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
            app.UIAxes_Segmenter.Position = [6 62 1027 662];

            % Create SelectexperimenttosegmentDropDownLabel
            app.SelectexperimenttosegmentDropDownLabel = uilabel(app.SegmenterTab);
            app.SelectexperimenttosegmentDropDownLabel.HorizontalAlignment = 'right';
            app.SelectexperimenttosegmentDropDownLabel.Position = [1193 680 164 22];
            app.SelectexperimenttosegmentDropDownLabel.Text = 'Select experiment to segment';

            % Create SegmentDropDown
            app.SegmentDropDown = uidropdown(app.SegmenterTab);
            app.SegmentDropDown.Items = {};
            app.SegmentDropDown.ValueChangedFcn = createCallbackFcn(app, @SegmentDropDownValueChanged, true);
            app.SegmentDropDown.Placeholder = 'None';
            app.SegmentDropDown.Position = [1175 650 202 21];
            app.SegmentDropDown.Value = {};

            % Create SliceSpinner_Segmenter
            app.SliceSpinner_Segmenter = uispinner(app.SegmenterTab);
            app.SliceSpinner_Segmenter.ValueChangedFcn = createCallbackFcn(app, @SliceSpinner_SegmenterValueChanged, true);
            app.SliceSpinner_Segmenter.Position = [460 18 47 22];
            app.SliceSpinner_Segmenter.Value = 1;

            % Create ImageshownSwitchLabel
            app.ImageshownSwitchLabel = uilabel(app.SegmenterTab);
            app.ImageshownSwitchLabel.HorizontalAlignment = 'center';
            app.ImageshownSwitchLabel.Position = [1237 546 77 22];
            app.ImageshownSwitchLabel.Text = {'Image shown'; ''};

            % Create ImageshownSwitch
            app.ImageshownSwitch = uiswitch(app.SegmenterTab, 'slider');
            app.ImageshownSwitch.Items = {'Overlay', 'Masked'};
            app.ImageshownSwitch.ValueChangedFcn = createCallbackFcn(app, @ImageshownSwitchValueChanged, true);
            app.ImageshownSwitch.Enable = 'off';
            app.ImageshownSwitch.Position = [1252 575 45 20];
            app.ImageshownSwitch.Value = 'Overlay';

            % Create ResetsliceButton
            app.ResetsliceButton = uibutton(app.SegmenterTab, 'push');
            app.ResetsliceButton.ButtonPushedFcn = createCallbackFcn(app, @ResetsliceButtonPushed, true);
            app.ResetsliceButton.Position = [1166 102 100 22];
            app.ResetsliceButton.Text = 'Reset slice';

            % Create IBrainsegmentationLabel
            app.IBrainsegmentationLabel = uilabel(app.SegmenterTab);
            app.IBrainsegmentationLabel.Position = [1216 513 119 22];
            app.IBrainsegmentationLabel.Text = {'I. Brain segmentation'; ''};

            % Create SavesliceButton
            app.SavesliceButton = uibutton(app.SegmenterTab, 'push');
            app.SavesliceButton.ButtonPushedFcn = createCallbackFcn(app, @SavesliceButtonPushed, true);
            app.SavesliceButton.Position = [1276 102 100 22];
            app.SavesliceButton.Text = 'Save slice';

            % Create ActionLabel
            app.ActionLabel = uilabel(app.SegmenterTab);
            app.ActionLabel.HorizontalAlignment = 'center';
            app.ActionLabel.FontAngle = 'italic';
            app.ActionLabel.Position = [1124 70 293 25];
            app.ActionLabel.Text = 'Last performed action will be shown here';

            % Create SavesequenceButton
            app.SavesequenceButton = uibutton(app.SegmenterTab, 'push');
            app.SavesequenceButton.ButtonPushedFcn = createCallbackFcn(app, @SavesequenceButtonPushed, true);
            app.SavesequenceButton.Position = [1166 40 100 22];
            app.SavesequenceButton.Text = 'Save sequence';

            % Create ExportsequenceButton
            app.ExportsequenceButton = uibutton(app.SegmenterTab, 'push');
            app.ExportsequenceButton.ButtonPushedFcn = createCallbackFcn(app, @ExportsequenceButtonPushed, true);
            app.ExportsequenceButton.Position = [1276 40 101 22];
            app.ExportsequenceButton.Text = 'Export sequence';

            % Create Dim4Spinner_SegmenterLabel
            app.Dim4Spinner_SegmenterLabel = uilabel(app.SegmenterTab);
            app.Dim4Spinner_SegmenterLabel.HorizontalAlignment = 'right';
            app.Dim4Spinner_SegmenterLabel.Enable = 'off';
            app.Dim4Spinner_SegmenterLabel.Position = [522 18 44 22];
            app.Dim4Spinner_SegmenterLabel.Text = 'Dim - 4';

            % Create Dim4Spinner_Segmenter
            app.Dim4Spinner_Segmenter = uispinner(app.SegmenterTab);
            app.Dim4Spinner_Segmenter.ValueChangedFcn = createCallbackFcn(app, @Dim4Spinner_SegmenterValueChanged, true);
            app.Dim4Spinner_Segmenter.Enable = 'off';
            app.Dim4Spinner_Segmenter.Position = [577 18 50 22];

            % Create Dim5Spinner_SegmenterLabel
            app.Dim5Spinner_SegmenterLabel = uilabel(app.SegmenterTab);
            app.Dim5Spinner_SegmenterLabel.HorizontalAlignment = 'right';
            app.Dim5Spinner_SegmenterLabel.Enable = 'off';
            app.Dim5Spinner_SegmenterLabel.Position = [642 18 44 22];
            app.Dim5Spinner_SegmenterLabel.Text = 'Dim - 5';

            % Create Dim5Spinner_Segmenter
            app.Dim5Spinner_Segmenter = uispinner(app.SegmenterTab);
            app.Dim5Spinner_Segmenter.ValueChangedFcn = createCallbackFcn(app, @Dim5Spinner_SegmenterValueChanged, true);
            app.Dim5Spinner_Segmenter.Enable = 'off';
            app.Dim5Spinner_Segmenter.Position = [698 18 51 22];

            % Create SegmentusingexternalmaskButton
            app.SegmentusingexternalmaskButton = uibutton(app.SegmenterTab, 'push');
            app.SegmentusingexternalmaskButton.ButtonPushedFcn = createCallbackFcn(app, @SegmentusingexternalmaskButtonPushed, true);
            app.SegmentusingexternalmaskButton.Position = [1190 615 174 22];
            app.SegmentusingexternalmaskButton.Text = 'Segment using external mask';

            % Create IIHemisphereselectionLabel
            app.IIHemisphereselectionLabel = uilabel(app.SegmenterTab);
            app.IIHemisphereselectionLabel.Position = [1208 331 134 22];
            app.IIHemisphereselectionLabel.Text = {'II. Hemisphere selection'; ''};

            % Create HemisphereButtonGroup
            app.HemisphereButtonGroup = uibuttongroup(app.SegmenterTab);
            app.HemisphereButtonGroup.AutoResizeChildren = 'off';
            app.HemisphereButtonGroup.BorderType = 'none';
            app.HemisphereButtonGroup.TitlePosition = 'centertop';
            app.HemisphereButtonGroup.Title = 'Hemisphere ';
            app.HemisphereButtonGroup.BackgroundColor = [0.9412 0.9412 0.9412];
            app.HemisphereButtonGroup.Position = [1162 249 100 74];

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
            app.CorrectionButton_Hemisphere.Position = [1277 255 96 22];
            app.CorrectionButton_Hemisphere.Text = {'Correction ROI'; ''};

            % Create MainselectionButton_Hemisphere
            app.MainselectionButton_Hemisphere = uibutton(app.SegmenterTab, 'push');
            app.MainselectionButton_Hemisphere.ButtonPushedFcn = createCallbackFcn(app, @MainselectionButton_HemispherePushed, true);
            app.MainselectionButton_Hemisphere.Position = [1277 291 96 22];
            app.MainselectionButton_Hemisphere.Text = {'Main selection'; ''};

            % Create IIILesionselectionLabel
            app.IIILesionselectionLabel = uilabel(app.SegmenterTab);
            app.IIILesionselectionLabel.Position = [1217 205 108 22];
            app.IIILesionselectionLabel.Text = {'III. Lesion selection'; ''};

            % Create MainselectionButton_Lesion
            app.MainselectionButton_Lesion = uibutton(app.SegmenterTab, 'push');
            app.MainselectionButton_Lesion.ButtonPushedFcn = createCallbackFcn(app, @MainselectionButton_LesionPushed, true);
            app.MainselectionButton_Lesion.Position = [1223 175 96 22];
            app.MainselectionButton_Lesion.Text = {'Main selection'; ''};

            % Create FreeButton_Add_Lesion
            app.FreeButton_Add_Lesion = uibutton(app.SegmenterTab, 'push');
            app.FreeButton_Add_Lesion.ButtonPushedFcn = createCallbackFcn(app, @FreeButton_Add_LesionPushed, true);
            app.FreeButton_Add_Lesion.Position = [1216 142 50 22];
            app.FreeButton_Add_Lesion.Text = {'+ Free'; ''};

            % Create FreeButton_Remove_Lesion
            app.FreeButton_Remove_Lesion = uibutton(app.SegmenterTab, 'push');
            app.FreeButton_Remove_Lesion.ButtonPushedFcn = createCallbackFcn(app, @FreeButton_Remove_LesionPushed, true);
            app.FreeButton_Remove_Lesion.Position = [1275 142 50 22];
            app.FreeButton_Remove_Lesion.Text = {'- Free'; ''};

            % Create InitialselectionButton
            app.InitialselectionButton = uibutton(app.SegmenterTab, 'push');
            app.InitialselectionButton.ButtonPushedFcn = createCallbackFcn(app, @InitialselectionButtonPushed, true);
            app.InitialselectionButton.Position = [1171 482 100 22];
            app.InitialselectionButton.Text = {'Initial selection'; ''};

            % Create AutoClusterButton
            app.AutoClusterButton = uibutton(app.SegmenterTab, 'push');
            app.AutoClusterButton.ButtonPushedFcn = createCallbackFcn(app, @AutoClusterButtonPushed, true);
            app.AutoClusterButton.Enable = 'off';
            app.AutoClusterButton.Position = [1281 482 100 22];
            app.AutoClusterButton.Text = 'Auto Cluster';

            % Create DiskradiusSpinnerLabel
            app.DiskradiusSpinnerLabel = uilabel(app.SegmenterTab);
            app.DiskradiusSpinnerLabel.HorizontalAlignment = 'right';
            app.DiskradiusSpinnerLabel.Position = [1223 413 65 22];
            app.DiskradiusSpinnerLabel.Text = {'Disk radius'; ''};

            % Create DiskradiusSpinner
            app.DiskradiusSpinner = uispinner(app.SegmenterTab);
            app.DiskradiusSpinner.Limits = [1 100];
            app.DiskradiusSpinner.Position = [1230 380 58 22];
            app.DiskradiusSpinner.Value = 3;

            % Create OpenMaskButton
            app.OpenMaskButton = uibutton(app.SegmenterTab, 'push');
            app.OpenMaskButton.ButtonPushedFcn = createCallbackFcn(app, @OpenMaskButtonPushed, true);
            app.OpenMaskButton.Position = [1129 412 82 22];
            app.OpenMaskButton.Text = {'Open Mask'; ''};

            % Create CloseMaskButton
            app.CloseMaskButton = uibutton(app.SegmenterTab, 'push');
            app.CloseMaskButton.ButtonPushedFcn = createCallbackFcn(app, @CloseMaskButtonPushed, true);
            app.CloseMaskButton.Position = [1129 380 82 22];
            app.CloseMaskButton.Text = {'Close Mask'; ''};

            % Create MorphologyLabel
            app.MorphologyLabel = uilabel(app.SegmenterTab);
            app.MorphologyLabel.Position = [1175 443 68 15];
            app.MorphologyLabel.Text = {'Morphology'; ''};

            % Create ROILabel
            app.ROILabel = uilabel(app.SegmenterTab);
            app.ROILabel.Position = [1355 454 25 15];
            app.ROILabel.Text = {'ROI'; ''; ''};

            % Create FreeButton_Add
            app.FreeButton_Add = uibutton(app.SegmenterTab, 'push');
            app.FreeButton_Add.ButtonPushedFcn = createCallbackFcn(app, @FreeButton_AddPushed, true);
            app.FreeButton_Add.Position = [1313 423 50 22];
            app.FreeButton_Add.Text = {'+ Free'; ''};

            % Create PolyButton_Add
            app.PolyButton_Add = uibutton(app.SegmenterTab, 'push');
            app.PolyButton_Add.ButtonPushedFcn = createCallbackFcn(app, @PolyButton_AddPushed, true);
            app.PolyButton_Add.Position = [1313 391 50 22];
            app.PolyButton_Add.Text = '+ Poly';

            % Create PolyButton_Remove
            app.PolyButton_Remove = uibutton(app.SegmenterTab, 'push');
            app.PolyButton_Remove.ButtonPushedFcn = createCallbackFcn(app, @PolyButton_RemovePushed, true);
            app.PolyButton_Remove.Position = [1372 391 50 22];
            app.PolyButton_Remove.Text = {'- Poly'; ''};

            % Create FreeButton_Remove
            app.FreeButton_Remove = uibutton(app.SegmenterTab, 'push');
            app.FreeButton_Remove.ButtonPushedFcn = createCallbackFcn(app, @FreeButton_RemovePushed, true);
            app.FreeButton_Remove.Position = [1372 423 50 22];
            app.FreeButton_Remove.Text = {'- Free'; ''};

            % Create ConfirmButton
            app.ConfirmButton = uibutton(app.SegmenterTab, 'push');
            app.ConfirmButton.ButtonPushedFcn = createCallbackFcn(app, @ConfirmButtonPushed, true);
            app.ConfirmButton.Icon = 'check icon.png';
            app.ConfirmButton.Position = [1337 362 26 22];
            app.ConfirmButton.Text = '';

            % Create DeleteButton
            app.DeleteButton = uibutton(app.SegmenterTab, 'push');
            app.DeleteButton.ButtonPushedFcn = createCallbackFcn(app, @DeleteButtonPushed, true);
            app.DeleteButton.Icon = 'x icon.png';
            app.DeleteButton.Position = [1372 362 27 22];
            app.DeleteButton.Text = '';

            % Create SliceSliderLabel
            app.SliceSliderLabel = uilabel(app.SegmenterTab);
            app.SliceSliderLabel.HorizontalAlignment = 'right';
            app.SliceSliderLabel.Position = [86 18 32 22];
            app.SliceSliderLabel.Text = 'Slice';

            % Create SliceSlider_Segmenter
            app.SliceSlider_Segmenter = uislider(app.SegmenterTab);
            app.SliceSlider_Segmenter.Limits = [1 100];
            app.SliceSlider_Segmenter.MajorTicks = [];
            app.SliceSlider_Segmenter.MajorTickLabels = {};
            app.SliceSlider_Segmenter.ValueChangingFcn = createCallbackFcn(app, @SliceSlider_SegmenterValueChanging, true);
            app.SliceSlider_Segmenter.MinorTicks = [];
            app.SliceSlider_Segmenter.Enable = 'off';
            app.SliceSlider_Segmenter.Position = [139 27 297 3];
            app.SliceSlider_Segmenter.Value = 1;

            % Create BrightnessSliderLabel_2
            app.BrightnessSliderLabel_2 = uilabel(app.SegmenterTab);
            app.BrightnessSliderLabel_2.HorizontalAlignment = 'center';
            app.BrightnessSliderLabel_2.Position = [1042 413 62 22];
            app.BrightnessSliderLabel_2.Text = 'Brightness';

            % Create BrightnessSlider_Segmenter
            app.BrightnessSlider_Segmenter = uislider(app.SegmenterTab);
            app.BrightnessSlider_Segmenter.Limits = [-1 1];
            app.BrightnessSlider_Segmenter.MajorTicks = 0;
            app.BrightnessSlider_Segmenter.Orientation = 'vertical';
            app.BrightnessSlider_Segmenter.ValueChangingFcn = createCallbackFcn(app, @BrightnessSlider_SegmenterValueChanging, true);
            app.BrightnessSlider_Segmenter.MinorTicks = [];
            app.BrightnessSlider_Segmenter.Enable = 'off';
            app.BrightnessSlider_Segmenter.Position = [1071 443 3 236];

            % Create ContrastSliderLabel_2
            app.ContrastSliderLabel_2 = uilabel(app.SegmenterTab);
            app.ContrastSliderLabel_2.HorizontalAlignment = 'center';
            app.ContrastSliderLabel_2.Position = [1046 72 51 22];
            app.ContrastSliderLabel_2.Text = 'Contrast';

            % Create ColormapButtonGroup
            app.ColormapButtonGroup = uibuttongroup(app.SegmenterTab);
            app.ColormapButtonGroup.AutoResizeChildren = 'off';
            app.ColormapButtonGroup.SelectionChangedFcn = createCallbackFcn(app, @ColormapButtonGroupSelectionChanged, true);
            app.ColormapButtonGroup.BorderType = 'none';
            app.ColormapButtonGroup.TitlePosition = 'centertop';
            app.ColormapButtonGroup.Title = 'Colormap';
            app.ColormapButtonGroup.Position = [823 16 151 38];

            % Create BWButton
            app.BWButton = uiradiobutton(app.ColormapButtonGroup);
            app.BWButton.Text = 'B/W';
            app.BWButton.Position = [94 -3 58 22];
            app.BWButton.Value = true;

            % Create TurboButton
            app.TurboButton = uiradiobutton(app.ColormapButtonGroup);
            app.TurboButton.Text = 'Turbo';
            app.TurboButton.Position = [2 -3 65 22];

            % Create ContrastSlider_Segmenter
            app.ContrastSlider_Segmenter = uislider(app.SegmenterTab);
            app.ContrastSlider_Segmenter.Limits = [-1 1];
            app.ContrastSlider_Segmenter.MajorTicks = 0;
            app.ContrastSlider_Segmenter.Orientation = 'vertical';
            app.ContrastSlider_Segmenter.ValueChangingFcn = createCallbackFcn(app, @ContrastSlider_SegmenterValueChanging, true);
            app.ContrastSlider_Segmenter.MinorTicks = [];
            app.ContrastSlider_Segmenter.Enable = 'off';
            app.ContrastSlider_Segmenter.Position = [1070 102 3 230];

            % Create DSCASLTab
            app.DSCASLTab = uitab(app.TabGroup);
            app.DSCASLTab.AutoResizeChildren = 'off';
            app.DSCASLTab.Title = 'DSC/ASL';

            % Create UIAxes_DSCMaps
            app.UIAxes_DSCMaps = uiaxes(app.DSCASLTab);
            app.UIAxes_DSCMaps.Toolbar.Visible = 'off';
            app.UIAxes_DSCMaps.XLimitMethod = 'tight';
            app.UIAxes_DSCMaps.YLimitMethod = 'tight';
            app.UIAxes_DSCMaps.XTick = [];
            app.UIAxes_DSCMaps.XTickLabel = '';
            app.UIAxes_DSCMaps.YTick = [];
            app.UIAxes_DSCMaps.YTickLabel = '';
            app.UIAxes_DSCMaps.Position = [320 52 534 468];

            % Create UIAxes_ASL
            app.UIAxes_ASL = uiaxes(app.DSCASLTab);
            app.UIAxes_ASL.Toolbar.Visible = 'off';
            app.UIAxes_ASL.XLimitMethod = 'tight';
            app.UIAxes_ASL.YLimitMethod = 'tight';
            app.UIAxes_ASL.XTick = [];
            app.UIAxes_ASL.XTickLabel = '';
            app.UIAxes_ASL.YTick = [];
            app.UIAxes_ASL.YTickLabel = '';
            app.UIAxes_ASL.Position = [880 52 523 468];

            % Create CalculateDSCmapsButton
            app.CalculateDSCmapsButton = uibutton(app.DSCASLTab, 'push');
            app.CalculateDSCmapsButton.ButtonPushedFcn = createCallbackFcn(app, @CalculateDSCmapsButtonPushed, true);
            app.CalculateDSCmapsButton.Position = [525 592 128 22];
            app.CalculateDSCmapsButton.Text = 'Calculate DSC maps';

            % Create SliceSpinner_DSCMapsLabel
            app.SliceSpinner_DSCMapsLabel = uilabel(app.DSCASLTab);
            app.SliceSpinner_DSCMapsLabel.HorizontalAlignment = 'right';
            app.SliceSpinner_DSCMapsLabel.Enable = 'off';
            app.SliceSpinner_DSCMapsLabel.Position = [439 17 31 22];
            app.SliceSpinner_DSCMapsLabel.Text = 'Slice';

            % Create SliceSpinner_DSCMaps
            app.SliceSpinner_DSCMaps = uispinner(app.DSCASLTab);
            app.SliceSpinner_DSCMaps.ValueChangedFcn = createCallbackFcn(app, @SliceSpinner_DSCMapsValueChanged, true);
            app.SliceSpinner_DSCMaps.Enable = 'off';
            app.SliceSpinner_DSCMaps.Position = [485 17 100 22];

            % Create SliceSpinner_ASLLabel
            app.SliceSpinner_ASLLabel = uilabel(app.DSCASLTab);
            app.SliceSpinner_ASLLabel.HorizontalAlignment = 'right';
            app.SliceSpinner_ASLLabel.Enable = 'off';
            app.SliceSpinner_ASLLabel.Position = [1025 17 31 22];
            app.SliceSpinner_ASLLabel.Text = 'Slice';

            % Create SliceSpinner_ASL
            app.SliceSpinner_ASL = uispinner(app.DSCASLTab);
            app.SliceSpinner_ASL.ValueChangedFcn = createCallbackFcn(app, @SliceSpinner_ASLValueChanged, true);
            app.SliceSpinner_ASL.Enable = 'off';
            app.SliceSpinner_ASL.Position = [1071 17 100 22];

            % Create ASLMapLabel
            app.ASLMapLabel = uilabel(app.DSCASLTab);
            app.ASLMapLabel.Position = [1117 547 54 22];
            app.ASLMapLabel.Text = {'ASL Map'; ''};

            % Create SelectDSCvolumetricdataformapcalculationLabel
            app.SelectDSCvolumetricdataformapcalculationLabel = uilabel(app.DSCASLTab);
            app.SelectDSCvolumetricdataformapcalculationLabel.HorizontalAlignment = 'right';
            app.SelectDSCvolumetricdataformapcalculationLabel.Position = [460 663 259 22];
            app.SelectDSCvolumetricdataformapcalculationLabel.Text = 'Select DSC volumetric data for map calculation';

            % Create SelectvolumetricdataDropDown
            app.SelectvolumetricdataDropDown = uidropdown(app.DSCASLTab);
            app.SelectvolumetricdataDropDown.Items = {};
            app.SelectvolumetricdataDropDown.Placeholder = 'None';
            app.SelectvolumetricdataDropDown.Position = [408 633 360 21];
            app.SelectvolumetricdataDropDown.Value = {};

            % Create SelectASLexperimenttocompareLabel
            app.SelectASLexperimenttocompareLabel = uilabel(app.DSCASLTab);
            app.SelectASLexperimenttocompareLabel.HorizontalAlignment = 'right';
            app.SelectASLexperimenttocompareLabel.Position = [1048 663 191 22];
            app.SelectASLexperimenttocompareLabel.Text = 'Select ASL experiment to compare';

            % Create SelectASLDropDown
            app.SelectASLDropDown = uidropdown(app.DSCASLTab);
            app.SelectASLDropDown.Items = {};
            app.SelectASLDropDown.ValueChangedFcn = createCallbackFcn(app, @SelectASLDropDownValueChanged, true);
            app.SelectASLDropDown.Placeholder = 'None';
            app.SelectASLDropDown.Position = [963 633 360 21];
            app.SelectASLDropDown.Value = {};

            % Create ComparemapsButton
            app.ComparemapsButton = uibutton(app.DSCASLTab, 'push');
            app.ComparemapsButton.ButtonPushedFcn = createCallbackFcn(app, @ComparemapsButtonPushed, true);
            app.ComparemapsButton.Position = [1041 592 203 22];
            app.ComparemapsButton.Text = 'Compare ASL and DSC CBF maps';

            % Create DSCMapDropDownLabel
            app.DSCMapDropDownLabel = uilabel(app.DSCASLTab);
            app.DSCMapDropDownLabel.HorizontalAlignment = 'center';
            app.DSCMapDropDownLabel.Enable = 'off';
            app.DSCMapDropDownLabel.Position = [539 563 101 22];
            app.DSCMapDropDownLabel.Text = 'DSC Map';

            % Create DSCMapDropDown
            app.DSCMapDropDown = uidropdown(app.DSCASLTab);
            app.DSCMapDropDown.Items = {'CBF', 'CBV', 'MTT'};
            app.DSCMapDropDown.ValueChangedFcn = createCallbackFcn(app, @DSCMapDropDownValueChanged, true);
            app.DSCMapDropDown.Enable = 'off';
            app.DSCMapDropDown.Position = [560 534 61 23];
            app.DSCMapDropDown.Value = 'CBF';

            % Create ExportASLmapButton
            app.ExportASLmapButton = uibutton(app.DSCASLTab, 'push');
            app.ExportASLmapButton.ButtonPushedFcn = createCallbackFcn(app, @ExportASLmapButtonPushed, true);
            app.ExportASLmapButton.Position = [177 17 112 22];
            app.ExportASLmapButton.Text = {'Export ASL map'; ''};

            % Create MethodButtonGroup
            app.MethodButtonGroup = uibuttongroup(app.DSCASLTab);
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
            app.ExportDSCmapsButton = uibutton(app.DSCASLTab, 'push');
            app.ExportDSCmapsButton.ButtonPushedFcn = createCallbackFcn(app, @ExportDSCmapsButtonPushed, true);
            app.ExportDSCmapsButton.Position = [38 17 112 22];
            app.ExportDSCmapsButton.Text = 'Export DSC maps';

            % Create DSCcomparationROIButton
            app.DSCcomparationROIButton = uibutton(app.DSCASLTab, 'push');
            app.DSCcomparationROIButton.ButtonPushedFcn = createCallbackFcn(app, @DSCcomparationROIButtonPushed, true);
            app.DSCcomparationROIButton.Position = [593 17 135 22];
            app.DSCcomparationROIButton.Text = 'DSC comparation ROI';

            % Create ASLcomparationROIButton
            app.ASLcomparationROIButton = uibutton(app.DSCASLTab, 'push');
            app.ASLcomparationROIButton.ButtonPushedFcn = createCallbackFcn(app, @ASLcomparationROIButtonPushed, true);
            app.ASLcomparationROIButton.Position = [1178 17 132 22];
            app.ASLcomparationROIButton.Text = 'ASL comparation ROI';

            % Create ROIpixelexclusionButton
            app.ROIpixelexclusionButton = uibutton(app.DSCASLTab, 'push');
            app.ROIpixelexclusionButton.ButtonPushedFcn = createCallbackFcn(app, @ROIpixelexclusionButtonPushed, true);
            app.ROIpixelexclusionButton.Position = [741 17 112 22];
            app.ROIpixelexclusionButton.Text = 'ROI pixel exclusion';

            % Create ComparationPanel
            app.ComparationPanel = uipanel(app.DSCASLTab);
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
            app.ExportROImaskButton = uibutton(app.DSCASLTab, 'push');
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
            app.UIAxes_Registration.Position = [6 41 1028 683];

            % Create SelectfixedLabel
            app.SelectfixedLabel = uilabel(app.RegistrationTab);
            app.SelectfixedLabel.HorizontalAlignment = 'right';
            app.SelectfixedLabel.Position = [1101 531 130 22];
            app.SelectfixedLabel.Text = 'Select fixed image data';

            % Create SelectfixedDropDown
            app.SelectfixedDropDown = uidropdown(app.RegistrationTab);
            app.SelectfixedDropDown.Items = {};
            app.SelectfixedDropDown.ValueChangedFcn = createCallbackFcn(app, @SelectfixedDropDownValueChanged, true);
            app.SelectfixedDropDown.Placeholder = 'None';
            app.SelectfixedDropDown.Position = [1059 501 214 21];
            app.SelectfixedDropDown.Value = {};

            % Create SelectmovingLabel
            app.SelectmovingLabel = uilabel(app.RegistrationTab);
            app.SelectmovingLabel.HorizontalAlignment = 'right';
            app.SelectmovingLabel.Position = [1094 630 143 22];
            app.SelectmovingLabel.Text = 'Select moving image data';

            % Create SelectmovingDropDown
            app.SelectmovingDropDown = uidropdown(app.RegistrationTab);
            app.SelectmovingDropDown.Items = {};
            app.SelectmovingDropDown.ValueChangedFcn = createCallbackFcn(app, @SelectmovingDropDownValueChanged, true);
            app.SelectmovingDropDown.Placeholder = 'None';
            app.SelectmovingDropDown.Position = [1059 598 214 21];
            app.SelectmovingDropDown.Value = {};

            % Create RegisterButton
            app.RegisterButton = uibutton(app.RegistrationTab, 'push');
            app.RegisterButton.ButtonPushedFcn = createCallbackFcn(app, @RegisterButtonPushed, true);
            app.RegisterButton.Position = [1181 128 100 22];
            app.RegisterButton.Text = 'Register';

            % Create SliceSpinner_FixedLabel
            app.SliceSpinner_FixedLabel = uilabel(app.RegistrationTab);
            app.SliceSpinner_FixedLabel.HorizontalAlignment = 'right';
            app.SliceSpinner_FixedLabel.Position = [1305 531 31 22];
            app.SliceSpinner_FixedLabel.Text = 'Slice';

            % Create SliceSpinner_Fixed
            app.SliceSpinner_Fixed = uispinner(app.RegistrationTab);
            app.SliceSpinner_Fixed.Position = [1294 502 54 22];

            % Create SliceSpinner_MovingLabel
            app.SliceSpinner_MovingLabel = uilabel(app.RegistrationTab);
            app.SliceSpinner_MovingLabel.HorizontalAlignment = 'right';
            app.SliceSpinner_MovingLabel.Position = [1305 627 31 22];
            app.SliceSpinner_MovingLabel.Text = 'Slice';

            % Create SliceSpinner_Moving
            app.SliceSpinner_Moving = uispinner(app.RegistrationTab);
            app.SliceSpinner_Moving.Position = [1294 598 54 22];

            % Create UsedifferentparametermapCheckBox
            app.UsedifferentparametermapCheckBox = uicheckbox(app.RegistrationTab);
            app.UsedifferentparametermapCheckBox.ValueChangedFcn = createCallbackFcn(app, @UsedifferentparametermapCheckBoxValueChanged, true);
            app.UsedifferentparametermapCheckBox.Text = 'Use different parameter map';
            app.UsedifferentparametermapCheckBox.Position = [1156 425 175 22];

            % Create SelectparameterLabel
            app.SelectparameterLabel = uilabel(app.RegistrationTab);
            app.SelectparameterLabel.HorizontalAlignment = 'right';
            app.SelectparameterLabel.Enable = 'off';
            app.SelectparameterLabel.Position = [1042 385 239 22];
            app.SelectparameterLabel.Text = 'Select image data for parameter generation';

            % Create SelectparameterDropDown
            app.SelectparameterDropDown = uidropdown(app.RegistrationTab);
            app.SelectparameterDropDown.Items = {};
            app.SelectparameterDropDown.ValueChangedFcn = createCallbackFcn(app, @SelectparameterDropDownValueChanged, true);
            app.SelectparameterDropDown.Enable = 'off';
            app.SelectparameterDropDown.Placeholder = 'None';
            app.SelectparameterDropDown.Position = [1059 356 214 21];
            app.SelectparameterDropDown.Value = {};

            % Create SliceSpinner_ParameterLabel
            app.SliceSpinner_ParameterLabel = uilabel(app.RegistrationTab);
            app.SliceSpinner_ParameterLabel.HorizontalAlignment = 'right';
            app.SliceSpinner_ParameterLabel.Enable = 'off';
            app.SliceSpinner_ParameterLabel.Position = [1305 385 31 22];
            app.SliceSpinner_ParameterLabel.Text = 'Slice';

            % Create SliceSpinner_Parameter
            app.SliceSpinner_Parameter = uispinner(app.RegistrationTab);
            app.SliceSpinner_Parameter.Enable = 'off';
            app.SliceSpinner_Parameter.Position = [1294 356 54 22];

            % Create RegistrationInstructionsTextAreaLabel
            app.RegistrationInstructionsTextAreaLabel = uilabel(app.RegistrationTab);
            app.RegistrationInstructionsTextAreaLabel.HorizontalAlignment = 'right';
            app.RegistrationInstructionsTextAreaLabel.Position = [1164 268 134 22];
            app.RegistrationInstructionsTextAreaLabel.Text = 'Registration Instructions';

            % Create RegistrationInstructionsTextArea
            app.RegistrationInstructionsTextArea = uitextarea(app.RegistrationTab);
            app.RegistrationInstructionsTextArea.Editable = 'off';
            app.RegistrationInstructionsTextArea.Position = [1071 201 320 60];

            % Create AddsliceButton
            app.AddsliceButton = uibutton(app.RegistrationTab, 'push');
            app.AddsliceButton.ButtonPushedFcn = createCallbackFcn(app, @AddsliceButtonPushed, true);
            app.AddsliceButton.Position = [1181 303 100 22];
            app.AddsliceButton.Text = 'Add slice ';

            % Create ManualinstructioninputCheckBox
            app.ManualinstructioninputCheckBox = uicheckbox(app.RegistrationTab);
            app.ManualinstructioninputCheckBox.ValueChangedFcn = createCallbackFcn(app, @ManualinstructioninputCheckBoxValueChanged, true);
            app.ManualinstructioninputCheckBox.Text = 'Manual instruction input';
            app.ManualinstructioninputCheckBox.Position = [1156 166 149 22];

            % Create SliceSpinner_RegistrationLabel
            app.SliceSpinner_RegistrationLabel = uilabel(app.RegistrationTab);
            app.SliceSpinner_RegistrationLabel.HorizontalAlignment = 'right';
            app.SliceSpinner_RegistrationLabel.Position = [467 17 31 22];
            app.SliceSpinner_RegistrationLabel.Text = 'Slice';

            % Create SliceSpinner_Registration
            app.SliceSpinner_Registration = uispinner(app.RegistrationTab);
            app.SliceSpinner_Registration.ValueChangedFcn = createCallbackFcn(app, @SliceSpinner_RegistrationValueChanged, true);
            app.SliceSpinner_Registration.Position = [509 17 97 22];

            % Create SaveRegisteredDataButton
            app.SaveRegisteredDataButton = uibutton(app.RegistrationTab, 'push');
            app.SaveRegisteredDataButton.ButtonPushedFcn = createCallbackFcn(app, @SaveRegisteredDataButtonPushed, true);
            app.SaveRegisteredDataButton.Position = [1095 84 134 22];
            app.SaveRegisteredDataButton.Text = 'Save Registered Data';

            % Create ExportRegisteredDataButton
            app.ExportRegisteredDataButton = uibutton(app.RegistrationTab, 'push');
            app.ExportRegisteredDataButton.ButtonPushedFcn = createCallbackFcn(app, @ExportRegisteredDataButtonPushed, true);
            app.ExportRegisteredDataButton.Position = [1241 84 140 22];
            app.ExportRegisteredDataButton.Text = 'Export Registered Data';

            % Create FixDim4CheckBox_Moving
            app.FixDim4CheckBox_Moving = uicheckbox(app.RegistrationTab);
            app.FixDim4CheckBox_Moving.ValueChangedFcn = createCallbackFcn(app, @FixDim4CheckBox_MovingValueChanged, true);
            app.FixDim4CheckBox_Moving.Enable = 'off';
            app.FixDim4CheckBox_Moving.Text = 'Fix Dim - 4';
            app.FixDim4CheckBox_Moving.Position = [1319 563 80 22];

            % Create Dim4Spinner_MovingLabel
            app.Dim4Spinner_MovingLabel = uilabel(app.RegistrationTab);
            app.Dim4Spinner_MovingLabel.HorizontalAlignment = 'right';
            app.Dim4Spinner_MovingLabel.Enable = 'off';
            app.Dim4Spinner_MovingLabel.Position = [1359 627 44 22];
            app.Dim4Spinner_MovingLabel.Text = 'Dim - 4';

            % Create Dim4Spinner_Moving
            app.Dim4Spinner_Moving = uispinner(app.RegistrationTab);
            app.Dim4Spinner_Moving.Enable = 'off';
            app.Dim4Spinner_Moving.Position = [1355 598 54 22];

            % Create FixDim4CheckBox_Fixed
            app.FixDim4CheckBox_Fixed = uicheckbox(app.RegistrationTab);
            app.FixDim4CheckBox_Fixed.ValueChangedFcn = createCallbackFcn(app, @FixDim4CheckBox_FixedValueChanged, true);
            app.FixDim4CheckBox_Fixed.Enable = 'off';
            app.FixDim4CheckBox_Fixed.Text = 'Fix Dim - 4';
            app.FixDim4CheckBox_Fixed.Position = [1319 467 80 22];

            % Create Dim4Spinner_FixedLabel
            app.Dim4Spinner_FixedLabel = uilabel(app.RegistrationTab);
            app.Dim4Spinner_FixedLabel.HorizontalAlignment = 'right';
            app.Dim4Spinner_FixedLabel.Enable = 'off';
            app.Dim4Spinner_FixedLabel.Position = [1359 531 44 22];
            app.Dim4Spinner_FixedLabel.Text = 'Dim - 4';

            % Create Dim4Spinner_Fixed
            app.Dim4Spinner_Fixed = uispinner(app.RegistrationTab);
            app.Dim4Spinner_Fixed.Enable = 'off';
            app.Dim4Spinner_Fixed.Position = [1355 502 54 22];

            % Create FixDim4CheckBox_Parameter
            app.FixDim4CheckBox_Parameter = uicheckbox(app.RegistrationTab);
            app.FixDim4CheckBox_Parameter.ValueChangedFcn = createCallbackFcn(app, @FixDim4CheckBox_ParameterValueChanged, true);
            app.FixDim4CheckBox_Parameter.Enable = 'off';
            app.FixDim4CheckBox_Parameter.Text = 'Fix Dim - 4';
            app.FixDim4CheckBox_Parameter.Position = [1319 321 80 22];

            % Create Dim4Spinner_ParameterLabel
            app.Dim4Spinner_ParameterLabel = uilabel(app.RegistrationTab);
            app.Dim4Spinner_ParameterLabel.HorizontalAlignment = 'right';
            app.Dim4Spinner_ParameterLabel.Enable = 'off';
            app.Dim4Spinner_ParameterLabel.Position = [1359 385 44 22];
            app.Dim4Spinner_ParameterLabel.Text = 'Dim - 4';

            % Create Dim4Spinner_Parameter
            app.Dim4Spinner_Parameter = uispinner(app.RegistrationTab);
            app.Dim4Spinner_Parameter.Enable = 'off';
            app.Dim4Spinner_Parameter.Position = [1355 356 54 22];

            % Create ContextMenu_Preview
            app.ContextMenu_Preview = uicontextmenu(app.UIFigure);

            % Create RotateMenu_Preview
            app.RotateMenu_Preview = uimenu(app.ContextMenu_Preview);
            app.RotateMenu_Preview.MenuSelectedFcn = createCallbackFcn(app, @RotateMenu_PreviewSelected, true);
            app.RotateMenu_Preview.Text = 'Rotate';

            % Create FlipVerticallyMenu_Preview
            app.FlipVerticallyMenu_Preview = uimenu(app.ContextMenu_Preview);
            app.FlipVerticallyMenu_Preview.MenuSelectedFcn = createCallbackFcn(app, @FlipVerticallyMenu_PreviewSelected, true);
            app.FlipVerticallyMenu_Preview.Text = 'Flip Vertically';

            % Create FlipHorizontallyMenu_Preview
            app.FlipHorizontallyMenu_Preview = uimenu(app.ContextMenu_Preview);
            app.FlipHorizontallyMenu_Preview.MenuSelectedFcn = createCallbackFcn(app, @FlipHorizontallyMenu_PreviewSelected, true);
            app.FlipHorizontallyMenu_Preview.Text = 'Flip Horizontally';

            % Create ResetViewMenu_Preview
            app.ResetViewMenu_Preview = uimenu(app.ContextMenu_Preview);
            app.ResetViewMenu_Preview.MenuSelectedFcn = createCallbackFcn(app, @ResetViewMenu_PreviewSelected, true);
            app.ResetViewMenu_Preview.Text = 'Reset View';

            % Create ContextMenu_Segmenter
            app.ContextMenu_Segmenter = uicontextmenu(app.UIFigure);

            % Create RotateMenu_Segmenter
            app.RotateMenu_Segmenter = uimenu(app.ContextMenu_Segmenter);
            app.RotateMenu_Segmenter.MenuSelectedFcn = createCallbackFcn(app, @RotateMenu_SegmenterSelected, true);
            app.RotateMenu_Segmenter.Text = 'Rotate';

            % Create FlipVerticallyMenu_Segmenter
            app.FlipVerticallyMenu_Segmenter = uimenu(app.ContextMenu_Segmenter);
            app.FlipVerticallyMenu_Segmenter.MenuSelectedFcn = createCallbackFcn(app, @FlipVerticallyMenu_SegmenterSelected, true);
            app.FlipVerticallyMenu_Segmenter.Text = 'Flip Vertically';

            % Create FlipHorizontallyMenu_Segmenter
            app.FlipHorizontallyMenu_Segmenter = uimenu(app.ContextMenu_Segmenter);
            app.FlipHorizontallyMenu_Segmenter.MenuSelectedFcn = createCallbackFcn(app, @FlipHorizontallyMenu_SegmenterSelected, true);
            app.FlipHorizontallyMenu_Segmenter.Text = 'Flip Horizontally';

            % Create ResetViewMenu_Segmenter
            app.ResetViewMenu_Segmenter = uimenu(app.ContextMenu_Segmenter);
            app.ResetViewMenu_Segmenter.MenuSelectedFcn = createCallbackFcn(app, @ResetViewMenu_SegmenterSelected, true);
            app.ResetViewMenu_Segmenter.Text = 'Reset View';

            % Create PermuteDimensionsMenu
            app.PermuteDimensionsMenu = uimenu(app.ContextMenu_Segmenter);
            app.PermuteDimensionsMenu.Text = 'Permute Dimensions';

            % Create PermuteMenu_3_4
            app.PermuteMenu_3_4 = uimenu(app.PermuteDimensionsMenu);
            app.PermuteMenu_3_4.MenuSelectedFcn = createCallbackFcn(app, @PermuteMenu_3_4Selected, true);
            app.PermuteMenu_3_4.Text = '3-4';

            % Create PermuteMenu_3_5
            app.PermuteMenu_3_5 = uimenu(app.PermuteDimensionsMenu);
            app.PermuteMenu_3_5.MenuSelectedFcn = createCallbackFcn(app, @PermuteMenu_3_5Selected, true);
            app.PermuteMenu_3_5.Text = '3-5';

            % Create PermuteMenu_4_5
            app.PermuteMenu_4_5 = uimenu(app.PermuteDimensionsMenu);
            app.PermuteMenu_4_5.MenuSelectedFcn = createCallbackFcn(app, @PermuteMenu_4_5Selected, true);
            app.PermuteMenu_4_5.Text = '4-5';

            % Show the figure after all components are created
            app.UIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = BrukKit_exported

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