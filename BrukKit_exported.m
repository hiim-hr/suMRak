classdef BrukKit_exported < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        BrukKitAlphav0860UIFigure       matlab.ui.Figure
        TabGroup                        matlab.ui.container.TabGroup
        MainTab                         matlab.ui.container.Tab
        ExportEnvironmentButton         matlab.ui.control.Button
        LoadBrukKitFolderButton         matlab.ui.control.Button
        LoadBrukerStudyButton           matlab.ui.control.Button
        CreateBrukKitFolderButton       matlab.ui.control.Button
        SaveDataButton_Preview          matlab.ui.control.Button
        ExportDataButton_Preview        matlab.ui.control.Button
        ColormapButtonGroup_Preview     matlab.ui.container.ButtonGroup
        TurboButton_Preview             matlab.ui.control.RadioButton
        GreyscaleButton_Preview         matlab.ui.control.RadioButton
        ArchiveLabel                    matlab.ui.control.Label
        WeightEditFieldLabel_kg         matlab.ui.control.Label
        WeightEditField                 matlab.ui.control.EditField
        WeightEditFieldLabel            matlab.ui.control.Label
        SexEditField                    matlab.ui.control.EditField
        SexEditFieldLabel               matlab.ui.control.Label
        SubjectTypeEditField            matlab.ui.control.EditField
        SubjectTypeEditFieldLabel       matlab.ui.control.Label
        StudyStartDateEditField         matlab.ui.control.EditField
        StudyStartDateEditFieldLabel    matlab.ui.control.Label
        StudyStartTimeEditField         matlab.ui.control.EditField
        StudyStartTimeEditFieldLabel    matlab.ui.control.Label
        SubjectAgeEditFieldLabel_Days   matlab.ui.control.Label
        SubjectAgeEditField             matlab.ui.control.EditField
        SubjectAgeEditFieldLabel        matlab.ui.control.Label
        StudyCommentEditField           matlab.ui.control.EditField
        StudyCommentEditFieldLabel      matlab.ui.control.Label
        SubjectCommentEditField         matlab.ui.control.EditField
        SubjectCommentEditFieldLabel    matlab.ui.control.Label
        StudyIDEditField                matlab.ui.control.EditField
        StudyIDEditFieldLabel           matlab.ui.control.Label
        SubjectIDEditField              matlab.ui.control.EditField
        SubjectIDEditFieldLabel         matlab.ui.control.Label
        ResetEnvironmentButton          matlab.ui.control.Button
        UITable_Preview                 matlab.ui.control.Table
        ArchiveEditField                matlab.ui.control.EditField
        LoadPvDatasetsFileButton        matlab.ui.control.Button
        ContrastSlider_Preview          matlab.ui.control.Slider
        ContrastSliderLabel_Preview     matlab.ui.control.Label
        BrightnessSlider_Preview        matlab.ui.control.Slider
        BrightnessSliderLabel_Preview   matlab.ui.control.Label
        SliceSlider_Preview             matlab.ui.control.Slider
        SliceLabel_Preview              matlab.ui.control.Label
        SliceSpinner_Preview            matlab.ui.control.Spinner
        Dim4Slider_Preview              matlab.ui.control.Slider
        Dim4Slider_PreviewLabel         matlab.ui.control.Label
        Dim5Slider_Preview              matlab.ui.control.Slider
        Dim5Slider_PreviewLabel         matlab.ui.control.Label
        PreviewDropDown                 matlab.ui.control.DropDown
        PreviewLabel                    matlab.ui.control.Label
        UIAxes_Preview                  matlab.ui.control.UIAxes
        SegmenterTab                    matlab.ui.container.Tab
        PerspectiveViewButton           matlab.ui.control.StateButton
        BrainSegmentationToolsPanel     matlab.ui.container.Panel
        VolumeSwitch                    matlab.ui.control.Switch
        ApplyMaskButton                 matlab.ui.control.Button
        ResetSliceButton                matlab.ui.control.Button
        ImageshownSwitch_Brain          matlab.ui.control.Switch
        ImageshownSwitchLabel           matlab.ui.control.Label
        LoadExternalBrainMaskButton     matlab.ui.control.Button
        AutoClusterButton               matlab.ui.control.Button
        InitialSelectionButton          matlab.ui.control.Button
        MorphologyLabel                 matlab.ui.control.Label
        CloseMaskButton                 matlab.ui.control.Button
        OpenMaskButton                  matlab.ui.control.Button
        DiskradiusSpinner               matlab.ui.control.Spinner
        DiskradiusSpinnerLabel          matlab.ui.control.Label
        HemisphereSegmentationToolsPanel  matlab.ui.container.Panel
        AutoCompleteHemispheresCheckBox  matlab.ui.control.CheckBox
        LoadExternalHemisphereMaskButton  matlab.ui.control.Button
        HemisphereButtonGroup           matlab.ui.container.ButtonGroup
        RightredButton                  matlab.ui.control.RadioButton
        LeftblueButton                  matlab.ui.control.RadioButton
        ResetHemispheresButton          matlab.ui.control.Button
        ROISegmentationToolsPanel       matlab.ui.container.Panel
        VolROISegmentationToolsButton   matlab.ui.control.Button
        LoadExternalROIPackButton       matlab.ui.control.Button
        ImageshownSwitch_ROI            matlab.ui.control.Switch
        ImageshownSwitchLabel_ROI       matlab.ui.control.Label
        ResetROISliceButton             matlab.ui.control.Button
        DeleteROIButton                 matlab.ui.control.Button
        AddROIButton                    matlab.ui.control.Button
        ROIListListBox                  matlab.ui.control.ListBox
        ROIListListBoxLabel             matlab.ui.control.Label
        SelectionToolsPanel             matlab.ui.container.Panel
        DeleteButton                    matlab.ui.control.Button
        ConfirmButton                   matlab.ui.control.Button
        FreeButton_Remove               matlab.ui.control.Button
        PolyButton_Remove               matlab.ui.control.Button
        PolyButton_Add                  matlab.ui.control.Button
        FreeButton_Add                  matlab.ui.control.Button
        CurrentSegmentationDropDown     matlab.ui.control.DropDown
        CurrentsegmentationLabel        matlab.ui.control.Label
        ContrastSlider_Segmenter        matlab.ui.control.Slider
        ColormapButtonGroup_Segmenter   matlab.ui.container.ButtonGroup
        TurboButton_Segmenter           matlab.ui.control.RadioButton
        GreyscaleButton_Segmenter       matlab.ui.control.RadioButton
        ContrastSliderLabel_Segmenter   matlab.ui.control.Label
        BrightnessSlider_Segmenter      matlab.ui.control.Slider
        BrightnessSliderLabel_Segmenter  matlab.ui.control.Label
        SliceSlider_Segmenter           matlab.ui.control.Slider
        SliceSliderLabel                matlab.ui.control.Label
        Dim5Spinner_Segmenter           matlab.ui.control.Spinner
        Dim5Spinner_SegmenterLabel      matlab.ui.control.Label
        Dim4Spinner_Segmenter           matlab.ui.control.Spinner
        Dim4Spinner_SegmenterLabel      matlab.ui.control.Label
        ExportDataButton_Segmenter      matlab.ui.control.Button
        SaveSegmentedDataButton         matlab.ui.control.Button
        SliceSpinner_Segmenter          matlab.ui.control.Spinner
        SegmentDropDown                 matlab.ui.control.DropDown
        SelectExperimentToSegmentLabel  matlab.ui.control.Label
        UIAxes_SegmenterHelperDown      matlab.ui.control.UIAxes
        UIAxes_SegmenterHelperUp        matlab.ui.control.UIAxes
        UIAxes_Segmenter                matlab.ui.control.UIAxes
        VolumetryTab                    matlab.ui.container.Tab
        UIAxes_Volumetry_Container      matlab.ui.container.Panel
        UIAxes_Volumetry                matlab.ui.control.UIAxes
        ExportDataButton_Volumetry      matlab.ui.control.Button
        VolumeUnitLabel                 matlab.ui.control.Label
        AreaUnitLabel                   matlab.ui.control.Label
        VolumeLabel                     matlab.ui.control.Label
        AreaLabel                       matlab.ui.control.Label
        UnitsLabel                      matlab.ui.control.Label
        SelectVolumetryDropDown         matlab.ui.control.DropDown
        SelectExperimentForVolumetryLabel  matlab.ui.control.Label
        ROIPanel_Volumetry              matlab.ui.container.Panel
        IQRUpperEditField_ROI           matlab.ui.control.NumericEditField
        IQRLowerEditField_ROI           matlab.ui.control.NumericEditField
        IQREditFieldLabel_ROI           matlab.ui.control.Label
        MedianEditField_ROI             matlab.ui.control.NumericEditField
        MedianEditFieldLabel_ROI        matlab.ui.control.Label
        ApplyEdemaCorrectionCheckBox    matlab.ui.control.CheckBox
        SelectROIDropDown               matlab.ui.control.DropDown
        SelectROIDropDownLabel          matlab.ui.control.Label
        MinEditField_ROI                matlab.ui.control.NumericEditField
        MinEditFieldLabel_ROI           matlab.ui.control.Label
        MaxEditField_ROI                matlab.ui.control.NumericEditField
        MaxEditFieldLabel_ROI           matlab.ui.control.Label
        MeanEditField_ROI               matlab.ui.control.NumericEditField
        MeanEditFieldLabel_ROI          matlab.ui.control.Label
        SDEditField_ROI                 matlab.ui.control.NumericEditField
        SDEditFieldLabel_ROI            matlab.ui.control.Label
        LabelPlusMinus_ROI              matlab.ui.control.Label
        VolumeEditField_ROI             matlab.ui.control.NumericEditField
        VolumeEditFieldLabel_ROI        matlab.ui.control.Label
        UITable_VolumetryROI            matlab.ui.control.Table
        HemispherePanel                 matlab.ui.container.Panel
        IQRUpperEditField_Hemisphere    matlab.ui.control.NumericEditField
        IQRLowerEditField_Hemisphere    matlab.ui.control.NumericEditField
        IQREditFieldLabel_Hemisphere    matlab.ui.control.Label
        MedianEditField_Hemisphere      matlab.ui.control.NumericEditField
        MedianEditFieldLabel_Hemisphere  matlab.ui.control.Label
        SelectHemisphereDropDown        matlab.ui.control.DropDown
        SelectHemisphereDropDownLabel   matlab.ui.control.Label
        MinEditField_Hemisphere         matlab.ui.control.NumericEditField
        MinEditFieldLabel_Hemisphere    matlab.ui.control.Label
        MaxEditField_Hemisphere         matlab.ui.control.NumericEditField
        MaxEditFieldLabel_Hemisphere    matlab.ui.control.Label
        MeanEditField_Hemisphere        matlab.ui.control.NumericEditField
        MeanEditFieldLabel_Hemisphere   matlab.ui.control.Label
        SDEditField_Hemisphere          matlab.ui.control.NumericEditField
        SDEditFieldLabel_Hemisphere     matlab.ui.control.Label
        LabelPlusMinus_Hemisphere       matlab.ui.control.Label
        VolumeEditField_Hemisphere      matlab.ui.control.NumericEditField
        VolumeEditFieldLabel_Hemisphere  matlab.ui.control.Label
        UITable_VolumetryHemisphere     matlab.ui.control.Table
        BrainPanel                      matlab.ui.container.Panel
        IQRUpperEditField_Brain         matlab.ui.control.NumericEditField
        MinEditField_Brain              matlab.ui.control.NumericEditField
        MinEditFieldLabel_Brain         matlab.ui.control.Label
        MaxEditField_Brain              matlab.ui.control.NumericEditField
        MaxEditFieldLabel_Brain         matlab.ui.control.Label
        MedianEditField_Brain           matlab.ui.control.NumericEditField
        MedianEditFieldLabel_Brain      matlab.ui.control.Label
        IQRLowerEditField_Brain         matlab.ui.control.NumericEditField
        IQREditFieldLabel_Brain         matlab.ui.control.Label
        LabelPlusMinus_Brain            matlab.ui.control.Label
        MeanEditField_Brain             matlab.ui.control.NumericEditField
        MeanEditFieldLabel_Brain        matlab.ui.control.Label
        SDEditField_Brain               matlab.ui.control.NumericEditField
        SDEditFieldLabel_Brain          matlab.ui.control.Label
        VolumeEditField_Brain           matlab.ui.control.NumericEditField
        VolumeEditFieldLabel_Brain      matlab.ui.control.Label
        UITable_VolumetryBrain          matlab.ui.control.Table
        RegistrationTab                 matlab.ui.container.Tab
        ImageshownSwitch_Registration   matlab.ui.control.Switch
        StandardAtlasRegistrationPanel  matlab.ui.container.Panel
        SelectAtlasDropDown             matlab.ui.control.DropDown
        ImportReferenceAtlasButton      matlab.ui.control.Button
        SelectparameterDropDown         matlab.ui.control.DropDown
        SelectparameterLabel            matlab.ui.control.Label
        UsedifferentparametermapCheckBox  matlab.ui.control.CheckBox
        SelectfixedDropDown             matlab.ui.control.DropDown
        SelectfixedLabel                matlab.ui.control.Label
        SelectmovingDropDown            matlab.ui.control.DropDown
        SelectmovingLabel               matlab.ui.control.Label
        RegistrationInstructionsTextArea  matlab.ui.control.TextArea
        RegistrationInstructionsTextAreaLabel  matlab.ui.control.Label
        RegistrationViewerButton        matlab.ui.control.Button
        ManualinstructioninputCheckBox  matlab.ui.control.CheckBox
        RegisterButton                  matlab.ui.control.Button
        TimeSeriesAlignmentPanel        matlab.ui.container.Panel
        AdditionalDimensionControlsPanel  matlab.ui.container.Panel
        Dim5Slider_TimeAlignmentControl  matlab.ui.control.Slider
        Dim5SliderLabel_TimeAlignmentControl  matlab.ui.control.Label
        Dim5Spinner_TimeAlignmentControl  matlab.ui.control.Spinner
        Dim4Slider_TimeAlignmentControl  matlab.ui.control.Slider
        Dim4SliderLabel_TimeAlignmentControl  matlab.ui.control.Label
        Dim4Spinner_TimeAlignmentControl  matlab.ui.control.Spinner
        ReferenceDataPointLabel         matlab.ui.control.Label
        Dim5Spinner_TimeAlignmentReference  matlab.ui.control.Spinner
        Dim5Spinner_TimeAlignmentReferenceLabel  matlab.ui.control.Label
        Dim4Spinner_TimeAlignmentReference  matlab.ui.control.Spinner
        Dim4Spinner_TimeAlignmentReferenceLabel  matlab.ui.control.Label
        AlignDataButton                 matlab.ui.control.Button
        SelectTimeAlignmentDropDown     matlab.ui.control.DropDown
        SelectTimeAlignmentLabel        matlab.ui.control.Label
        ChooseRegistrationTypeDropDown  matlab.ui.control.DropDown
        ChooseRegistrationTypeDropDownLabel  matlab.ui.control.Label
        SliceSlider_Registration        matlab.ui.control.Slider
        SliceSliderLabel_Registration   matlab.ui.control.Label
        SliceSpinner_Registration       matlab.ui.control.Spinner
        ColormapButtonGroup_Registration  matlab.ui.container.ButtonGroup
        TurboButton_Registration        matlab.ui.control.RadioButton
        GreyscaleButton_Registration    matlab.ui.control.RadioButton
        ExportDataButton_Registration   matlab.ui.control.Button
        SaveRegisteredDataButton        matlab.ui.control.Button
        UIAxes_Registration             matlab.ui.control.UIAxes
        ParameterMapsTab                matlab.ui.container.Tab
        FAIRpASLMappingoptionsPanel     matlab.ui.container.Panel
        CalculatepASLMapButton          matlab.ui.control.Button
        ExperimentorderButtonGroup      matlab.ui.container.ButtonGroup
        NonSelectiveFirstButton         matlab.ui.control.RadioButton
        SliceSelectiveFirstButton       matlab.ui.control.RadioButton
        BloodT1sEditField               matlab.ui.control.NumericEditField
        BloodT1sEditFieldLabel          matlab.ui.control.Label
        T1OptionsPanel                  matlab.ui.container.Panel
        TIvaluesText                    matlab.ui.control.TextArea
        TIvaluesLabel                   matlab.ui.control.Label
        CalculateT1MapButton            matlab.ui.control.Button
        TRvaluesText                    matlab.ui.control.TextArea
        TRvaluesLabel                   matlab.ui.control.Label
        T2OptionsPanel                  matlab.ui.container.Panel
        CalculateT2MapButton            matlab.ui.control.Button
        TEvaluesText                    matlab.ui.control.TextArea
        TEvaluesLabel                   matlab.ui.control.Label
        OptimizationOptionsPanel        matlab.ui.container.Panel
        ResettodefaultsButton           matlab.ui.control.Button
        MaxNrofIterationsEditField      matlab.ui.control.NumericEditField
        MaxNrofIterationsEditFieldLabel  matlab.ui.control.Label
        MaxNrofEvaluationsEditField     matlab.ui.control.NumericEditField
        MaxNrofEvaluationsEditFieldLabel  matlab.ui.control.Label
        dfStepSizeEditField             matlab.ui.control.NumericEditField
        dfStepSizeEditFieldLabel        matlab.ui.control.Label
        StepToleranceEditField          matlab.ui.control.NumericEditField
        StepToleranceEditFieldLabel     matlab.ui.control.Label
        OptimalityToleranceEditField    matlab.ui.control.NumericEditField
        OptimalityToleranceEditFieldLabel  matlab.ui.control.Label
        fxToleranceEditField            matlab.ui.control.NumericEditField
        fxToleranceEditFieldLabel       matlab.ui.control.Label
        ExportDataButton_Map            matlab.ui.control.Button
        SaveDataButton_Map              matlab.ui.control.Button
        SliceSlider_PostMap             matlab.ui.control.Slider
        SliceLabel_ParameterMaps_PostMap  matlab.ui.control.Label
        SliceSpinner_PostMap            matlab.ui.control.Spinner
        DSCMappingOptionsPanel          matlab.ui.container.Panel
        AIFExtractionSliceSpinner       matlab.ui.control.Spinner
        AIFExtractionSliceSpinnerLabel  matlab.ui.control.Label
        DSCMapDropDown                  matlab.ui.control.DropDown
        DSCMapDropDownLabel             matlab.ui.control.Label
        AdvancedSettingsButton          matlab.ui.control.Button
        MethodButtonGroup               matlab.ui.container.ButtonGroup
        oSVDButton                      matlab.ui.control.RadioButton
        cSVDButton                      matlab.ui.control.RadioButton
        SVDButton                       matlab.ui.control.RadioButton
        CalculateDSCmapsButton          matlab.ui.control.Button
        ColormapButtonGroup_PostMap     matlab.ui.container.ButtonGroup
        TurboButton_PostMap             matlab.ui.control.RadioButton
        GreyscaleButton_PostMap         matlab.ui.control.RadioButton
        ContrastSlider_PostMap          matlab.ui.control.Slider
        ContrastSliderLabel_ParameterMaps  matlab.ui.control.Label
        BrightnessSlider_PostMap        matlab.ui.control.Slider
        BrightnessSliderLabel_ParameterMaps  matlab.ui.control.Label
        ChooseMapTypeDropDown           matlab.ui.control.DropDown
        ChooseMapTypeDropDownLabel      matlab.ui.control.Label
        Dim5Spinner_PreMap              matlab.ui.control.Spinner
        Dim5Spinner_Label_ParameterMaps  matlab.ui.control.Label
        Dim4Spinner_PreMap              matlab.ui.control.Spinner
        Dim4Spinner_Label_ParameterMaps  matlab.ui.control.Label
        SliceSlider_PreMap              matlab.ui.control.Slider
        SliceLabel_ParameterMaps_PreMap  matlab.ui.control.Label
        SelectPreMapDropDown            matlab.ui.control.DropDown
        SelectDSCvolumetricdataformapcalculationLabel  matlab.ui.control.Label
        SliceSpinner_PreMap             matlab.ui.control.Spinner
        UIAxes_PostMap                  matlab.ui.control.UIAxes
        UIAxes_PreMap                   matlab.ui.control.UIAxes
        DViewerTab                      matlab.ui.container.Tab
        SavesceneimageButton            matlab.ui.control.Button
        DataDimensionsPanel             matlab.ui.container.Panel
        ZEditField_Viewer               matlab.ui.control.NumericEditField
        ZEditFieldLabel_Viewer          matlab.ui.control.Label
        XEditField_Viewer               matlab.ui.control.NumericEditField
        XEditFieldLabel_Viewer          matlab.ui.control.Label
        YEditField_Viewer               matlab.ui.control.NumericEditField
        YEditFieldLabel_Viewer          matlab.ui.control.Label
        OverlayButton                   matlab.ui.control.StateButton
        DashLabel                       matlab.ui.control.Label
        SliceRangeHighSpinner_Viewer    matlab.ui.control.Spinner
        SliceRangeLowSpinner_Viewer     matlab.ui.control.Spinner
        DisplayedSliceRangeLabel        matlab.ui.control.Label
        Dim4Spinner_Viewer              matlab.ui.control.Spinner
        Dim4Spinner_ViewerLabel         matlab.ui.control.Label
        Dim5Spinner_Viewer              matlab.ui.control.Spinner
        Dim5Spinner_ViewerLabel         matlab.ui.control.Label
        ColormapImage_Viewer            matlab.ui.control.Image
        AlphamapDropDown_Viewer         matlab.ui.control.DropDown
        AlphamapDropDownLabel_Viewer    matlab.ui.control.Label
        ColormapDropDown_Viewer         matlab.ui.control.DropDown
        ColormapDropDownLabel_Viewer    matlab.ui.control.Label
        RenderingStyleDropDown          matlab.ui.control.DropDown
        RenderingStyleDropDownLabel     matlab.ui.control.Label
        Select3DViewerDropDown          matlab.ui.control.DropDown
        Select3DViewerLabel             matlab.ui.control.Label
        ViewerPanel                     matlab.ui.container.Panel
        UIAxes_AlphaMap                 matlab.ui.control.UIAxes
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
        ContextMenu_PreMap              matlab.ui.container.ContextMenu
        RotateMenu_PreMap               matlab.ui.container.Menu
        FlipVerticallyMenu_PreMap       matlab.ui.container.Menu
        FlipHorizontallyMenu_PreMap     matlab.ui.container.Menu
        ResetViewMenu_PreMap            matlab.ui.container.Menu
        PermuteDimensionsMenu_PreMap    matlab.ui.container.Menu
        PermuteMenu_3_4_PreMap          matlab.ui.container.Menu
        PermuteMenu_3_5_PreMap          matlab.ui.container.Menu
        PermuteMenu_4_5_PreMap          matlab.ui.container.Menu
        ContextMenuEdema                matlab.ui.container.ContextMenu
        HemisphereScalingFactorMenu     matlab.ui.container.Menu
        BelayevScalingFactorMenu        matlab.ui.container.Menu
        GerrietsCompressionFactorMenu   matlab.ui.container.Menu
        ContextMenu_PostMap             matlab.ui.container.ContextMenu
        RotateMenu_PostMap              matlab.ui.container.Menu
        FlipVerticallyMenu_PostMap      matlab.ui.container.Menu
        FlipHorizontallyMenu_PostMap    matlab.ui.container.Menu
        ResetViewMenu_PostMap           matlab.ui.container.Menu
        ContextMenu_Registration        matlab.ui.container.ContextMenu
        ResetViewMenu_Registration      matlab.ui.container.Menu
        ContextMenu_RegistrationInstructions  matlab.ui.container.ContextMenu
        ResetInstructionsMenu           matlab.ui.container.Menu
    end

    
    properties (Access = private)

        % Loading and preview tab properties
        PvDatasetsFile % Filepath of selected archive file
        StudyPath % Filepath of selected study directory
        TEvalues = zeros(1000, 1000); % 1000x1000 table storing TE values
        TRvalues = zeros(1000, 1000); % 1000x1000 table storing TR values
        TIvalues = zeros(1000, 1000); % 1000x1000 table storing TI values
        ExperimentPropertyTable % Table of loaded experiment properties
        SavedTable % Table for storing all saved segmenterd/registered data.

        PreviewImageData % Preview experiment image data matrix
        PreviewImage % Property for storing imshow of PreviewImageData
        ExpDimsPreview % Dimensions of preview experiment 

        % Segmenter tab
        DropDownItemsCombined = {'None'}; % Stored items featuring loaded and saved experiments
        % Brain segmentation
        CurrentSlice % Points to current slice matrix
        OriginalSegmenterImageData % Original experiment image data matrix
        WorkingSegmenterImageData % Working experiment image data matrix
        ExpDimsSegmenter % Dimensions of selected experiment for segmentation
        SegmenterImage % Property for storing imshow of segmenter image without a mask overlay or MaskedImage
        FreeROI % Property for storing current manual ROI object
        ROI_OperationID = ""; % Manually set ROI operation identifier
        MaskedImage % Masked image of current slice
        BrainMask % Binary mask of current slice brain
        GreenScreen % Mask green screen of current slice
        SegmenterImageZX % Property for storing unwarped ZX image based on chosen Y
        SegmenterImageZY % Property for storing unwarped ZY image based in chosen X
        SegmenterDimTriplet % Voxel dimensions of the loaded image data matrix
        SegmenterHelperVolume % Stores 3D permuted volume for use with helper UIaxes
        SegmenterPosX % Position X of the current helperUp perspective
        SegmenterPosY % Position Y of the current helperDown perspective
         
        % Hemisphere segmentation
        HemisphereMask % 4D Matrix with right and left hemisphere masks stored in 4th dimension for each slice - 1 = left, 2 = right
        BlueScreen % Hemisphere mask blue screen for left hemi
        RedScreen % Hemisphere mask red screen for right hemi

        % ROI segmentation
        YellowScreen % ROI mask yellow screen
        ROIVolumeSegmenterWindow % Volume segmenter window
        
        % Saved segmenter data
        SavedBrainMask % Saved brain mask data of current experiment
        DropDownItemsSavedOnly = {'None'}; % Stored items featuring only saved experiments

        % Volumetry tab
        VolumetryImageData % Property for storing image data of currently selected experiment in volumetry tab
        VolumetryBrainMask % Property for storing brain mask of currently selected experiment in volumetry tab
        VolumetryHemiMask % Property for storing hemisphere mask of currently selected experiment in volumetry tab
        VolumetryROI % Property for storing roi data of currently selected experiment in volumetry tab
        VolumetryDimX % Property for storing voxel dimension x of currently selected experiment in volumetry tab
        VolumetryDimY % Property for storing voxel dimension y of currently selected experiment in volumetry tab
        VolumetryThickness % Property for storing slice thickness of currently selected experiment in volumetry tab
        VolumetryGap  % Property for storing slice gap of currently selected experiment in volumetry tab

        % Registration tab
        ExpDimsRegistration % Dimensions of currently displayed registered data
        RegistrationViewerWindow % Registration data viewer window
        MovingNDims % Number of moving image data dimensions
        FixedNDims % Number of fixed image data dimensions
        ParameterNDims % Number of parameter image data dimensions
        AtlasImporterWindow % Atlas importer window
        ChosenAtlas % Property for storing selected reference atlas
        ResizedAtlasProperties % Stored atlas properties after resizing operations
        RegisteredImageData % Property for storing registered image data
        PreRegistrationImage % Property for storing before-registration image data
        RegisteredMask % Property for storing mask of fixed image data used in registration
        
        % Parameter Maps tab
        DSCSettingsWindow % DSC Settings dialogue window
        MTTData % MTT data of a DSC sequence
        CBFData % CBF data of a DSC sequence
        CBVData % CBV data of a DSC sequence
        CBVLCData % CBV_LC data of a DSC sequence
        PreMapImage % Property for storing imshow of currently displayed image without mask overlay
        PreMapImageData % Image data of currently displayed sequence for mapping
        PostMapWorkMask % Working mask of currently displayed ASL sequence
        PostMapImageData % Image data of currently displayed parameter map
        PostMapImage % Property for storing imshow of currently displayed parameter map without mask overlay
        ExpDimsPreMap % Dimensions of currently displayed sequence for mapping
        ExpDimsPostMap % Dimensions of currently displayed parameter map

        % 3D Viewer Tab
        ViewerImageData % Property for storing currently matrix of currently selected experiment in 3D Viewer
        CurrentVolume % Property for storing chosen 3D volume for viewer
        ViewerImageDataDims % Dimension sizes of the currently loaded experiment
        ViewerDimTriplet % Property for storing dimension triplet for 
        OverlayPickerWindow % Overlay picker window
        AlphamapPoly % Interactive PolyLine for Viewer alphamap control

    end
    
    properties (Access = public)
        % General properties
        WorkingFolder = strcat(tempdir, 'Brukkit'); % Filepath to working folder
        ExportFolderPath % Filepath of created export folder
        ProgressBar % Property for storing progress dialogues when opening new windows

        % ROI segmentation properties 
        ROIIdentifiers = {}; % Matrix containing added ROI Names
        ROIMask = [];% 4D Matrix containing added ROI masks for each slice

        % Registration Atlas properties
        AtlasCollection = struct(); % Struct containing all imported reference atlases

        % DSC Parameter map properties
        DSCOptions = DSC_mri_getOptions; % DSC map calculation options

        % 3D Viewer Tab
        ViewerParentObject % Property for storing viewer3d object
    end
    
    methods (Access = private)

        % Preview UIAxes image updating
        function RefreshImagePreview(app)
            app.ExpDimsPreview = size(app.PreviewImageData);
            switch numel(app.ExpDimsPreview)
                case 3
                    app.CurrentSlice = app.PreviewImageData(:,:, round(app.SliceSlider_Preview.Value));
                case 4
                    app.CurrentSlice = app.PreviewImageData(:,:, round(app.SliceSlider_Preview.Value), round(app.Dim4Slider_Preview.Value));
                case 5
                    app.CurrentSlice = app.PreviewImageData(:,:, round(app.SliceSlider_Preview.Value), round(app.Dim4Slider_Preview.Value), round(app.Dim5Slider_Preview.Value));
                otherwise
                    %error alert missing
            end
            % app.CurrentSlice = (app.CurrentSlice - min(app.CurrentSlice(:))) / (max(app.CurrentSlice(:)) - min(app.CurrentSlice(:))); % Scale image to [0 1]
            % app.CurrentSlice = im2uint8(app.CurrentSlice * exp(app.ContrastSlider_Preview.Value) +  app.BrightnessSlider_Preview.Value); % Apply contrast and brightness
            app.CurrentSlice = RefreshImageBC_mex(app.CurrentSlice,app.ContrastSlider_Preview.Value,app.BrightnessSlider_Preview.Value);
            switch app.TurboButton_Preview.Value
                case true
                    app.PreviewImage = imshow(app.CurrentSlice, 'DisplayRange', [0 1], 'Parent', app.UIAxes_Preview, Colormap = turbo);
                otherwise
                    app.PreviewImage = imshow(app.CurrentSlice, 'DisplayRange', [0 1], 'Parent', app.UIAxes_Preview);
            end
            app.PreviewImage.ContextMenu = app.ContextMenu_Preview;
        end
        
        % Registration UIAxes image updating
        function RefreshImageRegistration(app)
            % Get chosen image based on image shown switch
            if app.ImageshownSwitch_Registration.Value == "After"
                chosen_Image = app.RegisteredImageData;
            else
                chosen_Image = app.PreRegistrationImage;
            end
            app.ExpDimsRegistration = size(app.RegisteredImageData);
            switch numel(app.ExpDimsRegistration)
                case 2
                    app.CurrentSlice = chosen_Image(:,:);
                case 3
                    app.CurrentSlice = chosen_Image(:,:, app.SliceSpinner_Registration.Value);
                case 4
                    app.CurrentSlice = chosen_Image(:,:, app.SliceSpinner_Registration.Value, app.Dim4Spinner_TimeAlignmentControl.Value);
                case 5
                    app.CurrentSlice = chosen_Image(:,:, app.SliceSpinner_Registration.Value, app.Dim4Spinner_TimeAlignmentControl.Value, app.Dim5Spinner_TimeAlignmentControl.Value);
            end
            app.CurrentSlice = (app.CurrentSlice - min(app.CurrentSlice(:))) / (max(app.CurrentSlice(:)) - min(app.CurrentSlice(:))); % Scale image to [0 1]
            switch app.TurboButton_Registration.Value
                case true
                    reg = imshow(app.CurrentSlice, 'DisplayRange', [0 1], 'Parent', app.UIAxes_Registration, Colormap = turbo);
                otherwise
                    reg = imshow(app.CurrentSlice, 'DisplayRange', [0 1], 'Parent', app.UIAxes_Registration);
            end
            reg.ContextMenu = app.ContextMenu_Registration;
        end

        % Parameter Maps UIAxes input image updating
        function RefreshImagePreMap(app)
            app.ExpDimsPreMap = size(app.PreMapImageData);
            switch numel(app.ExpDimsPreMap)
                case 2
                    app.CurrentSlice = app.PreMapImageData(:,:);
                case 3
                    app.CurrentSlice = app.PreMapImageData(:,:,app.SliceSpinner_PreMap.Value);
                case 4
                    app.CurrentSlice = app.PreMapImageData(:,:,app.SliceSpinner_PreMap.Value, app.Dim4Spinner_PreMap.Value);
                case 5
                    app.CurrentSlice = app.PreMapImageData(:,:,app.SliceSpinner_PreMap.Value, app.Dim4Spinner_PreMap.Value, app.Dim5Spinner_PreMap.Value);
                otherwise
                    %error alert missing
            end
            app.CurrentSlice = (app.CurrentSlice - min(app.CurrentSlice(:))) / (max(app.CurrentSlice(:)) - min(app.CurrentSlice(:))); % Scale image to [0 1]
            app.PreMapImage = imshow(app.CurrentSlice, 'DisplayRange', [0 1], 'Parent', app.UIAxes_PreMap);
            app.PreMapImage.ContextMenu = app.ContextMenu_PreMap;
        end

        % Parameter Maps UIAxes output image updating
        function RefreshImagePostMap(app)
            app.ExpDimsPostMap = size(app.PostMapImageData);
            switch numel(app.ExpDimsPostMap)
                case 2
                    app.CurrentSlice = app.PostMapImageData(:,:);
                case 3
                    app.CurrentSlice = app.PostMapImageData(:,:,app.SliceSpinner_PostMap.Value);
                otherwise
                    %error alert missing
            end
            % app.CurrentSlice = (app.CurrentSlice - min(app.CurrentSlice(:))) / (max(app.CurrentSlice(:)) - min(app.CurrentSlice(:))); % Scale image to [0 1]
            % app.CurrentSlice = im2uint8(app.CurrentSlice * exp(app.ContrastSlider_PostMap.Value) + app.BrightnessSlider_PostMap.Value); % Apply contrast and brightness
            app.CurrentSlice = RefreshImageBC_mex(app.CurrentSlice,app.ContrastSlider_PostMap.Value,app.BrightnessSlider_PostMap.Value);
            switch app.TurboButton_PostMap.Value
                case true
                     app.PostMapImage = imshow(app.CurrentSlice, 'DisplayRange', [0 1], 'Parent', app.UIAxes_PostMap, Colormap = turbo);
                otherwise
                     app.PostMapImage = imshow(app.CurrentSlice, 'DisplayRange', [0 1], 'Parent', app.UIAxes_PostMap);
            end
            app.PostMapImage.ContextMenu = app.ContextMenu_PostMap;
        end
        
        % Function returns edema adjusted slice area
        function adj_Area = AdjustSliceForEdema(app, slice_mask, hemi_mask)
            switch numel(size(hemi_mask))
                case 3
                    left_hemi = hemi_mask(:,:,1);
                    right_hemi = hemi_mask(:,:,2);
                case 4
                    left_hemi = hemi_mask(:,:,:,1);
                    right_hemi = hemi_mask(:,:,:,2);
            end
            dice_left = dice(logical(slice_mask), logical(left_hemi));
            dice_right = dice(logical(slice_mask), logical(right_hemi));
            left_area = nnz(left_hemi);
            right_area = nnz(right_hemi);

            if dice_left > dice_right
                % Get area to adjust and remaining ROI area
                area_to_adjust = nnz(slice_mask & left_hemi);
                remaining_area = slice_mask;
                remaining_area(slice_mask & left_hemi) = 0;
                remaining_area = nnz(remaining_area);
                % Use simple hemisphere scaling where area is adjusted for
                % a factor of (contralateral area/ipsilateral area)
                if app.HemisphereScalingFactorMenu.Checked == "on"
                    adj_Area = area_to_adjust*(right_area/left_area);

                % Use hemisphere scaling factor described in Belayev et al.
                % 2003, 1-(ipsilateral-contralateral/contralateral area)
                elseif app.BelayevScalingFactorMenu.Checked == "on"
                    adj_Area = area_to_adjust*(1-((left_area-right_area)/right_area));

                % Use compression factor described in Gerriets et al. 2004.
                elseif app.GerrietsCompressionFactorMenu.Checked == "on"
                    adj_Area = right_area+left_area-((right_area+left_area-area_to_adjust)*((right_area+left_area)/(2*right_area)));
                end
                % Add remaining area to edema corrected area
                adj_Area = adj_Area + remaining_area;

            elseif dice_right > dice_left
                % Get area to adjust and remaining ROI area
                area_to_adjust = nnz(slice_mask & right_hemi);
                remaining_area = slice_mask;
                remaining_area(slice_mask & right_hemi) = 0;
                remaining_area = nnz(remaining_area);
                % Use simple hemisphere scaling where area is adjusted for
                % a factor of (contralateral area/ipsilateral area)
                if app.HemisphereScalingFactorMenu.Checked == "on"
                    adj_Area = area_to_adjust*(left_area/right_area);

                % Use hemisphere scaling factor described in Belayev et al.
                % 2003, 1-(ipsilateral-contralateral/contralateral area)
                elseif app.BelayevScalingFactorMenu.Checked == "on"
                    adj_Area = area_to_adjust*(1-((right_area-left_area)/left_area));

                % Use compression factor described in Gerriets et al. 2004.
                elseif app.GerrietsCompressionFactorMenu.Checked == "on"
                    adj_Area = left_area+right_area-((left_area+right_area-area_to_adjust)*((left_area+right_area)/(2*left_area)));
                end
                % Add remaining area to edema corrected area
                adj_Area = adj_Area + remaining_area;

            elseif dice_right == dice_left
                adj_Area = nnz(slice_mask);
            end
        end

        % Function returns total volume of input matrix, corrected for
        % slice gaps and volume descriptives
        function [sliceTable, Volume, mean_val, std_val, median_val, IQRlow, IQRup, min_val, max_val] = GetVolumetricData(app, image_data, mask_data, voxel_area, slice_thickness, slice_gap, correction_hemi)   
            sliceTable=table();
            dims = size(image_data);
            % Mask image using mask data
            switch numel(dims)
                case 5
                    for i=1:dims(3)
                        for j=1:dims(4)
                            for k=1:dims(5)
                                image_data(:,:,i,j,k) = image_data(:,:,i,j,k).*mask_data(:,:,i);
                            end
                        end
                    end
                case 4
                    for i=1:dims(3)
                        for j=1:dims(4)
                            image_data(:,:,i,j) = image_data(:,:,i,j).*mask_data(:,:,i);
                        end
                    end
                case 3
                    for i=1:dims(3)
                        image_data(:,:,i) = image_data(:,:,i).*mask_data(:,:,i);
                    end
                case 2
                    image_data = image_data.*mask_data;
            end
            
            % Get single voxel volume
            voxel_V = voxel_area*slice_thickness;
            switch nargin
                case 6
                    % Calculate nonzero total volume
                    Volume = nnz(mask_data)*voxel_V;
                    % If mask is 3D go through mask and check for possible
                    % volume corrections
                    if numel(dims)>2
                        for i=1:(dims(3))
                            % Go through individual slices, if slice contains nonzero elements add the slice to nonzero slice table 
                            if ~isequal(mask_data(:,:,i), false(dims(1:2))) 
                                temp_table = table(i, nnz(mask_data(:,:,i))*voxel_area, 'VariableNames', {'Slice Number' 'Slice Area'});
                                sliceTable = cat(1, sliceTable, temp_table);
                                % If the next slice also contains nonzero
                                % elements calculate gap volume and add the
                                % correction to total volume
                                if i ~= dims(3) && ~isequal(mask_data(:,:,i+1), false(dims(1:2)))
                                    gap_voxelN = (nnz(mask_data(:,:,i))+nnz(mask_data(:,:,i+1)))/2;
                                    correction = (voxel_area*slice_gap)*gap_voxelN;
                                    Volume = Volume + correction;
                                end
                            end
                        end
                    else
                    % If slice contains nonzero elements add the slice to nonzero slice table 
                        if ~isequal(mask_data, false(dims(1:2))) 
                            temp_table = table(1, nnz(mask_data)*voxel_area, 'VariableNames', {'Slice Number' 'Slice Area'});
                            sliceTable = cat(1, sliceTable, temp_table);
                        end
                    end
                case 7
                    % If mask is 3D go through mask and add corrected
                    % volumes and gap corrections
                    Volume = 0;
                    if numel(dims)>2
                        for i=1:(dims(3))
                            % Go through individual slices, if slice contains nonzero elements add slice to
                            % nonzero slice table, and add edema corrected slice volume to total if hemispheres are segmented
                            if ~isequal(mask_data(:,:,i), false(dims(1:2)))
                                if ~isequal(correction_hemi(:,:,i,1), false(dims(1:2)))
                                    adj_Slice = AdjustSliceForEdema(app, mask_data(:,:,i), correction_hemi(:,:,i,:));
                                    temp_table = table(i, adj_Slice*voxel_area, 'VariableNames', {'Slice Number' 'Slice Area'});
                                    sliceTable = cat(1, sliceTable, temp_table);
                                    Volume = Volume + (adj_Slice*voxel_area*slice_thickness);
                                else
                                    adj_Slice = nnz(mask_data(:,:,i));
                                    temp_table = table(i, nnz(mask_data(:,:,i))*voxel_area, 'VariableNames', {'Slice Number' 'Slice Area'});
                                    sliceTable = cat(1, sliceTable, temp_table);
                                    Volume = Volume + (adj_Slice*voxel_area*slice_thickness);
                                end
                                % If the next slice also contains nonzero
                                % elements calculate gap volume and add the
                                % correction to total volume
                                if i ~= dims(3) && ~isequal(mask_data(:,:,i+1), false(dims(1:2)))
                                    if ~isequal(correction_hemi(:,:,i+1,1), false(dims(1:2)))
                                        adj_SliceNext = AdjustSliceForEdema(app, mask_data(:,:,i+1), correction_hemi(:,:,i+1,:));
                                        gap_voxelN = (adj_Slice+adj_SliceNext)/2;
                                        correction = (voxel_area*slice_gap)*gap_voxelN;
                                        Volume = Volume + correction;
                                    else
                                        adj_SliceNext = nnz(mask_data(:,:,i+1));
                                        gap_voxelN = (adj_Slice+adj_SliceNext)/2;
                                        correction = (voxel_area*slice_gap)*gap_voxelN;
                                        Volume = Volume + correction;
                                    end
                                end
                            end
                        end
                    else
                        if ~isequal(mask_data, false(dims(1:2))) 
                            adj_Slice = AdjustSliceForEdema(app, mask_data, correction_hemi);
                            temp_table = table(1, adj_Slice*voxel_area, 'VariableNames', {'Slice Number' 'Slice Area'});
                            sliceTable = cat(1, sliceTable, temp_table);
                            Volume = adj_Slice*voxel_area*slice_thickness;
                        end
                    end
            end
            
            mean_val = mean(nonzeros(image_data), "all");
            std_val = std(nonzeros(image_data), 1, "all");
            median_val = median(nonzeros(image_data), "all");
            IQRlow = quantile(nonzeros(image_data), 0.25, "all");
            IQRup = quantile(nonzeros(image_data), 0.75, "all");
            min_val = min(nonzeros(image_data), [], "all");
            max_val = max(nonzeros(image_data), [], "all");
        end

        % Function updates volumetry ROI section
        function UpdateVolumetryROI(app)
            voxel_Area = app.VolumetryDimY*app.VolumetryDimX;
            % Find index of selected ROI
            index = find(contains(app.VolumetryROI.ID, app.SelectROIDropDown.Value));
            switch app.ApplyEdemaCorrectionCheckBox.Value
                case 1
                    switch numel(size(app.VolumetryImageData))
                        case 2
                            [sliceTable, Volume, mean_val, std_val, median_val, IQRlow, IQRup, min_val, max_val] = GetVolumetricData(app, app.VolumetryImageData, app.VolumetryROI.Mask(:,:,index), voxel_Area, app.VolumetryThickness, app.VolumetryGap, app.VolumetryHemiMask);
                        otherwise
                            [sliceTable, Volume, mean_val, std_val, median_val, IQRlow, IQRup, min_val, max_val] = GetVolumetricData(app, app.VolumetryImageData, app.VolumetryROI.Mask(:,:,:,index), voxel_Area, app.VolumetryThickness, app.VolumetryGap, app.VolumetryHemiMask);
                    end
                case 0
                    switch numel(size(app.VolumetryImageData))
                        case 2
                            [sliceTable, Volume, mean_val, std_val, median_val, IQRlow, IQRup, min_val, max_val] = GetVolumetricData(app, app.VolumetryImageData, app.VolumetryROI.Mask(:,:,index), voxel_Area, app.VolumetryThickness, app.VolumetryGap);
                        otherwise
                            [sliceTable, Volume, mean_val, std_val, median_val, IQRlow, IQRup, min_val, max_val] = GetVolumetricData(app, app.VolumetryImageData, app.VolumetryROI.Mask(:,:,:,index), voxel_Area, app.VolumetryThickness, app.VolumetryGap);
                    end
            end
            app.UITable_VolumetryROI.Data = sliceTable;
            app.VolumeEditField_ROI.Value = Volume;

            % Populate ROI descriptive edit fields
            try
                app.MeanEditField_ROI.Value = mean_val;
                app.SDEditField_ROI.Value = std_val;
                app.MedianEditField_ROI.Value = median_val;
                app.IQRLowerEditField_ROI.Value = IQRlow;
                app.IQRUpperEditField_ROI.Value = IQRup;
                app.MinEditField_ROI.Value = min_val;
                app.MaxEditField_ROI.Value = max_val;
            catch
                app.MeanEditField_ROI.Value = 0;
                app.SDEditField_ROI.Value = 0;
                app.MedianEditField_ROI.Value = 0;
                app.IQRLowerEditField_ROI.Value = 0;
                app.IQRUpperEditField_ROI.Value = 0;
                app.MinEditField_ROI.Value = 0;
                app.MaxEditField_ROI.Value = 0;
            end
        end

        % Saving temporary experiment data to permanent tables
        function SaveData(app, tab)
            switch tab
                case 'Preview'
                    OrigIndex = find(strcmp(app.ExperimentPropertyTable{:,'Experiment ID'}, app.PreviewDropDown.Value));
                    exp_ID = append(app.PreviewDropDown.Value, '_Preview');
                    image_Data = app.PreviewImageData;
                    saved_BrainMask = false(size(image_Data));
                    hemi_Mask = false(1);
                    roi.Mask = false(1);
                    roi.ID = {'None'};
                    TE = app.ExperimentPropertyTable.(3)(app.PreviewDropDown.Value);
                    TR = app.ExperimentPropertyTable.(4)(app.PreviewDropDown.Value);
                    vox_dim_X = app.ExperimentPropertyTable.(5)(app.PreviewDropDown.Value); 
                    vox_dim_Y = app.ExperimentPropertyTable.(6)(app.PreviewDropDown.Value);
                    slice_Thickness = app.ExperimentPropertyTable.(7)(app.PreviewDropDown.Value);
                    slice_Gap = app.ExperimentPropertyTable.(8)(app.PreviewDropDown.Value);
                    units = app.ExperimentPropertyTable.(9)(app.PreviewDropDown.Value);
                    RotMat = app.ExperimentPropertyTable.(10)(app.PreviewDropDown.Value);
                case 'Segmenter'
                    exp_ID = append(app.SegmentDropDown.Value, '_Segmented');
                    image_Data = app.WorkingSegmenterImageData;
                    saved_BrainMask = app.SavedBrainMask;
                    switch numel(app.ExpDimsSegmenter)
                        case 2
                            if ~isequal(app.HemisphereMask, false(cat(2, app.ExpDimsSegmenter, 2)))
                                hemi_Mask = app.HemisphereMask;
                            else
                                hemi_Mask = false(1);
                            end
                        otherwise
                            if ~isequal(app.HemisphereMask, false(cat(2, app.ExpDimsSegmenter(1:3), 2)))
                                hemi_Mask = app.HemisphereMask;
                            else
                                hemi_Mask = false(1);
                            end
                    end
                    if ~isequal(app.ROIMask, [])
                        roi.Mask = app.ROIMask;
                    else
                        roi.Mask = false(1);
                    end
                    if ~isequal(app.ROIIdentifiers, {})
                        roi.ID = app.ROIIdentifiers;
                    else
                        roi.ID = {'None'};
                    end
                    try
                        OrigIndex = app.SavedTable.OrigIndex(app.SegmentDropDown.Value);
                        TE = app.SavedTable.TE(app.SegmentDropDown.Value);
                        TR = app.SavedTable.TR(app.SegmentDropDown.Value);
                        vox_dim_X = app.SavedTable.VoxDimX(app.SegmentDropDown.Value); 
                        vox_dim_Y = app.SavedTable.VoxDimY(app.SegmentDropDown.Value);
                        slice_Thickness = app.SavedTable.SliceThickness(app.SegmentDropDown.Value);
                        slice_Gap = app.SavedTable.SliceGap(app.SegmentDropDown.Value);
                        units = app.SavedTable.Units(app.SegmentDropDown.Value);
                        RotMat = app.SavedTable.RotMat(app.SegmentDropDown.Value);
                    catch
                        try
                            OrigIndex = find(strcmp(app.ExperimentPropertyTable{:,'Experiment ID'}, app.SegmentDropDown.Value));
                            TE = app.ExperimentPropertyTable.(3)(app.SegmentDropDown.Value);
                            TR = app.ExperimentPropertyTable.(4)(app.SegmentDropDown.Value);
                            vox_dim_X = app.ExperimentPropertyTable.(5)(app.SegmentDropDown.Value); 
                            vox_dim_Y = app.ExperimentPropertyTable.(6)(app.SegmentDropDown.Value);
                            slice_Thickness = app.ExperimentPropertyTable.(7)(app.SegmentDropDown.Value);
                            slice_Gap = app.ExperimentPropertyTable.(8)(app.SegmentDropDown.Value);
                            units = app.ExperimentPropertyTable.(9)(app.SegmentDropDown.Value);
                            RotMat = app.ExperimentPropertyTable.(10)(app.SegmentDropDown.Value);
                        catch
                        end
                    end
                case 'Registration'
                    image_Data = app.RegisteredImageData;
                    switch app.ChooseRegistrationTypeDropDown.Value
                        case "Standard"
                            OrigIndex = app.SavedTable.OrigIndex(app.SelectmovingDropDown.Value);
                            exp_ID = append(app.SelectmovingDropDown.Value, '_Registered');
                            selection = uiconfirm(app.BrukKitAlphav0860UIFigure,['Save the fixed data mask along with the registered image data? If the fixed data mask is not saved, registration image data will' ...
                            ' need to be segmented again.'],'Save Fixed Data Mask?', 'Icon','question', 'Options', {'Save Mask','Save without Mask'}, 'DefaultOption', 1);
                            switch selection
                                case 'Save Mask'
                                    saved_BrainMask = app.RegisteredMask;
                                    image_Data = image_Data.*app.RegisteredMask;
                                case 'Save without Mask'
                                    saved_BrainMask = false(size(image_Data));
                            end
                            hemi_Mask = false(1);
                            roi.Mask = false(1);
                            roi.ID = {'None'};
                            TE = app.SavedTable.TE(app.SelectmovingDropDown.Value);
                            TR = app.SavedTable.TR(app.SelectmovingDropDown.Value);
                            vox_dim_X = app.SavedTable.VoxDimX(app.SelectfixedDropDown.Value); 
                            vox_dim_Y = app.SavedTable.VoxDimY(app.SelectfixedDropDown.Value);
                            slice_Thickness = app.SavedTable.SliceThickness(app.SelectfixedDropDown.Value);
                            slice_Gap = app.SavedTable.SliceGap(app.SelectfixedDropDown.Value);
                            units = app.SavedTable.Units(app.SelectfixedDropDown.Value);
                            RotMat = app.SavedTable.RotMat(app.SelectfixedDropDown.Value);
                        case "Reference Atlas"
                            OrigIndex = app.SavedTable.OrigIndex(app.SelectmovingDropDown.Value);
                            exp_ID = append(app.SelectmovingDropDown.Value, '_Atlas_Registered');
                            saved_BrainMask = false(size(image_Data));
                            hemi_Mask = false(1);
                            roi.Mask = false(1);
                            roi.ID = {'None'};
                            TE = app.SavedTable.TE(app.SelectmovingDropDown.Value);
                            TR = app.SavedTable.TR(app.SelectmovingDropDown.Value);
                            vox_dim_X = app.ResizedAtlasProperties.VoxDimX; 
                            vox_dim_Y = app.ResizedAtlasProperties.VoxDimY;
                            slice_Thickness = app.ResizedAtlasProperties.SliceThickness;
                            slice_Gap = app.ResizedAtlasProperties.SliceGap;
                            units = app.ChosenAtlas.Units;
                            RotMat = {app.ResizedAtlasProperties.RotMat};
                        case "Time-Series Alignment"
                            exp_ID = append(app.SelectTimeAlignmentDropDown.Value, '_Aligned');
                            saved_BrainMask = false(size(image_Data));
                            hemi_Mask = false(1);
                            roi.Mask = false(1);
                            roi.ID = {'None'};                 
                            try
                                OrigIndex = app.SavedTable.OrigIndex(app.SelectTimeAlignmentDropDown.Value);
                                TE = app.SavedTable.TE(app.SelectTimeAlignmentDropDown.Value);
                                TR = app.SavedTable.TR(app.SelectTimeAlignmentDropDown.Value);
                                vox_dim_X = app.SavedTable.VoxDimX(app.SelectTimeAlignmentDropDown.Value); 
                                vox_dim_Y = app.SavedTable.VoxDimY(app.SelectTimeAlignmentDropDown.Value);
                                slice_Thickness = app.SavedTable.SliceThickness(app.SelectTimeAlignmentDropDown.Value);
                                slice_Gap = app.SavedTable.SliceGap(app.SelectTimeAlignmentDropDown.Value);
                                units = app.SavedTable.Units(app.SelectTimeAlignmentDropDown.Value);
                                RotMat = app.SavedTable.RotMat(app.SelectTimeAlignmentDropDown.Value);
                            catch
                                try
                                    OrigIndex = find(strcmp(app.ExperimentPropertyTable{:,'Experiment ID'}, app.SelectTimeAlignmentDropDown.Value));
                                    TE = app.ExperimentPropertyTable.(3)(app.SelectTimeAlignmentDropDown.Value);
                                    TR = app.ExperimentPropertyTable.(4)(app.SelectTimeAlignmentDropDown.Value);
                                    vox_dim_X = app.ExperimentPropertyTable.(5)(app.SelectTimeAlignmentDropDown.Value); 
                                    vox_dim_Y = app.ExperimentPropertyTable.(6)(app.SelectTimeAlignmentDropDown.Value);
                                    slice_Thickness = app.ExperimentPropertyTable.(7)(app.SelectTimeAlignmentDropDown.Value);
                                    slice_Gap = app.ExperimentPropertyTable.(8)(app.SelectTimeAlignmentDropDown.Value);
                                    units = app.ExperimentPropertyTable.(9)(app.SelectTimeAlignmentDropDown.Value);
                                    RotMat = app.ExperimentPropertyTable.(10)(app.SelectTimeAlignmentDropDown.Value);
                                catch
                                end
                            end
                    end                    
                case 'Map'
                    exp_ID = append(app.SelectPreMapDropDown.Value, '_Map');
                    image_Data = app.PostMapImageData;
                    try
                        saved_BrainMask = cell2mat(app.SavedTable.BrainMask(app.SelectPreMapDropDown.Value));
                    catch
                        saved_BrainMask = false(size(image_Data));
                    end
                    hemi_Mask = false(1);
                    roi.Mask = false(1);
                    roi.ID = {'None'};                 
                    try
                        OrigIndex = app.SavedTable.OrigIndex(app.SelectPreMapDropDown.Value);
                        TE = app.SavedTable.TE(app.SelectPreMapDropDown.Value);
                        TR = app.SavedTable.TR(app.SelectPreMapDropDown.Value);
                        vox_dim_X = app.SavedTable.VoxDimX(app.SelectPreMapDropDown.Value); 
                        vox_dim_Y = app.SavedTable.VoxDimY(app.SelectPreMapDropDown.Value);
                        slice_Thickness = app.SavedTable.SliceThickness(app.SelectPreMapDropDown.Value);
                        slice_Gap = app.SavedTable.SliceGap(app.SelectPreMapDropDown.Value);
                        units = app.SavedTable.Units(app.SelectPreMapDropDown.Value);
                        RotMat = app.SavedTable.RotMat(app.SelectPreMapDropDown.Value);
                    catch
                        try
                            OrigIndex = find(strcmp(app.ExperimentPropertyTable{:,'Experiment ID'}, app.SelectPreMapDropDown.Value));
                            TE = app.ExperimentPropertyTable.(3)(app.SelectPreMapDropDown.Value);
                            TR = app.ExperimentPropertyTable.(4)(app.SelectPreMapDropDown.Value);
                            vox_dim_X = app.ExperimentPropertyTable.(5)(app.SelectPreMapDropDown.Value); 
                            vox_dim_Y = app.ExperimentPropertyTable.(6)(app.SelectPreMapDropDown.Value);
                            slice_Thickness = app.ExperimentPropertyTable.(7)(app.SelectPreMapDropDown.Value);
                            slice_Gap = app.ExperimentPropertyTable.(8)(app.SelectPreMapDropDown.Value);
                            units = app.ExperimentPropertyTable.(9)(app.SelectPreMapDropDown.Value);
                            RotMat = app.ExperimentPropertyTable.(10)(app.SelectPreMapDropDown.Value);
                        catch
                        end
                    end
            end

            % Construct temporary table of saved data
            temp_Table = table(OrigIndex, {image_Data}, {saved_BrainMask}, {hemi_Mask}, {roi}, TE, TR, vox_dim_X, vox_dim_Y, slice_Thickness, slice_Gap, units, RotMat,'RowNames', {exp_ID}, 'VariableNames', {'OrigIndex' 'Image' 'BrainMask' 'HemiMask' 'ROI' 'TE' 'TR' 'VoxDimX' 'VoxDimY' 'SliceThickness' 'SliceGap' 'Units' 'RotMat'});
            try
                % Move temporarily saved data to permanent app table
                app.SavedTable = [app.SavedTable; temp_Table];
                
                % Update Combined drop down
                app.DropDownItemsCombined = cat(1, app.DropDownItemsCombined, exp_ID);
                app.SegmentDropDown.Items = app.DropDownItemsCombined;
                app.SelectTimeAlignmentDropDown.Items = app.DropDownItemsCombined;
                app.SelectPreMapDropDown.Items = app.DropDownItemsCombined;
                app.Select3DViewerDropDown.Items = app.DropDownItemsCombined;

                % Update DSC and Registration tab drop down menus
                app.DropDownItemsSavedOnly = cat(1, app.DropDownItemsSavedOnly, exp_ID);
                app.SelectfixedDropDown.Items = app.DropDownItemsSavedOnly;
                app.SelectmovingDropDown.Items = app.DropDownItemsSavedOnly;
                app.SelectparameterDropDown.Items = app.DropDownItemsSavedOnly;
                app.SelectVolumetryDropDown.Items = app.DropDownItemsSavedOnly;

                % Display confirmation figure
                uiconfirm(app.BrukKitAlphav0860UIFigure, "Sequence saved to permanent data.", "","Options",{'OK'},"DefaultOption",1, "Icon","success")
            catch ME
                switch ME.identifier
                    case 'MATLAB:table:DuplicateRowNames'
                        selection = uiconfirm(app.BrukKitAlphav0860UIFigure,'Saved data already contains an experiment under the same name, do you want to overwrite the data?','Overwrite data', 'Icon','question');
                        switch selection
                            case 'OK'
                                % Overwrite data of currently saved experiment under same identifier
                                app.SavedTable.Image(exp_ID) = {image_Data};
                                app.SavedTable.BrainMask(exp_ID) = {saved_BrainMask};
                                app.SavedTable.HemiMask(exp_ID) = {hemi_Mask};
                                app.SavedTable.ROI(exp_ID) = {roi};
                                app.SavedTable.TE(exp_ID) = TE;
                                app.SavedTable.TR(exp_ID) = TR;
                                app.SavedTable.VoxDimX(exp_ID) = vox_dim_X;
                                app.SavedTable.VoxDimY(exp_ID) = vox_dim_Y;
                                app.SavedTable.SliceThickness(exp_ID) = slice_Thickness;
                                app.SavedTable.SliceGap(exp_ID) = slice_Gap;
                                app.SavedTable.Units(exp_ID) = units;
                                app.SavedTable.RotMat(exp_ID) = RotMat;
                                
                                % Display confirmation figure
                                uiconfirm(app.BrukKitAlphav0860UIFigure, "Current sequence saved to permanent data.", "","Options",{'OK'},"DefaultOption",1, "Icon","success")
                            case 'Cancel'
                                return
                        end
                    otherwise
                end
            end 
        end
        
        function ExportImageDataGeneral(app, tab)
            % Draw progress box
            progress = uiprogressdlg(app.BrukKitAlphav0860UIFigure,'Title',"Please wait",...
                 'Message', "Retrieving data for export");
            drawnow    
            switch tab
                % Get image data, dropdown value and suffix based on tab
                case 'Preview'
                    ImageData = app.PreviewImageData;
                    DropDownValue = app.PreviewDropDown.Value;
                    Suffix = ".nii";
                case 'Segmenter'
                    ImageData = app.WorkingSegmenterImageData;
                    DropDownValue = app.SegmentDropDown.Value;
                    Suffix = "_segmented.nii";
                case 'Map'
                    ImageData = app.PostMapImageData;
                    DropDownValue = app.SelectPreMapDropDown.Value;
                    switch app.ChooseMapTypeDropDown.Value
                        case 'DSC'
                            Suffix = "_DSC_" + convertCharsToStrings(app.DSCMapDropDown.Value) + ".nii";
                        otherwise
                            Suffix = "_" + convertCharsToStrings(app.ChooseMapTypeDropDown.Value) + ".nii";
                    end
            progress.Value = 0.2;
            progress.Message = "Writing NIfTI data information...";
            pause(0.5);
            end
            % Write initial nifti file for header updating
            niftiwrite(pagetranspose(ImageData),app.ExportFolderPath + filesep + DropDownValue + Suffix);
            info = niftiinfo(app.ExportFolderPath + filesep + DropDownValue + Suffix);
            info.Description = 'Image file generated in BrukKit';
            % Get dimension padding and slice thickness/gap
            switch numel(size(ImageData))
                case 2
                    DimPadding = [];
                    SliceThickness = [];
                    SliceGap = [];
                case 3
                    DimPadding = [];
                    try
                        SliceThickness = app.SavedTable.SliceThickness(DropDownValue);
                        SliceGap = app.SavedTable.SliceGap(DropDownValue);
                    catch
                        SliceThickness = table2array(app.ExperimentPropertyTable(DropDownValue, "Slice Thickness"));
                        SliceGap = table2array(app.ExperimentPropertyTable(DropDownValue, "Slice Gap"));
                    end
                case 4
                    DimPadding = 1;
                    try
                        SliceThickness = app.SavedTable.SliceThickness(DropDownValue);
                        SliceGap = app.SavedTable.SliceGap(DropDownValue);
                    catch
                        SliceThickness = table2array(app.ExperimentPropertyTable(DropDownValue, "Slice Thickness"));
                        SliceGap = table2array(app.ExperimentPropertyTable(DropDownValue, "Slice Gap"));
                    end
                case 5
                    DimPadding = [1,1];
                    try
                        SliceThickness = app.SavedTable.SliceThickness(DropDownValue);
                        SliceGap = app.SavedTable.SliceGap(DropDownValue);
                    catch
                        SliceThickness = table2array(app.ExperimentPropertyTable(DropDownValue, "Slice Thickness"));
                        SliceGap = table2array(app.ExperimentPropertyTable(DropDownValue, "Slice Gap"));
                    end
            end
            % Get other voxel dimensions, update header
            try
                info.PixelDimensions = [app.SavedTable.VoxDimX(DropDownValue), ...
                    app.SavedTable.VoxDimY(DropDownValue), ...
                    SliceThickness + SliceGap, DimPadding];
                temp = split(app.SavedTable.Units(DropDownValue));
                rotm = cell2mat(app.SavedTable.RotMat(DropDownValue));
            catch
                info.PixelDimensions = [table2array(app.ExperimentPropertyTable(DropDownValue, "Voxel dimension X")), ...
                    table2array(app.ExperimentPropertyTable(DropDownValue, "Voxel dimension Y")), ...
                    SliceThickness + SliceGap, DimPadding];
                temp = split(table2array(app.ExperimentPropertyTable(DropDownValue,'Dimension Units')));
                rotm = cell2mat(table2array(app.ExperimentPropertyTable(DropDownValue,"Rotation Matrix")));
            end
            % Update header units
            switch temp(1)
                case "mm"
                    info.SpaceUnits = 'Millimeter';
                case "um"
                    info.SpaceUnits = 'Micron';
                case "m"
                    info.SpaceUnits = 'Meter';
            end
            progress.Value = 0.6;
            progress.Message = "Exporting image data";
            pause(0.5);
            % Update header transformation
            info.Transform.T(1:3,1:3) = rotm;
            info.TransformName = 'Qform';
            % Write final nifti
            niftiwrite(pagetranspose(ImageData),app.ExportFolderPath + filesep + DropDownValue + Suffix, info);
            if  strcmp(tab, 'Segmenter')
                try
                progress.Value = 0.8;
                progress.Message = "Exporting segmenter mask data";
                pause(0.5);
                % Write nifti files for segmentation masks
                niftiwrite(pagetranspose(double(app.SavedBrainMask)),app.ExportFolderPath + filesep + app.SegmentDropDown.Value+"_mask_brain.nii");
                niftiwrite(pagetranspose(double(app.HemisphereMask)),app.ExportFolderPath + filesep + app.SegmentDropDown.Value+"_mask_hemisphere.nii");
                niftiwrite(pagetranspose(double(app.ROIMask)),app.ExportFolderPath + filesep + app.SegmentDropDown.Value+"_mask_ROI.nii");
                roi_id = app.ROIIdentifiers;
                % Save ROI identifiers
                save(app.ExportFolderPath + filesep + app.SegmentDropDown.Value+"_identifiers_ROI.mat", "roi_id")
                catch
                end
            end

            % close the dialog box
            progress.Value = 1;
            progress.Message = "Done!";
            pause(0.5);
            close(progress);
        end

        function ExportImageDataRegistration(app, registration)
            % Draw progress box
            progress = uiprogressdlg(app.BrukKitAlphav0860UIFigure,'Title',"Please wait",...
                 'Message', "Retrieving data for export");
            drawnow  
            switch registration
                % Standard registration (moving/fixed)
                case 'Standard Registration'
                    ImageData = app.RegisteredImageData;
                    Suffix = "_registered.nii";

                    progress.Value = 0.2;
                    progress.Message = "Writing NIfTI data information...";
                    pause(0.5);
                    % Write initial nifti file for header updating
                    niftiwrite(pagetranspose(ImageData),app.ExportFolderPath + filesep + app.SelectmovingDropDown.Value + Suffix);
                    info = niftiinfo(app.ExportFolderPath + filesep + app.SelectmovingDropDown.Value + Suffix);
                    info.Description = 'Image file generated in BrukKit';
                    % Get voxel dimensions, update header
                    switch numel(size(ImageData))
                        case 2
                            SliceThickness = [];
                            SliceGap = [];
                        case 3
                            SliceThickness = app.SavedTable.SliceThickness(app.SelectfixedDropDown.Value);
                            SliceGap = app.SavedTable.SliceGap(app.SelectfixedDropDown.Value);
                    end
                    DimPadding = [];
                    info.PixelDimensions = [app.SavedTable.VoxDimX(app.SelectfixedDropDown.Value), ...
                        app.SavedTable.VoxDimY(app.SelectfixedDropDown.Value), ...
                        SliceThickness + SliceGap, DimPadding];
                    % Update header units
                    temp = split(app.SavedTable.Units(app.SelectfixedDropDown.Value));
                    switch temp(1)
                        case "mm"
                            info.SpaceUnits = 'Millimeter';
                        case "um"
                            info.SpaceUnits = 'Micron';
                        case "m"
                            info.SpaceUnits = 'Meter';
                    end
                    progress.Value = 0.6;
                    progress.Message = "Exporting image data";
                    pause(0.5);
                    % Update header transform
                    rotm = cell2mat(app.SavedTable.RotMat(app.SelectfixedDropDown.Value));
                    info.Transform.T(1:3,1:3) = rotm;
                    info.TransformName = 'Qform';
                    % Write final nifti
                    niftiwrite(pagetranspose(ImageData),app.ExportFolderPath + filesep + app.SelectmovingDropDown.Value + Suffix, info);
                
                % Reference Atlas registration
                case 'Atlas Registration'
                    ImageData = app.RegisteredImageData;
                    Suffix = "_atlas_registered.nii";

                    progress.Value = 0.2;
                    progress.Message = "Writing NIfTI data information...";
                    pause(0.5);
                    % Write initial nifti file for header updating
                    niftiwrite(pagetranspose(ImageData),app.ExportFolderPath + filesep + app.SelectmovingDropDown.Value + Suffix);
                    info = niftiinfo(app.ExportFolderPath + filesep + app.SelectmovingDropDown.Value + Suffix);
                    info.Description = 'Image file generated in BrukKit';
                    % Get voxel dimensions, update header
                    switch numel(size(ImageData))
                        case 2
                            SliceThickness = [];
                            SliceGap = [];
                        case 3
                            SliceThickness = app.ResizedAtlasProperties.SliceThickness;
                            SliceGap = app.ResizedAtlasProperties.SliceGap;
                    end
                    DimPadding = [];
                    info.PixelDimensions = [app.ResizedAtlasProperties.VoxDimX, ...
                        app.ResizedAtlasProperties.VoxDimY, ...
                        SliceThickness + SliceGap, DimPadding];
                    % Update header units
                    temp = split(app.ChosenAtlas.Units);
                    switch temp(1)
                        case "mm"
                            info.SpaceUnits = 'Millimeter';
                        case "um"
                            info.SpaceUnits = 'Micron';
                        case "m"
                            info.SpaceUnits = 'Meter';
                    end
                    progress.Value = 0.6;
                    progress.Message = "Exporting image data";
                    pause(0.5);
                    % Update header transform
                    rotm = app.ResizedAtlasProperties.RotMat;
                    info.Transform.T(1:3,1:3) = rotm;
                    info.TransformName = 'Qform';
                    % Write final nifti
                    niftiwrite(pagetranspose(ImageData),app.ExportFolderPath + filesep + app.SelectmovingDropDown.Value + Suffix, info);

                % Time Series alignment
                case 'Time Series Alignment'
                    ImageData = app.RegisteredImageData;
                    Suffix = "_aligned.nii";

                    progress.Value = 0.2;
                    progress.Message = "Writing NIfTI data information...";
                    pause(0.5);
                    % Write initial nifti file for header updating
                    niftiwrite(pagetranspose(ImageData),app.ExportFolderPath + filesep + app.SelectTimeAlignmentDropDown.Value + Suffix);
                    info = niftiinfo(app.ExportFolderPath + filesep + app.SelectTimeAlignmentDropDown.Value + Suffix);
                    info.Description = 'Image file generated in BrukKit';
                    % Get voxel dimensions, update header
                    switch numel(size(ImageData))
                        case 4
                            DimPadding = 1;
                        case 5
                            DimPadding = [1,1];
                    end
                    try
                        SliceThickness = app.SavedTable.SliceThickness(app.SelectTimeAlignmentDropDown.Value);
                        SliceGap = app.SavedTable.SliceGap(app.SelectTimeAlignmentDropDown.Value);
                    catch
                        SliceThickness = table2array(app.ExperimentPropertyTable(app.SelectTimeAlignmentDropDown.Value, "Slice Thickness"));
                        SliceGap = table2array(app.ExperimentPropertyTable(app.SelectTimeAlignmentDropDown.Value, "Slice Gap"));
                    end
                    % Get other voxel dimensions, update header
                    try
                        info.PixelDimensions = [app.SavedTable.VoxDimX(app.SelectTimeAlignmentDropDown.Value), ...
                            app.SavedTable.VoxDimY(app.SelectTimeAlignmentDropDown.Value), ...
                            SliceThickness + SliceGap, DimPadding];
                        temp = split(app.SavedTable.Units(app.SelectTimeAlignmentDropDown.Value));
                        rotm = cell2mat(app.SavedTable.RotMat(app.SelectTimeAlignmentDropDown.Value));
                    catch
                        info.PixelDimensions = [table2array(app.ExperimentPropertyTable(app.SelectTimeAlignmentDropDown.Value, "Voxel dimension X")), ...
                            table2array(app.ExperimentPropertyTable(app.SelectTimeAlignmentDropDown.Value, "Voxel dimension Y")), ...
                            SliceThickness + SliceGap, DimPadding];
                        temp = split(table2array(app.ExperimentPropertyTable(app.SelectTimeAlignmentDropDown.Value,'Dimension Units')));
                        rotm = cell2mat(table2array(app.ExperimentPropertyTable(app.SelectTimeAlignmentDropDown.Value,"Rotation Matrix")));
                    end
                    % Update header units
                    switch temp(1)
                        case "mm"
                            info.SpaceUnits = 'Millimeter';
                        case "um"
                            info.SpaceUnits = 'Micron';
                        case "m"
                            info.SpaceUnits = 'Meter';
                    end
                    progress.Value = 0.6;
                    progress.Message = "Exporting image data";
                    pause(0.5);
                    % Update header transform
                    info.Transform.T(1:3,1:3) = rotm;
                    info.TransformName = 'Qform';
                    % Write final nifti
                    niftiwrite(pagetranspose(ImageData),app.ExportFolderPath + filesep + app.SelectTimeAlignmentDropDown.Value + Suffix, info);
            end
            % close the dialog box
            progress.Value = 1;
            progress.Message = "Done!";
            pause(0.5);
            close(progress);
        end

        function ResetEnvironment(app)
            % Reset tables
            app.ExperimentPropertyTable = table();
            app.SavedTable = table();
    
            % Reset drop downs and text fields
            app.PreviewDropDown.Items = {'None'};
            app.SegmentDropDown.Items = {'None'};
            app.DropDownItemsSavedOnly = {'None'};
            app.DropDownItemsCombined = {'None'};
            app.SelectVolumetryDropDown.Items = {'None'};
            app.SelectROIDropDown.Items = {'None'};
            app.SelectfixedDropDown.Items = {'None'};
            app.SelectmovingDropDown.Items = {'None'};
            app.SelectparameterDropDown.Items = {'None'};
            app.SelectTimeAlignmentDropDown.Items = {'None'};
            app.SelectPreMapDropDown.Items = {'None'};
            app.Select3DViewerDropDown.Items = {'None'};
    
            % Disable and reset components in different tabs
            
            % Main
            app.ExportEnvironmentButton.Enable = 'off';
            app.CreateBrukKitFolderButton.Enable = 'off';
            % Reset UIAxes
            cla(app.UIAxes_Preview);
            app.UITable_Preview.Data=table();
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
            app.TurboButton_Preview.Enable = 'off';
            app.GreyscaleButton_Preview.Enable = 'off';
             % Reset text fields Preview
            app.ArchiveEditField.Value = "";
            app.SubjectIDEditField.Value = "";
            app.StudyIDEditField.Value = "";
            app.SubjectCommentEditField.Value = "";
            app.StudyCommentEditField.Value = "";
            app.SubjectTypeEditField.Value = "";
            app.SexEditField.Value = "";
            app.WeightEditField.Value = "";
            app.StudyStartDateEditField.Value = "";
            app.StudyStartTimeEditField.Value = "";
            app.SubjectAgeEditField.Value = "";
            
            % Segmenter
            % Reset UIAxes
            cla(app.UIAxes_Segmenter);
            cla(app.UIAxes_SegmenterHelperUp);
            cla(app.UIAxes_SegmenterHelperDown);
            app.UIAxes_SegmenterHelperUp.Visible = 'off';
            app.UIAxes_SegmenterHelperDown.Visible = 'off';
            app.SliceSlider_Segmenter.Enable = 'off';
            app.SliceSpinner_Segmenter.Enable = 'off';
            app.Dim4Spinner_Segmenter.Enable = 'off';
            app.Dim5Spinner_Segmenter.Enable = 'off';
            app.BrightnessSlider_Segmenter.Enable = 'off';
            app.ContrastSlider_Segmenter.Enable = 'off';
            app.SliceSlider_Segmenter.Value = 1;
            app.SliceSpinner_Segmenter.Value = 1;
            app.Dim4Spinner_Segmenter.Value = 1;
            app.Dim5Spinner_Segmenter.Value = 1;
            app.ContrastSlider_Segmenter.Value = 0;
            app.BrightnessSlider_Segmenter.Value = 0;
            app.TurboButton_Segmenter.Enable = 'off';
            app.GreyscaleButton_Segmenter.Enable = 'off';
            app.CurrentSegmentationDropDown.Enable = 'off';
            app.CurrentSegmentationDropDown.Value = 'Brain';
            app.BrainSegmentationToolsPanel.Visible = 'off';
            app.HemisphereSegmentationToolsPanel.Visible = 'off';
            app.ROISegmentationToolsPanel.Visible = 'off';
            app.SelectionToolsPanel.Visible = 'off';
            app.SaveSegmentedDataButton.Enable = 'off';
            app.ExportDataButton_Segmenter.Enable = 'off';
            app.PerspectiveViewButton.Enable = 'off';
    
            % Registration
            % Reset UIAxes
            cla(app.UIAxes_Registration);
            app.ChooseRegistrationTypeDropDown.Value = "Standard";
            app.SliceSlider_Registration.Enable = 'off';
            app.SliceSlider_Registration.Value = 1;
            app.SliceSpinner_Registration.Enable = 'off';
            app.SliceSpinner_Registration.Value = 1;
            app.TurboButton_Registration.Enable = 'off';
            app.GreyscaleButton_Registration.Enable = 'off';
            app.ImageshownSwitch_Registration.Enable = 'off';
            app.ImageshownSwitch_Registration.Value = "After";
            app.UsedifferentparametermapCheckBox.Value = 0;
            app.SelectparameterDropDown.Enable = 'off';
            app.RegistrationInstructionsTextArea.Value = '';
            app.StandardAtlasRegistrationPanel.Visible = 'on';
            app.TimeSeriesAlignmentPanel.Visible = 'off';
            app.SelectfixedDropDown.Visible = 'on';
            app.SelectfixedLabel.Visible = 'on';
            app.ImportReferenceAtlasButton.Visible = 'off';
            app.SelectAtlasDropDown.Visible = 'off';
            app.AtlasCollection = struct();
            app.SelectAtlasDropDown.Items = {'None'};
            app.Dim4Spinner_TimeAlignmentReference.Enable = 'off';
            app.Dim4Spinner_TimeAlignmentReference.Value = 1;
            app.Dim5Spinner_TimeAlignmentReference.Enable = 'off';
            app.Dim5Spinner_TimeAlignmentReference.Value = 1;
            app.AlignDataButton.Enable = 'off';
            app.Dim4Slider_TimeAlignmentControl.Enable = 'off';
            app.Dim4Slider_TimeAlignmentControl.Value = 1;
            app.Dim4Spinner_TimeAlignmentControl.Enable = 'off';
            app.Dim4Spinner_TimeAlignmentControl.Value = 1;
            app.Dim5Slider_TimeAlignmentControl.Enable = 'off';
            app.Dim5Slider_TimeAlignmentControl.Value = 1;
            app.Dim5Spinner_TimeAlignmentControl.Enable = 'off';
            app.Dim5Spinner_TimeAlignmentControl.Value = 1;
    
            % Volumetry 
            cla(app.UIAxes_Volumetry);
            app.UIAxes_Volumetry.Visible = 'off';
            app.ExportDataButton_Volumetry.Enable = 'off';
            % Reset brain fields and table
            app.UITable_VolumetryBrain.Data = table();
            app.VolumeEditField_Brain.Value = 0;
            app.MeanEditField_Brain.Value = 0;
            app.SDEditField_Brain.Value = 0;
            app.MedianEditField_Brain.Value = 0;
            app.IQRLowerEditField_Brain.Value = 0;
            app.IQRUpperEditField_Brain.Value = 0;
            app.MinEditField_Brain.Value = 0;
            app.MaxEditField_Brain.Value = 0;
            % Reset hemisphere fields and table
            app.SelectHemisphereDropDown.Enable = 'off';
            app.UITable_VolumetryHemisphere.Data = table();
            app.VolumeEditField_Hemisphere.Value = 0;
            app.MeanEditField_Hemisphere.Value = 0;
            app.SDEditField_Hemisphere.Value = 0;
            app.MedianEditField_Hemisphere.Value = 0;
            app.IQRLowerEditField_Hemisphere.Value = 0;
            app.IQRUpperEditField_Hemisphere.Value = 0;
            app.MinEditField_Hemisphere.Value = 0;
            app.MaxEditField_Hemisphere.Value = 0;
            % Reset ROI fields and table
            app.SelectROIDropDown.Enable = 'off';
            app.SelectROIDropDown.Items = "None";
            app.UITable_VolumetryROI.Data = table();
            app.ApplyEdemaCorrectionCheckBox.Enable = 'off';
            app.ApplyEdemaCorrectionCheckBox.Value = 0;
            app.VolumeEditField_ROI.Value = 0;
            app.MeanEditField_ROI.Value = 0;
            app.SDEditField_ROI.Value = 0;
            app.MedianEditField_ROI.Value = 0;
            app.IQRLowerEditField_ROI.Value = 0;
            app.IQRUpperEditField_ROI.Value = 0;
            app.MinEditField_ROI.Value = 0;
            app.MaxEditField_ROI.Value = 0;
            app.AreaUnitLabel.Text = "";
            app.VolumeUnitLabel.Text = "";
    
            % Parameter Maps
            % Reset UIAxes
            cla(app.UIAxes_PreMap);
            cla(app.UIAxes_PostMap);
            app.ExportDataButton_Map.Enable = 'off';
            app.SaveDataButton_Map.Enable = 'off';
            app.DSCMapDropDown.Value = 'CBF';
            app.DSCMapDropDown.Enable = 'off';
            app.SliceSlider_PreMap.Enable = 'off';
            app.SliceSlider_PreMap.Value = 1;
            app.SliceSpinner_PreMap.Enable = 'off';
            app.SliceSpinner_PreMap.Value = 1;
            app.Dim5Spinner_PreMap.Enable = 'off';
            app.Dim5Spinner_PreMap.Value = 1;
            app.Dim4Spinner_PreMap.Enable = 'off';
            app.Dim4Spinner_PreMap.Value = 1;
            app.SliceSlider_PostMap.Enable = 'off';
            app.SliceSlider_PostMap.Value = 1;
            app.SliceSpinner_PostMap.Enable = 'off';
            app.SliceSpinner_PostMap.Value = 1;
            app.ContrastSlider_PostMap.Enable = 'off';
            app.ContrastSlider_PostMap.Value = 0;
            app.BrightnessSlider_PostMap.Enable = 'off';
            app.BrightnessSlider_PostMap.Value = 0;
            app.AIFExtractionSliceSpinner.Value = 1;
            app.TurboButton_PostMap.Enable = 'off';
            app.GreyscaleButton_PostMap.Enable = 'off';
            app.TRvaluesText.Value = "";
            app.TIvaluesText.Value = "";
            app.TEvaluesText.Value = "";
            app.ResettodefaultsButtonPushed;

            % 3D Viewer
            delete(app.ViewerParentObject);
            app.RenderingStyleDropDown.Enable = 'off';
            app.RenderingStyleDropDown.Value = "Volume Rendering";
            app.ColormapDropDown_Viewer.Enable = 'off';
            app.ColormapDropDown_Viewer.Value = "Greyscale";
            app.ColormapImage_Viewer.Visible = 'off';
            app.AlphamapDropDown_Viewer.Enable = 'off';
            app.AlphamapDropDown_Viewer.Value = "Linear";
            app.XEditField_Viewer.Value = 0;
            app.YEditField_Viewer.Value = 0;
            app.ZEditField_Viewer.Value = 0;
            app.SliceRangeLowSpinner_Viewer.Enable = 'off';
            app.SliceRangeLowSpinner_Viewer.Value = 1;
            app.SliceRangeHighSpinner_Viewer.Enable = 'off';
            app.SliceRangeHighSpinner_Viewer.Limits = [1, 2];
            app.SliceRangeHighSpinner_Viewer.Value = 1;
            app.Dim4Spinner_Viewer.Enable = 'off';
            app.Dim4Spinner_Viewer.Value = 1;
            app.Dim5Spinner_Viewer.Enable = 'off';
            app.Dim5Spinner_Viewer.Value = 1;
        end
        
        function ClickHandlerHelperUp(app, ~, e)
            coords = e.IntersectionPoint;

            app.SegmenterPosX = ceil(coords(1)*app.SegmenterDimTriplet(3));
            app.SegmenterImageZY = squeeze(app.SegmenterHelperVolume(:,app.SegmenterPosX,:));
            
            z = ceil(coords(2)*app.SegmenterDimTriplet(2));
            app.SliceSlider_Segmenter.Value = z;
            app.SliceSpinner_Segmenter.Value = z;

            RefreshImageSegmenterHelperUp(app);
            RefreshImageSegmenterHelperDown(app);
            RefreshImageSegmenter(app);
        end
        
        function ClickHandlerHelperDown(app, ~, e)
            coords = e.IntersectionPoint;

            app.SegmenterPosY = ceil(coords(1)*app.SegmenterDimTriplet(3));
            app.SegmenterImageZX = squeeze(app.SegmenterHelperVolume(:,:,app.SegmenterPosY));

            z = ceil(coords(2)*app.SegmenterDimTriplet(2));
            app.SliceSlider_Segmenter.Value = z;
            app.SliceSpinner_Segmenter.Value = z;

            RefreshImageSegmenterHelperUp(app);
            RefreshImageSegmenterHelperDown(app);
            RefreshImageSegmenter(app);
        end
        
        function RefreshImageSegmenterHelperUp(app)
            switch app.PerspectiveViewButton.Value
                case 1
                    Tzx = [1/app.SegmenterDimTriplet(3) 0 0; 0 1/app.SegmenterDimTriplet(1) 0; 0 0 1];
                    tformZX = affinetform2d(Tzx);
                    imageZXwarped = imwarp(app.SegmenterImageZX,tformZX);
                    imageZXwarped = RefreshImageBC_mex(imageZXwarped,app.ContrastSlider_Segmenter.Value,app.BrightnessSlider_Segmenter.Value);
                    switch app.TurboButton_Segmenter.Value
                        case true
                            helperUp = imshow(imageZXwarped, 'DisplayRange', [0 1], 'Parent', app.UIAxes_SegmenterHelperUp, Colormap = turbo);
                        otherwise
                            helperUp = imshow(imageZXwarped, 'DisplayRange', [0 1], 'Parent', app.UIAxes_SegmenterHelperUp);
                    end
                    posZ = [0 (app.SliceSpinner_Segmenter.Value-1)/app.SegmenterDimTriplet(2) size(imageZXwarped, 2) 1/app.SegmenterDimTriplet(2)];
                    rectZ = rectangle('Position',posZ,'EdgeColor',[1 1 0],'Parent',app.UIAxes_SegmenterHelperUp);
                    posX = [app.SegmenterPosX/app.SegmenterDimTriplet(3) 0 1/app.SegmenterDimTriplet(3) size(imageZXwarped,1)];
                    rectX = rectangle('Position',posX,'EdgeColor',[1 1 0],'Parent',app.UIAxes_SegmenterHelperUp);

                    helperUp.ButtonDownFcn = @(o, e) ClickHandlerHelperUp(app, o, e);
                    rectZ.ButtonDownFcn = @(o, e) ClickHandlerHelperUp(app, o, e);
                    rectX.ButtonDownFcn = @(o, e) ClickHandlerHelperUp(app, o, e);
                case 0
                    return
            end
        end
        
        function RefreshImageSegmenterHelperDown(app)
            switch app.PerspectiveViewButton.Value
                case 1
                    Tzy = [1/app.SegmenterDimTriplet(3) 0 0; 0 1/app.SegmenterDimTriplet(2) 0; 0 0 1];
                    tformZY = affinetform2d(Tzy);
                    imageZYwarped = imwarp(app.SegmenterImageZY,tformZY);
                    imageZYwarped = RefreshImageBC_mex(imageZYwarped,app.ContrastSlider_Segmenter.Value,app.BrightnessSlider_Segmenter.Value);
                    switch app.TurboButton_Segmenter.Value
                        case true
                            helperUp = imshow(imageZYwarped, 'DisplayRange', [0 1], 'Parent', app.UIAxes_SegmenterHelperDown, Colormap = turbo);
                        otherwise
                            helperUp = imshow(imageZYwarped, 'DisplayRange', [0 1], 'Parent', app.UIAxes_SegmenterHelperDown);
                    end
                    posZ = [0 (app.SliceSpinner_Segmenter.Value-1)/app.SegmenterDimTriplet(2) size(imageZYwarped, 2) 1/app.SegmenterDimTriplet(2)];
                    rectZ = rectangle('Position',posZ,'EdgeColor',[1 1 0],'Parent',app.UIAxes_SegmenterHelperDown);
                    posY = [app.SegmenterPosY/app.SegmenterDimTriplet(3) 0 1/app.SegmenterDimTriplet(3) size(imageZYwarped,1)];
                    rectY = rectangle('Position',posY,'EdgeColor',[1 1 0],'Parent',app.UIAxes_SegmenterHelperDown);

                    helperUp.ButtonDownFcn = @(o, e) ClickHandlerHelperDown(app, o, e);
                    rectZ.ButtonDownFcn = @(o, e) ClickHandlerHelperDown(app, o, e);
                    rectY.ButtonDownFcn = @(o, e) ClickHandlerHelperDown(app, o, e);
                case 0
                    return
            end
        end

        function ApplyAlphaMap(app, ~, ~)
            for i = 1:size(app.AlphamapPoly.Position,1) + 1
                if i == 1
                    alphamap = linspace(0,app.AlphamapPoly.Position(i,2)/app.UIAxes_AlphaMap.YLim(2),app.AlphamapPoly.Position(i)+1);
                elseif i > 1 && i < size(app.AlphamapPoly.Position,1) + 1
                    alphamap = cat(2,alphamap,linspace(app.AlphamapPoly.Position(i-1,2)/app.UIAxes_AlphaMap.YLim(2), ...
                        app.AlphamapPoly.Position(i,2)/app.UIAxes_AlphaMap.YLim(2),app.AlphamapPoly.Position(i)-app.AlphamapPoly.Position(i-1)));
                elseif i == size(app.AlphamapPoly.Position,1) + 1
                    alphamap = cat(2,alphamap,linspace(app.AlphamapPoly.Position(i-1,2)/app.UIAxes_AlphaMap.YLim(2), ...
                        1,255-app.AlphamapPoly.Position(i-1)));
                end
            end
            app.ViewerParentObject.Children.Alphamap = alphamap;
        end

    end


    methods (Access = public)

        % Segmenter UIAxes image updating
        function RefreshImageSegmenter(app)
            app.ExpDimsSegmenter = size(app.OriginalSegmenterImageData);
            switch numel(app.ExpDimsSegmenter)
                case 2
                    app.CurrentSlice = app.WorkingSegmenterImageData(:,:);
                case 3
                    app.CurrentSlice = app.WorkingSegmenterImageData(:,:,app.SliceSpinner_Segmenter.Value);
                case 4
                    app.CurrentSlice = app.WorkingSegmenterImageData(:,:,app.SliceSpinner_Segmenter.Value, app.Dim4Spinner_Segmenter.Value);
                case 5
                    app.CurrentSlice = app.WorkingSegmenterImageData(:,:,app.SliceSpinner_Segmenter.Value, app.Dim4Spinner_Segmenter.Value, app.Dim5Spinner_Segmenter.Value);
                otherwise
                    %error alert missing
            end
            % app.CurrentSlice = (app.CurrentSlice - min(app.CurrentSlice(:))) / (max(app.CurrentSlice(:)) - min(app.CurrentSlice(:))); % Scale image to [0 1]
            % app.CurrentSlice = im2uint8(app.CurrentSlice * exp(app.ContrastSlider_Segmenter.Value) +  app.BrightnessSlider_Segmenter.Value); % Apply contrast and brightness
            app.CurrentSlice = RefreshImageBC_mex(app.CurrentSlice,app.ContrastSlider_Segmenter.Value,app.BrightnessSlider_Segmenter.Value);
            switch app.CurrentSegmentationDropDown.Value
                % Brain segmentation image updating
                case 'Brain'
                    switch app.ImageshownSwitch_Brain.Value
                        case "Overlay"
                            switch app.TurboButton_Segmenter.Value
                                case true
                                    app.SegmenterImage = imshow(app.CurrentSlice, 'DisplayRange', [0 1], 'Parent', app.UIAxes_Segmenter, Colormap = turbo);
                                otherwise
                                    app.SegmenterImage = imshow(app.CurrentSlice, 'DisplayRange', [0 1], 'Parent', app.UIAxes_Segmenter);
                            end
                                 
                            try
                                hold(app.UIAxes_Segmenter, "on");
                                mask_Overlay = imshow(app.GreenScreen, "Parent", app.UIAxes_Segmenter);
                                hold(app.UIAxes_Segmenter, "off");
                                mask_Overlay.AlphaData = app.BrainMask(:,:,app.SliceSpinner_Segmenter.Value)-0.8;
                            catch
                                return
                            end
                            mask_Overlay.ContextMenu = app.ContextMenu_Segmenter;
                        case "Masked"
                            app.MaskedImage = double(app.CurrentSlice).*app.BrainMask(:,:,app.SliceSpinner_Segmenter.Value);
                            switch app.TurboButton_Segmenter.Value
                                case true
                                     app.SegmenterImage = imshow(app.MaskedImage, 'DisplayRange', [0 1], 'Parent', app.UIAxes_Segmenter, Colormap = turbo);
                                otherwise
                                     app.SegmenterImage = imshow(app.MaskedImage, 'DisplayRange', [0 1], 'Parent', app.UIAxes_Segmenter);
                            end
                            app.SegmenterImage.ContextMenu = app.ContextMenu_Segmenter;
                    end

                % Hemisphere segmentation image updating
                case 'Hemisphere'
                    switch app.TurboButton_Segmenter.Value
                        case true
                            app.SegmenterImage = imshow(app.CurrentSlice, 'DisplayRange', [0 1], 'Parent', app.UIAxes_Segmenter, Colormap = turbo);
                        otherwise
                            app.SegmenterImage = imshow(app.CurrentSlice, 'DisplayRange', [0 1], 'Parent', app.UIAxes_Segmenter);
                    end
                    try
                        hold(app.UIAxes_Segmenter, "on");
                        mask_overlay_Blue = imshow(app.BlueScreen, "Parent",app.UIAxes_Segmenter);
                        mask_overlay_Red = imshow(app.RedScreen, "Parent",app.UIAxes_Segmenter);
                        hold(app.UIAxes_Segmenter, "off");
                        if numel(app.ExpDimsSegmenter) ~= 2
                            mask_overlay_Blue.AlphaData = app.HemisphereMask(:,:,app.SliceSpinner_Segmenter.Value,1)-0.8;
                            mask_overlay_Red.AlphaData = app.HemisphereMask(:,:,app.SliceSpinner_Segmenter.Value,2)-0.8;
                        else
                            mask_overlay_Blue.AlphaData = app.HemisphereMask(:,:,1)-0.8;
                            mask_overlay_Red.AlphaData = app.HemisphereMask(:,:,2)-0.8;
                        end
                    catch
                        return
                    end
                    mask_overlay_Red.ContextMenu = app.ContextMenu_Segmenter;

                % ROI segmentation image updating
                case 'ROI'
                    switch app.ImageshownSwitch_ROI.Value
                        case "Overlay"
                            switch app.TurboButton_Segmenter.Value
                                case true
                                    app.SegmenterImage = imshow(app.CurrentSlice, 'DisplayRange', [0 1], 'Parent', app.UIAxes_Segmenter, Colormap = turbo);
                                otherwise
                                    app.SegmenterImage = imshow(app.CurrentSlice, 'DisplayRange', [0 1], 'Parent', app.UIAxes_Segmenter);
                            end
                            hold(app.UIAxes_Segmenter, "on");
                            mask_overlay_Yellow = imshow(app.YellowScreen, "Parent",app.UIAxes_Segmenter);
                            hold(app.UIAxes_Segmenter, "off");
                            try
                                index = find(strcmp(app.ROIIdentifiers,app.ROIListListBox.Value));
                                if ~isequal(index, [])
                                    if numel(app.ExpDimsSegmenter) ~= 2
                                        mask_overlay_Yellow.AlphaData = app.ROIMask(:,:,app.SliceSpinner_Segmenter.Value,index)-0.8;
                                    else
                                        mask_overlay_Yellow.AlphaData = app.ROIMask(:,:,index)-0.8;
                                    end
                                else
                                    mask_overlay_Yellow.AlphaData = zeros(app.ExpDimsSegmenter(1:2));
                                end
                            catch
                                mask_overlay_Yellow.AlphaData = zeros(app.ExpDimsSegmenter(1:2));
                            end
                            mask_overlay_Yellow.ContextMenu = app.ContextMenu_Segmenter;
                        case "Masked"
                            try
                                index = find(strcmp(app.ROIIdentifiers,app.ROIListListBox.Value));
                                if numel(app.ExpDimsSegmenter) ~= 2
                                    app.MaskedImage = double(app.CurrentSlice).*app.ROIMask(:,:,app.SliceSpinner_Segmenter.Value,index);
                                else
                                    app.MaskedImage = double(app.CurrentSlice).*app.ROIMask(:,:,index);
                                end
                            catch
                                app.MaskedImage = double(app.CurrentSlice).*(false(app.ExpDimsSegmenter(1:2)));
                            end
                            switch app.TurboButton_Segmenter.Value
                                case true
                                     app.SegmenterImage = imshow(app.MaskedImage, 'DisplayRange', [0 1], 'Parent', app.UIAxes_Segmenter, Colormap = turbo);
                                otherwise
                                     app.SegmenterImage = imshow(app.MaskedImage, 'DisplayRange', [0 1], 'Parent', app.UIAxes_Segmenter);
                            end
                            app.SegmenterImage.ContextMenu = app.ContextMenu_Segmenter;
                    end
                otherwise
            end
        end
    end

    % Callbacks that handle component events
    methods (Access = private)

        % Code that executes after component creation
        function StartUpFcn(app)
            
            % Check for existence of BrukKit working folder in temp,
            % otherwise create new
            if exist(app.WorkingFolder, 'dir')
                rmdir(app.WorkingFolder, "s");
                mkdir(app.WorkingFolder);
            else
                mkdir(app.WorkingFolder);
            end
            movegui(app.BrukKitAlphav0860UIFigure, 'center');
        end

        % Key press function: BrukKitAlphav0860UIFigure
        function BrukKitAlphav0860UIFigureKeyPress(app, event)
            key = event.Key;

            switch key
                case 'rightarrow'
                    key = 1;
                case 'leftarrow'
                    key = -1;
                case 'return'
                    if ~isempty(app.FreeROI)
                        ConfirmButtonPushed(app);
                    end
                case 'delete'
                    if ~isempty(app.FreeROI)
                        DeleteButtonPushed(app);
                    end
            end

            switch app.TabGroup.SelectedTab.Title
                case 'Main'
                    try
                        app.SliceSpinner_Preview.Value = app.SliceSpinner_Preview.Value+key;
                        app.SliceSlider_Preview.Value = app.SliceSpinner_Preview.Value;
                        RefreshImagePreview(app);
                    catch
                    end
                case 'Segmenter'
                    try
                        app.SliceSpinner_Segmenter.Value = app.SliceSpinner_Segmenter.Value+key;
                        app.SliceSlider_Segmenter.Value = app.SliceSpinner_Segmenter.Value;
                        RefreshImageSegmenter(app);
                        if app.PerspectiveViewButton.Value == true
                            RefreshImageSegmenterHelperUp(app);
                            RefreshImageSegmenterHelperDown(app);
                        end

                        % Check if there is a saved non-zero brain mask to enable hemisphere segmentation
                        if ~isequal(app.SavedBrainMask(:,:,app.SliceSpinner_Segmenter.Value), false(app.ExpDimsSegmenter(1:2))) 
                            app.CurrentSegmentationDropDown.Items = {'Brain', 'Hemisphere', 'ROI'};
                        else
                            app.CurrentSegmentationDropDown.Items = {'Brain', 'ROI'};
                        end
                    catch
                    end
            end
        end

        % Button pushed function: LoadPvDatasetsFileButton
        function LoadPvDatasetsFileButtonPushed(app, event)
                        
            % Draw progress box 
            progress = uiprogressdlg(app.BrukKitAlphav0860UIFigure,'Title',"Please wait",...
                 'Message', "Purging old temporary data");
            drawnow

            % Create new folder for loading operations inside working temp
            % folder
            loading_folder = strcat(app.WorkingFolder, filesep, 'Loading');
            % Purge old temporary data
            try
                rmdir(loading_folder, "s");
            catch
            end
            mkdir(loading_folder);       
            
            % Select .PvDatasets file, check for cancel and update the edit field text
            progress.Value = 0.2;
            progress.Message = "Selecting an archive file";
            [file, folder] = uigetfile('*.PvDatasets', 'Select a Bruker archive file');
            figure(app.BrukKitAlphav0860UIFigure);
            if isequal(file, 0)
                close(progress);
                return;
            end
            ResetEnvironment(app);
            app.PvDatasetsFile = fullfile(folder, file);
            app.ArchiveEditField.Value = app.PvDatasetsFile;
            
            % Extract the archive file to temp loading folder
            progress.Value = 0.4;
            progress.Message = "Unzipping selected archive";
            unzip(app.PvDatasetsFile, loading_folder);
            temp = struct2cell(dir(fullfile(loading_folder, '*')));
            
            % Check if selected archive is a study or a subject file
            progress.Value = 0.6;
            progress.Message = "Selecting a study to load";
            if regexp(temp{1,end}, '.*\.study$') == 1
                app.StudyPath = fullfile(loading_folder, temp{1,end-1});
            elseif regexp(temp{1,end}, '.*\.subject$') == 1
                app.StudyPath = uigetdir(loading_folder, 'Select a study folder to use');
                figure(app.BrukKitAlphav0860UIFigure);
            else
                uiconfirm(app.BrukKitAlphav0860UIFigure, "Unkown archive type.", "","Options",{'OK'},"DefaultOption",1, "Icon","error");
                return;
            end

            
            % Create property arrays of sequences in selected study
            progress.Value = 0.8;
            progress.Message = "Importing individual experiments";
            visu_AcqProt = {'None'};
            exp_ImageData = {[]};
            voxel_Dims_X = 0;
            voxel_Dims_Y = 0;
            slice_Thickness = 0;
            slice_Gap = 0;
            dim_Units = "Unspecifed";
            rot_Matrix = {[]};

            filelist_studyPath = dir(app.StudyPath);
            filelist_studyPath = sort(rmmissing(str2double({filelist_studyPath.name})));
            
            for i=filelist_studyPath % List through experiments 
                experiment_dir = fullfile(app.StudyPath, filesep, num2str(i), filesep, 'pdata');
                filelist_expDir = dir(experiment_dir);
                filelist_expDir = rmmissing(str2double({filelist_expDir.name}));

                for j=filelist_expDir % List through processings
                    progress.Message = "Importing experiment nr." + num2str(i) + " processing nr." + num2str(j);
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
                        n_dims = numel(size(squeeze(imageObj.data)));
                        if n_dims >= 3 
                            exp_ImageData = cat(1, exp_ImageData, {squeeze(pagetranspose(imageObj.data))});
                            visu_AcqProt = cat(1, visu_AcqProt, append(num2str(i), '-', num2str(j), '. ', attempt_AcqProt));
                            try
                                voxel_Dims = imageObj.Visu.VisuCoreExtent./imageObj.Visu.VisuCoreSize;
                                voxel_Dims_X = cat(1, voxel_Dims_X, voxel_Dims(1)); 
                                voxel_Dims_Y = cat(1, voxel_Dims_Y, voxel_Dims(2));
                            catch
                                voxel_Dims_X = cat(1, voxel_Dims_X, 0); 
                                voxel_Dims_Y = cat(1, voxel_Dims_Y, 0);
                            end
                            try
                                app.TEvalues(size(visu_AcqProt, 1),1:size(imageObj.Visu.VisuAcqEchoTime, 2)) = imageObj.Visu.VisuAcqEchoTime*10^-3;
                                app.TRvalues(size(visu_AcqProt, 1),1:size(imageObj.Visu.VisuAcqRepetitionTime, 2)) = imageObj.Visu.VisuAcqRepetitionTime*10^-3;
                            catch
                            end
                            try
                                app.TIvalues(size(visu_AcqProt, 1),1:size(imageObj.Visu.VisuAcqInversionTime, 2)) = imageObj.Visu.VisuAcqInversionTime*10^-3;
                            catch
                            end
                            try
                                if numel(voxel_Dims) == 3
                                    slice_Thickness = cat(1, slice_Thickness, voxel_Dims(3));
                                else
                                    slice_Thickness = cat(1, slice_Thickness, imageObj.Visu.VisuCoreFrameThickness);
                                end
                            catch
                                slice_Thickness = cat(1, slice_Thickness, 0);
                            end
                            try
                                slice_Gap = cat(1, slice_Gap, imageObj.Visu.VisuCoreSlicePacksSliceDist-imageObj.Visu.VisuCoreFrameThickness);
                            catch
                                slice_Gap = cat(1, slice_Gap, 0);
                            end
                            try
                                dim_Units = cat(1, dim_Units, strjoin(string(imageObj.Visu.VisuCoreUnits)));
                            catch
                                dim_Units = cat(1, dim_Units, "Unspecifed");
                            end
                            try
                                rot_Matrix = cat(1, rot_Matrix, {reshape(round(imageObj.Visu.VisuCoreOrientation(1,:)), 3, 3)});
                            catch
                                rot_Matrix = cat(1, rot_Matrix, {zeros(3,3)});
                            end
                        else
                        end
                    catch
                    end
                end
            end

            % Construct experiment property table
            progress.Value = 0.9;
            progress.Message = "Constructing property table";
            exp_ID = visu_AcqProt;
            variable_Names = ["Experiment ID", "Image data", "TE1", "TR1", "Voxel dimension X", "Voxel dimension Y", "Slice Thickness", "Slice Gap", "Dimension Units", "Rotation Matrix"];
            app.ExperimentPropertyTable = table(exp_ID, exp_ImageData, ...
                app.TEvalues(1:size(visu_AcqProt, 1),1), app.TRvalues(1:size(visu_AcqProt, 1),1), ...
                voxel_Dims_X, voxel_Dims_Y, slice_Thickness, ...
                slice_Gap, dim_Units, rot_Matrix, 'RowNames', visu_AcqProt, 'VariableNames', variable_Names);
            app.UITable_Preview.Data=app.ExperimentPropertyTable(2:end,:);
            app.UITable_Preview.ColumnName = variable_Names;

            % Populate text fields from last loaded imageObj for study info
            progress.Message = "Populating information fields";
            app.SubjectIDEditField.Value = imageObj.Visu.VisuSubjectId;
            app.StudyIDEditField.Value = imageObj.Visu.VisuStudyId;
            app.SubjectCommentEditField.Value = regexprep(imageObj.Visu.VisuSubjectComment,'(\\t|\\n|\\r)','');
            app.StudyCommentEditField.Value = regexprep(imageObj.Visu.VisuStudyDescription,'(\\t|\\n|\\r)','');
            app.SubjectTypeEditField.Value = imageObj.Visu.VisuSubjectType;
            app.SexEditField.Value = imageObj.Visu.VisuSubjectSex;
            app.WeightEditField.Value = num2str(imageObj.Visu.VisuSubjectWeight);
            app.StudyStartDateEditField.Value = string(datetime(str2double(imageObj.Visu.VisuStudyDate(2:5)), ...
                str2double(imageObj.Visu.VisuStudyDate(7:8)),str2double(imageObj.Visu.VisuStudyDate(10:11)), ...
                str2double(imageObj.Visu.VisuStudyDate(13:14)),str2double(imageObj.Visu.VisuStudyDate(16:17)), ...
                str2double(imageObj.Visu.VisuStudyDate(19:20)), 'Format', 'dd.MM.yyyy'));
            app.StudyStartTimeEditField.Value = string(datetime(str2double(imageObj.Visu.VisuStudyDate(2:5)), ...
                str2double(imageObj.Visu.VisuStudyDate(7:8)),str2double(imageObj.Visu.VisuStudyDate(10:11)), ...
                str2double(imageObj.Visu.VisuStudyDate(13:14)),str2double(imageObj.Visu.VisuStudyDate(16:17)), ...
                str2double(imageObj.Visu.VisuStudyDate(19:20)), 'Format', 'HH:mm:ss'));
            BirthDate = datetime(str2double(imageObj.Visu.VisuSubjectBirthDate(1:4)), ...
                str2double(imageObj.Visu.VisuSubjectBirthDate(5:6)),str2double(imageObj.Visu.VisuSubjectBirthDate(7:8)));
            StudyDate = datetime(str2double(imageObj.Visu.VisuStudyDate(2:5)),str2double(imageObj.Visu.VisuStudyDate(7:8)), ...
                str2double(imageObj.Visu.VisuStudyDate(10:11)),str2double(imageObj.Visu.VisuStudyDate(13:14)), ...
                str2double(imageObj.Visu.VisuStudyDate(16:17)),str2double(imageObj.Visu.VisuStudyDate(19:20)));
            app.SubjectAgeEditField.Value = num2str(floor(days(StudyDate - BirthDate)));

            % Update drop down items
            app.PreviewDropDown.Items = exp_ID;
            app.DropDownItemsCombined = exp_ID;
            app.SegmentDropDown.Items = app.DropDownItemsCombined;
            app.SelectTimeAlignmentDropDown.Items = app.DropDownItemsCombined;
            app.SelectPreMapDropDown.Items = app.DropDownItemsCombined;
            app.Select3DViewerDropDown.Items = app.DropDownItemsCombined;
            app.CreateBrukKitFolderButton.Enable = 'on';
            
            % close the dialog box
            progress.Value = 1;
            progress.Message = "Done!";
            pause(0.5);
            close(progress);
        end

        % Button pushed function: LoadBrukKitFolderButton
        function LoadBrukKitFolderButtonPushed(app, event)
            % Draw progress box
            progress = uiprogressdlg(app.BrukKitAlphav0860UIFigure,'Title',"Please wait",...
                 'Message', "Selecting BrukKit folder");
            drawnow    
            
            % Select BrukKit folder, check for cancel and update the edit field text
            progress.Value = 0.2;
            folder_path = uigetdir;
            figure(app.BrukKitAlphav0860UIFigure);
            env_Path = string(folder_path) + filesep + "exported_environment" + filesep + "main_properties.mat";
            if exist(env_Path, 'file')
                progress.Value = 0.6;
                progress.Message = "Importing saved data";

                % Load properties from saved environment
                LoadedProps = load(env_Path);
                
                % Set app properties 
                app.ExperimentPropertyTable = LoadedProps.ExperimentPropertyTable; 
                app.SavedTable = LoadedProps.SavedTable; 
                app.SubjectIDEditField.Value = LoadedProps.SubjectID;
                app.StudyIDEditField.Value = LoadedProps.StudyID;
                app.SubjectCommentEditField.Value = LoadedProps.SubjectComment;
                app.StudyCommentEditField.Value = LoadedProps.StudyComment;
                app.SubjectTypeEditField.Value = LoadedProps.SubjectType;
                app.SexEditField.Value = LoadedProps.Sex;
                app.WeightEditField.Value = LoadedProps.Weight;
                app.StudyStartDateEditField.Value = LoadedProps.StudyStartDate;
                app.StudyStartTimeEditField.Value = LoadedProps.StudyStartTime;
                app.SubjectAgeEditField.Value = LoadedProps.SubjectAge;
                app.DropDownItemsSavedOnly = LoadedProps.DropDownItemsSavedOnly;
                app.DropDownItemsCombined = LoadedProps.DropDownItemsCombined;
                
                % Update app drop down menus
                app.PreviewDropDown.Items = LoadedProps.PreviewDropDownItems;
                app.SegmentDropDown.Items = app.DropDownItemsCombined;
                app.SelectTimeAlignmentDropDown.Items = app.DropDownItemsCombined;
                app.SelectPreMapDropDown.Items = app.DropDownItemsCombined;
                app.Select3DViewerDropDown.Items = app.DropDownItemsCombined;
                app.SelectVolumetryDropDown.Items = app.DropDownItemsSavedOnly;
                app.SelectfixedDropDown.Items = app.DropDownItemsSavedOnly;
                app.SelectmovingDropDown.Items = app.DropDownItemsSavedOnly;
                app.SelectparameterDropDown.Items = app.DropDownItemsSavedOnly;

                % Set Preview Table
                app.UITable_Preview.Data=app.ExperimentPropertyTable(2:end,:);
                variable_Names = ["Experiment ID", "Image data", "TE1", "TR1", "Voxel dimension X", "Voxel dimension Y", "Slice Thickness", "Slice Gap", "Dimension Units", "Rotation Matrix"];
                app.UITable_Preview.ColumnName = variable_Names;
                
                % Set export folder to loaded BrukKit folder and cd
                app.ExportFolderPath = string(folder_path);
                cd(app.ExportFolderPath);

                % Enable export Environment
                app.ExportEnvironmentButton.Enable = 'on';
    
                % Enable export buttons
                if app.PreviewDropDown.Value ~= "None"
                    app.ExportDataButton_Preview.Enable = 'on';
                end
                if app.SegmentDropDown.Value ~= "None"
                    app.ExportDataButton_Segmenter.Enable = 'on';
                end
                if app.SelectVolumetryDropDown.Value ~= "None"
                    app.ExportDataButton_Volumetry.Enable = 'on';
                end
                if ~isequal(app.RegisteredImageData, [])
                    app.ExportDataButton_Registration.Enable = 'on';
                end
                if ~isequal(app.PostMapImageData, [])
                    app.ExportDataButton_Map.Enable = 'on';
                end    

                % close the dialog box
                progress.Value = 1;
                progress.Message = "Done!";
                pause(0.5);
                close(progress);
            else
                close(progress);
                uialert(app.BrukKitAlphav0860UIFigure, 'No saved environment was found in selected directory.', 'No Environment Found')
            end
        end

        % Button pushed function: LoadBrukerStudyButton
        function LoadBrukerStudyButtonPushed(app, event)
            
            % Draw progress box
            progress = uiprogressdlg(app.BrukKitAlphav0860UIFigure,'Title',"Please wait",...
                 'Message', "Selecting Bruker study");
            drawnow
            
            % Select Bruker study folder, check for cancel and update the edit field text
            progress.Value = 0.2;
            app.StudyPath = uigetdir; 
            figure(app.BrukKitAlphav0860UIFigure);
            if isequal(app.StudyPath, 0)
                close(progress);
                return;
            end
            ResetEnvironment(app);
            app.ArchiveEditField.Value = app.StudyPath;
           
             % Create property arrays of sequences in selected study
            progress.Value = 0.6;
            progress.Message = "Importing individual experiments";
            visu_AcqProt = {'None'};
            exp_ImageData = {[]};
            voxel_Dims_X = 0;
            voxel_Dims_Y = 0;
            slice_Thickness = 0;
            slice_Gap = 0;
            dim_Units = "Unspecifed";
            rot_Matrix = {[]};

            filelist_studyPath = dir(app.StudyPath);
            filelist_studyPath = sort(rmmissing(str2double({filelist_studyPath.name})));
            
            for i=filelist_studyPath % List through experiments 
                experiment_dir = fullfile(app.StudyPath, filesep, num2str(i), filesep, 'pdata');
                filelist_expDir = dir(experiment_dir);
                filelist_expDir = rmmissing(str2double({filelist_expDir.name}));

                for j=filelist_expDir % List through processings
                    progress.Message = "Importing experiment nr." + num2str(i) + " processing nr." + num2str(j);
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
                        n_dims = numel(size(squeeze(imageObj.data)));
                        if n_dims >= 3 
                            exp_ImageData = cat(1, exp_ImageData, {squeeze(pagetranspose(imageObj.data))});
                            visu_AcqProt = cat(1, visu_AcqProt, append(num2str(i), '-', num2str(j), '. ', attempt_AcqProt));
                            try
                                voxel_Dims = imageObj.Visu.VisuCoreExtent./imageObj.Visu.VisuCoreSize;
                                voxel_Dims_X = cat(1, voxel_Dims_X, voxel_Dims(1)); 
                                voxel_Dims_Y = cat(1, voxel_Dims_Y, voxel_Dims(2));
                            catch
                                voxel_Dims_X = cat(1, voxel_Dims_X, 0); 
                                voxel_Dims_Y = cat(1, voxel_Dims_Y, 0);
                            end
                            try
                                app.TEvalues(size(visu_AcqProt, 1),1:size(imageObj.Visu.VisuAcqEchoTime, 2)) = imageObj.Visu.VisuAcqEchoTime*10^-3;
                                app.TRvalues(size(visu_AcqProt, 1),1:size(imageObj.Visu.VisuAcqRepetitionTime, 2)) = imageObj.Visu.VisuAcqRepetitionTime*10^-3;
                            catch
                            end
                            try
                                app.TIvalues(size(visu_AcqProt, 1),1:size(imageObj.Visu.VisuAcqInversionTime, 2)) = imageObj.Visu.VisuAcqInversionTime*10^-3;
                            catch
                            end
                            try
                                if numel(voxel_Dims) == 3
                                    slice_Thickness = cat(1, slice_Thickness, voxel_Dims(3));
                                else
                                    slice_Thickness = cat(1, slice_Thickness, imageObj.Visu.VisuCoreFrameThickness);
                                end
                            catch
                                slice_Thickness = cat(1, slice_Thickness, 0);
                            end
                            try
                                slice_Gap = cat(1, slice_Gap, imageObj.Visu.VisuCoreSlicePacksSliceDist-imageObj.Visu.VisuCoreFrameThickness);
                            catch
                                slice_Gap = cat(1, slice_Gap, 0);
                            end
                            try
                                dim_Units = cat(1, dim_Units, strjoin(string(imageObj.Visu.VisuCoreUnits)));
                            catch
                                dim_Units = cat(1, dim_Units, "Unspecifed");
                            end
                            try
                                rot_Matrix = cat(1, rot_Matrix, {reshape(round(imageObj.Visu.VisuCoreOrientation(1,:)), 3, 3)});
                            catch
                                rot_Matrix = cat(1, rot_Matrix, {zeros(3,3)});
                            end
                        else
                        end
                    catch
                    end
                end
            end

            % Construct experiment property table
            progress.Value = 0.9;
            progress.Message = "Constructing property table";
            exp_ID = visu_AcqProt;
            variable_Names = ["Experiment ID", "Image data", "TE1", "TR1", "Voxel dimension X", "Voxel dimension Y", "Slice Thickness", "Slice Gap", "Dimension Units", "Rotation Matrix"];
            app.ExperimentPropertyTable = table(exp_ID, exp_ImageData, ...
                app.TEvalues(1:size(visu_AcqProt, 1),1), app.TRvalues(1:size(visu_AcqProt, 1),1), ...
                voxel_Dims_X, voxel_Dims_Y, slice_Thickness, ...
                slice_Gap, dim_Units, rot_Matrix, 'RowNames', visu_AcqProt, 'VariableNames', variable_Names);
            app.UITable_Preview.Data=app.ExperimentPropertyTable(2:end,:);
            app.UITable_Preview.ColumnName = variable_Names;

            % Populate text fields from last loaded imageObj for study info
            progress.Message = "Populating information fields";
            app.SubjectIDEditField.Value = imageObj.Visu.VisuSubjectId;
            app.StudyIDEditField.Value = imageObj.Visu.VisuStudyId;
            app.SubjectCommentEditField.Value = regexprep(imageObj.Visu.VisuSubjectComment,'(\\t|\\n|\\r)','');
            app.StudyCommentEditField.Value = regexprep(imageObj.Visu.VisuStudyDescription,'(\\t|\\n|\\r)','');
            app.SubjectTypeEditField.Value = imageObj.Visu.VisuSubjectType;
            app.SexEditField.Value = imageObj.Visu.VisuSubjectSex;
            app.WeightEditField.Value = num2str(imageObj.Visu.VisuSubjectWeight);
            app.StudyStartDateEditField.Value = string(datetime(str2double(imageObj.Visu.VisuStudyDate(2:5)), ...
                str2double(imageObj.Visu.VisuStudyDate(7:8)),str2double(imageObj.Visu.VisuStudyDate(10:11)), ...
                str2double(imageObj.Visu.VisuStudyDate(13:14)),str2double(imageObj.Visu.VisuStudyDate(16:17)), ...
                str2double(imageObj.Visu.VisuStudyDate(19:20)), 'Format', 'dd.MM.yyyy'));
            app.StudyStartTimeEditField.Value = string(datetime(str2double(imageObj.Visu.VisuStudyDate(2:5)), ...
                str2double(imageObj.Visu.VisuStudyDate(7:8)),str2double(imageObj.Visu.VisuStudyDate(10:11)), ...
                str2double(imageObj.Visu.VisuStudyDate(13:14)),str2double(imageObj.Visu.VisuStudyDate(16:17)), ...
                str2double(imageObj.Visu.VisuStudyDate(19:20)), 'Format', 'HH:mm:ss'));
            BirthDate = datetime(str2double(imageObj.Visu.VisuSubjectBirthDate(1:4)), ...
                str2double(imageObj.Visu.VisuSubjectBirthDate(5:6)),str2double(imageObj.Visu.VisuSubjectBirthDate(7:8)));
            StudyDate = datetime(str2double(imageObj.Visu.VisuStudyDate(2:5)),str2double(imageObj.Visu.VisuStudyDate(7:8)), ...
                str2double(imageObj.Visu.VisuStudyDate(10:11)),str2double(imageObj.Visu.VisuStudyDate(13:14)), ...
                str2double(imageObj.Visu.VisuStudyDate(16:17)),str2double(imageObj.Visu.VisuStudyDate(19:20)));
            app.SubjectAgeEditField.Value = num2str(floor(days(StudyDate - BirthDate)));

            % Update drop down items
            app.PreviewDropDown.Items = exp_ID;
            app.DropDownItemsCombined = exp_ID;
            app.SegmentDropDown.Items = app.DropDownItemsCombined;
            app.SelectTimeAlignmentDropDown.Items = app.DropDownItemsCombined;
            app.SelectPreMapDropDown.Items = app.DropDownItemsCombined;
            app.Select3DViewerDropDown.Items = app.DropDownItemsCombined;
            app.CreateBrukKitFolderButton.Enable = 'on';
            
            % close the dialog box
            progress.Value = 1;
            progress.Message = "Done!";
            pause(0.5);
            close(progress);
        end

        % Button pushed function: CreateBrukKitFolderButton
        function CreateBrukKitFolderButtonPushed(app, event)
            selected_path = uigetdir;
            app.ExportFolderPath = string(selected_path) + filesep + app.SubjectIDEditField.Value + "_" + app.StudyIDEditField.Value;
            figure(app.BrukKitAlphav0860UIFigure);
            if exist(app.ExportFolderPath, 'dir')
                selection = uiconfirm(app.BrukKitAlphav0860UIFigure, 'BrukKit Study Folder already existes in chosen directory. Are you sure you want to overwrite?', 'Confirm Overwrite', ...
                    'Icon', 'warning');
                switch selection
                    case 'OK'
                        cd(app.ExportFolderPath);
                    case 'Cancel'
                        return
                end  
            else
                mkdir(app.ExportFolderPath);
                cd(app.ExportFolderPath);
            end
            
            infofile = fopen('info.txt', 'w+');
            fprintf(infofile, "########## Brukkit study info 0.8\r\n\r\n");
            fprintf(infofile, "Subject ID: %s\r\n", app.SubjectIDEditField.Value);
            fprintf(infofile, "Subject Comment: %s\r\n", app.SubjectCommentEditField.Value);
            fprintf(infofile, "Subject Age: %s\r\n", app.SubjectAgeEditField.Value);
            fprintf(infofile, "Subject Type: %s\r\n", app.SubjectTypeEditField.Value);
            fprintf(infofile, "Subject Age: %s\r\n", app.SubjectAgeEditField.Value);
            fprintf(infofile, "Subject Sex: %s\r\n", app.SexEditField.Value);
            fprintf(infofile, "Subject Weight: %s\r\n", app.WeightEditField.Value);
            fprintf(infofile, "\r\n");
            fprintf(infofile, "Study ID: %s\r\n", app.StudyIDEditField.Value);
            fprintf(infofile, "Study Comment: %s\r\n", app.StudyCommentEditField.Value);
            fprintf(infofile, "Study Start Time: %s\r\n", app.StudyStartTimeEditField.Value);
            fprintf(infofile, "Study Start Date: %s\r\n", app.StudyStartDateEditField.Value);
            fclose(infofile);
            
            imagedata_Column = table2array(app.ExperimentPropertyTable(:,2));
            imagedata_String = "";
            for i = 1:numel(imagedata_Column)
                current_Data = cell2mat(imagedata_Column(i));
                imagedata_Name = strjoin(string(size(current_Data)), 'x') + " " + string(class(current_Data));
                imagedata_String = cat(1, imagedata_String, imagedata_Name);
            end
            imagedata_String = imagedata_String(2:end);
            writing_Table = cat(2, app.ExperimentPropertyTable(:,1), table(imagedata_String, 'VariableNames', {'Image Data'}), app.ExperimentPropertyTable(:,3:end-1));
            writetable(writing_Table(2:end,:), 'data_info.xlsx');
            
            % Enable export Environment
            app.ExportEnvironmentButton.Enable = 'on';

            % Enable export buttons
            if app.PreviewDropDown.Value ~= "None"
                app.ExportDataButton_Preview.Enable = 'on';
            end
            if app.SegmentDropDown.Value ~= "None"
                app.ExportDataButton_Segmenter.Enable = 'on';
            end
            if app.SelectVolumetryDropDown.Value ~= "None"
                app.ExportDataButton_Volumetry.Enable = 'on';
            end
            if ~isequal(app.RegisteredImageData, [])
                app.ExportDataButton_Registration.Enable = 'on';
            end
            if ~isequal(app.PostMapImageData, [])
                app.ExportDataButton_Map.Enable = 'on';
            end    
        end

        % Button pushed function: ExportEnvironmentButton
        function ExportEnvironmentButtonPushed(app, event)
            
            % Draw progress box
            progress = uiprogressdlg(app.BrukKitAlphav0860UIFigure,'Title',"Please wait",...
                 'Message', "Retrieving environment properties");
            drawnow    

            % Get main environment properties
            progress.Value = 0.3;
            pause(0.5);
            ExperimentPropertyTable = app.ExperimentPropertyTable; %#ok<ADPROPLC> 
            SavedTable = app.SavedTable; %#ok<ADPROPLC> 
            SubjectID = app.SubjectIDEditField.Value;
            StudyID = app.StudyIDEditField.Value;
            SubjectComment = app.SubjectCommentEditField.Value;
            StudyComment = app.StudyCommentEditField.Value;
            SubjectType = app.SubjectTypeEditField.Value;
            Sex = app.SexEditField.Value;
            Weight = app.WeightEditField.Value;
            StudyStartDate = app.StudyStartDateEditField.Value;
            StudyStartTime = app.StudyStartTimeEditField.Value;
            SubjectAge = app.SubjectAgeEditField.Value;
            DropDownItemsSavedOnly = app.DropDownItemsSavedOnly; %#ok<ADPROPLC>
            PreviewDropDownItems = app.PreviewDropDown.Items; 
            DropDownItemsCombined = app.DropDownItemsCombined; %#ok<ADPROPLC> 
            
            % Save environment inside export folder
            progress.Value = 0.6;
            progress.Message = "Exporting environment";
            env_Path = app.ExportFolderPath + filesep + "exported_environment";
            if exist(env_Path, 'dir')
                selection = uiconfirm(app.BrukKitAlphav0860UIFigure, 'Overwrite currently saved environment instance in export folder?', 'Confirm Overwrite', ...
                    'Icon', 'warning');
                switch selection
                    case 'OK'
                        env_Path = env_Path + filesep + "main_properties.mat";
                        save(env_Path, "ExperimentPropertyTable", "SavedTable", "SubjectID", "StudyID", ...
                            "SubjectComment", "StudyComment", "SubjectType", "Sex", "Weight", "StudyStartDate", ...
                            "StudyStartTime", "SubjectAge", "DropDownItemsSavedOnly", "DropDownItemsCombined", "PreviewDropDownItems")
                    case 'Cancel'
                        return
                end  
            else
                mkdir(env_Path);
                env_Path = env_Path + filesep + "main_properties.mat";
                save(env_Path, "ExperimentPropertyTable", "SavedTable", "SubjectID", "StudyID", ...
                            "SubjectComment", "StudyComment", "SubjectType", "Sex", "Weight", "StudyStartDate", ...
                            "StudyStartTime", "SubjectAge", "DropDownItemsSavedOnly", "DropDownItemsCombined", "PreviewDropDownItems")
            end

            % close the dialog box
            progress.Value = 1;
            progress.Message = "Done!";
            pause(0.5);
            close(progress);

            uiconfirm(app.BrukKitAlphav0860UIFigure, "Environment data sucessfully exported.", "","Options",{'OK'},"DefaultOption",1, "Icon","success");
        end

        % Button pushed function: ResetEnvironmentButton
        function ResetEnvironmentButtonButtonPushed(app, event)
            selection = uiconfirm(app.BrukKitAlphav0860UIFigure,'Reset environment variables and saved data?','Confirm Reset',...
                        'Icon','warning');
            switch selection 
                case 'OK'  
                    ResetEnvironment(app);
                case 'Cancel'
                    return
            end
        end

        % Cell edit callback: UITable_Preview
        function UITable_PreviewCellEdit(app, event)
 
            % Update Experiment property table
            app.ExperimentPropertyTable(2:end,:) = app.UITable_Preview.Data;         
        end

        % Value changed function: PreviewDropDown
        function PreviewDropDownValueChanged(app, event)
            value = app.PreviewDropDown.Value;  

            % If 'None' is selected, clear UIaxes, disable controls and return
            if value == "None"
                cla(app.UIAxes_Preview);
                app.SliceSlider_Preview.Enable = 'off';
                app.SliceSpinner_Preview.Enable = 'off';
                app.BrightnessSlider_Preview.Enable = 'off';
                app.ContrastSlider_Preview.Enable = 'off';
                app.Dim4Slider_Preview.Enable = 'off';
                app.Dim5Slider_Preview.Enable = 'off';
                app.TurboButton_Preview.Enable = 'off';
                app.GreyscaleButton_Preview.Enable = 'off';
                app.SaveDataButton_Preview.Enable = 'off';
                app.ExportDataButton_Preview.Enable = 'off';
                return
            end
            
            % Get selected sequence image data
            app.PreviewImageData = cell2mat(app.ExperimentPropertyTable.(2)(value));
            
            % Initialize default slider values
            app.Dim5Slider_Preview.Value = 1;
            app.Dim4Slider_Preview.Value = 1;
            app.SliceSlider_Preview.Value = 1;
            app.SliceSpinner_Preview.Value = 1;
            app.BrightnessSlider_Preview.Value = 0;
            app.ContrastSlider_Preview.Value = 0;

            % Get data dimension sizes, set slider limits
            app.ExpDimsPreview = size(app.PreviewImageData);
            dim3_size = app.ExpDimsPreview(3);
            app.SliceSlider_Preview.Limits = [1, dim3_size];
            app.SliceSpinner_Preview.Limits = [1, dim3_size];
            
            switch numel(app.ExpDimsPreview)
                case 4
                    dim4_size = app.ExpDimsPreview(4);
                    app.Dim4Slider_Preview.Enable = 'on';
                    app.Dim5Slider_Preview.Enable = 'off';
                    app.Dim4Slider_Preview.Limits = [1, dim4_size];
                case 5
                    dim4_size = app.ExpDimsPreview(4);
                    app.Dim4Slider_Preview.Enable = 'on';
                    app.Dim4Slider_Preview.Limits = [1, dim4_size];
                    dim5_size = app.ExpDimsPreview(5);
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
            app.TurboButton_Preview.Enable = 'on';
            app.GreyscaleButton_Preview.Enable = 'on';
            app.SaveDataButton_Preview.Enable = 'on';
            if isstring(app.ExportFolderPath)
                app.ExportDataButton_Preview.Enable = 'on';
            end
            
            % Display sequence
            RefreshImagePreview(app);
            % disableDefaultInteractivity(app.UIAxes_Preview);
            
            % Set interactions of preview uiaxes
            app.UIAxes_Preview.Interactions = [regionZoomInteraction zoomInteraction];
            
        end

        % Button pushed function: ExportDataButton_Preview
        function ExportDataButton_PreviewPushed(app, event)
            ExportImageDataGeneral(app, 'Preview');

            uiconfirm(app.BrukKitAlphav0860UIFigure, "Image data exported in NIfTI format.", "","Options",{'OK'},"DefaultOption",1, "Icon","success")
        end

        % Value changing function: SliceSlider_Preview
        function SliceSlider_PreviewValueChanging(app, event)
            event.Source.Value = round(event.Value);
            app.SliceSpinner_Preview.Value = event.Source.Value;

            RefreshImagePreview(app);
        end

        % Value changed function: SliceSpinner_Preview
        function SliceSpinner_PreviewValueChanged(app, event)
            changingValue = round(event.Value);
            app.SliceSlider_Preview.Value = changingValue;

            RefreshImagePreview(app);
        end

        % Value changing function: Dim4Slider_Preview
        function Dim4Slider_PreviewValueChanging(app, event)
            event.Source.Value = round(event.Value);
            app.Dim4Slider_Preview.Value = event.Source.Value;

            RefreshImagePreview(app);
        end

        % Value changing function: Dim5Slider_Preview
        function Dim5Slider_PreviewValueChanging(app, event)
            event.Source.Value = round(event.Value);
            app.Dim5Slider_Preview.Value = event.Source.Value;
            
            RefreshImagePreview(app);
        end

        % Value changing function: ContrastSlider_Preview
        function ContrastSlider_PreviewValueChanging(app, event)
            app.ContrastSlider_Preview.Value = event.Value;
            RefreshImagePreview(app);
        end

        % Value changing function: BrightnessSlider_Preview
        function BrightnessSlider_PreviewValueChanging(app, event)
            app.BrightnessSlider_Preview.Value = event.Value;
            RefreshImagePreview(app);
        end

        % Menu selected function: RotateMenu_Preview
        function RotateMenu_PreviewSelected(app, event)
            
            % Rotate image data, show image
            app.PreviewImageData = rot90(app.PreviewImageData, -1);
            
            RefreshImagePreview(app);
        end

        % Menu selected function: FlipVerticallyMenu_Preview
        function FlipVerticallyMenu_PreviewSelected(app, event)
            
            % Flip image data, show image
            app.PreviewImageData = flipud(app.PreviewImageData);
            
            RefreshImagePreview(app);
        end

        % Menu selected function: FlipHorizontallyMenu_Preview
        function FlipHorizontallyMenu_PreviewSelected(app, event)
            
            % Flip image data, show image
            app.PreviewImageData = fliplr(app.PreviewImageData);
            
            RefreshImagePreview(app);
        end

        % Menu selected function: ResetViewMenu_Preview
        function ResetViewMenu_PreviewSelected(app, event)
            % Reset zoom
            app.UIAxes_Preview.XLim = [-inf inf];
            app.UIAxes_Preview.YLim = [-inf inf];

            % Reset contrast and brightness then refresh
            app.BrightnessSlider_Preview.Value = 0;
            app.ContrastSlider_Preview.Value = 0;
            RefreshImagePreview(app);
        end

        % Selection changed function: ColormapButtonGroup_Preview
        function ColormapButtonGroup_PreviewSelectionChanged(app, event)
            RefreshImagePreview(app);
        end

        % Button pushed function: SaveDataButton_Preview
        function SaveDataButton_PreviewPushed(app, event)
            SaveData(app, 'Preview')
        end

        % Value changed function: SegmentDropDown
        function SegmentDropDownValueChanged(app, event)
            value = app.SegmentDropDown.Value;
            
            % If 'None' is selected, clear UIaxes, disable controls and return
            if value == "None"
                cla(app.UIAxes_Segmenter);
                % Sliders/spinners
                app.SliceSlider_Segmenter.Enable = 'off';
                app.SliceSpinner_Segmenter.Enable = 'off';
                app.Dim4Spinner_Segmenter.Enable = 'off';
                app.Dim5Spinner_Segmenter.Enable = 'off';
                app.TurboButton_Segmenter.Enable = 'off';
                app.GreyscaleButton_Segmenter.Enable = 'off';
                app.BrightnessSlider_Segmenter.Enable = 'off';
                app.ContrastSlider_Segmenter.Enable = 'off';
                app.SliceSlider_Segmenter.Value = 1;
                app.SliceSpinner_Segmenter.Value = 1;
                app.Dim4Spinner_Segmenter.Value = 1;
                app.Dim5Spinner_Segmenter.Value = 1;
                app.ContrastSlider_Segmenter.Value = 0;
                app.BrightnessSlider_Segmenter.Value = 0;
                % Buttons/drop downs/panels
                app.CurrentSegmentationDropDown.Enable = 'off';
                app.CurrentSegmentationDropDown.Value = 'Brain';
                app.BrainSegmentationToolsPanel.Visible = 'off';
                app.HemisphereSegmentationToolsPanel.Visible = 'off';
                app.ROISegmentationToolsPanel.Visible = 'off';
                app.SelectionToolsPanel.Visible = 'off';
                app.SaveSegmentedDataButton.Enable = 'off';
                app.ExportDataButton_Segmenter.Enable = 'off';
                app.PerspectiveViewButton.Value = 0;
                return
            end
            
            % Get selected sequence image data from loaded experiments or saved registration experiments
            try
                app.OriginalSegmenterImageData = cell2mat(app.SavedTable.Image(value));
                app.SavedBrainMask = cell2mat(app.SavedTable.BrainMask(value));
                reset_indicator = 0;         
            catch
                try
                    app.OriginalSegmenterImageData = cell2mat(app.ExperimentPropertyTable.(2)(value));
                    reset_indicator = 1;
                catch
                end
            end
            app.WorkingSegmenterImageData = app.OriginalSegmenterImageData;

            % Initialize default slider values
            app.Dim5Spinner_Segmenter.Value = 1;
            app.Dim4Spinner_Segmenter.Value = 1;
            app.SliceSlider_Segmenter.Value = 1;
            app.SliceSpinner_Segmenter.Value = 1;
            app.BrightnessSlider_Segmenter.Value = 0;
            app.ContrastSlider_Segmenter.Value = 0;

            % Delete ROI masks
            app.ROIIdentifiers = {};
            app.ROIListListBox.Items = app.ROIIdentifiers;
            app.ROIMask = [];
            
            % Get data dimension sizes
            app.ExpDimsSegmenter = size(app.OriginalSegmenterImageData);

            % Fetch voxel dimensions for use with helper UIaxes,
            % enable/disable Perspective View button and Volume ROI segmenter button accordingly
            app.PerspectiveViewButton.Value = 0;
            app.PerspectiveViewButtonValueChanged(app);
            app.PerspectiveViewButton.Enable = "off";
            app.VolROISegmentationToolsButton.Enable = "off";
            if numel(app.ExpDimsSegmenter) >= 3 
                try
                    app.SegmenterDimTriplet = [app.SavedTable.VoxDimX(value) app.SavedTable.VoxDimY(value) app.SavedTable.SliceThickness(value)+app.SavedTable.SliceGap(value)];
                    app.PerspectiveViewButton.Enable = "on";
                    app.VolROISegmentationToolsButton.Enable = "on";
                catch 
                    app.SegmenterDimTriplet = [app.ExperimentPropertyTable.(5)(value) app.ExperimentPropertyTable.(6)(value) app.ExperimentPropertyTable.(7)(value)+app.ExperimentPropertyTable.(8)(value)];
                    app.PerspectiveViewButton.Enable = "on";
                    app.VolROISegmentationToolsButton.Enable = "on";
                end
            end

            % Create mask screens
            app.GreenScreen = cat(3, zeros(app.ExpDimsSegmenter(1:2)), ones(app.ExpDimsSegmenter(1:2)), zeros(app.ExpDimsSegmenter(1:2)));
            app.BlueScreen = cat(3, zeros(app.ExpDimsSegmenter(1:2)), zeros(app.ExpDimsSegmenter(1:2)), ones(app.ExpDimsSegmenter(1:2)));
            app.RedScreen = cat(3, ones(app.ExpDimsSegmenter(1:2)), zeros(app.ExpDimsSegmenter(1:2)), zeros(app.ExpDimsSegmenter(1:2)));
            app.YellowScreen = cat(3, ones(app.ExpDimsSegmenter(1:2)), ones(app.ExpDimsSegmenter(1:2)), zeros(app.ExpDimsSegmenter(1:2)));

            try
                dim3_size = app.ExpDimsSegmenter(3);
                app.SliceSpinner_Segmenter.Limits = [1, dim3_size];
                app.SliceSlider_Segmenter.Limits = [1, dim3_size];
            catch
            end
            
            % Disable/Enable UI items based on number of dimensions
            switch numel(app.ExpDimsSegmenter)
                case 5
                    app.SliceSlider_Segmenter.Enable = 'on';
                    app.SliceSpinner_Segmenter.Enable = 'on';
                    dim4_size = app.ExpDimsSegmenter(4);
                    app.Dim4Spinner_Segmenter.Enable = 'on';
                    app.Dim4Spinner_Segmenter.Limits = [1, dim4_size];
                    dim5_size = app.ExpDimsSegmenter(5);
                    app.Dim5Spinner_Segmenter.Enable = 'on';
                    app.Dim5Spinner_Segmenter.Limits = [1, dim5_size];
                    app.PermuteDimensionsMenu.Enable = 'on';
                    app.PermuteMenu_3_4.Enable ='on';
                    app.PermuteMenu_3_5.Enable ='on';
                    app.PermuteMenu_4_5.Enable ='on';

                    % Define Mask matrices
                    app.BrainMask = false(app.ExpDimsSegmenter(1:3));
                    if reset_indicator == 1
                        app.SavedBrainMask = false(app.ExpDimsSegmenter(1:3));
                    end
                    app.HemisphereMask = false(cat(2, app.ExpDimsSegmenter(1:3), 2));

                case 4
                    app.SliceSlider_Segmenter.Enable = 'on';
                    app.SliceSpinner_Segmenter.Enable = 'on';
                    dim4_size = app.ExpDimsSegmenter(4);
                    app.Dim4Spinner_Segmenter.Enable = 'on';
                    app.Dim4Spinner_Segmenter.Limits = [1, dim4_size];
                    app.Dim5Spinner_Segmenter.Enable = 'off';
                    app.PermuteDimensionsMenu.Enable = 'on';
                    app.PermuteMenu_3_4.Enable ='on';
                    app.PermuteMenu_3_5.Enable ='off';
                    app.PermuteMenu_4_5.Enable ='off';

                    % Define Mask matrices
                    app.BrainMask = false(app.ExpDimsSegmenter(1:3));
                    if reset_indicator == 1
                        app.SavedBrainMask = false(app.ExpDimsSegmenter(1:3));
                    end
                    app.HemisphereMask = false(cat(2, app.ExpDimsSegmenter(1:3), 2));

                case 3
                    app.SliceSlider_Segmenter.Enable = 'on';
                    app.SliceSpinner_Segmenter.Enable = 'on';
                    app.Dim4Spinner_Segmenter.Enable = 'off';
                    app.Dim5Spinner_Segmenter.Enable = 'off';
                    app.PermuteDimensionsMenu.Enable = 'off';
                    

                    % Define Mask matrices
                    app.BrainMask = false(app.ExpDimsSegmenter(1:3));
                    if reset_indicator == 1
                        app.SavedBrainMask = false(app.ExpDimsSegmenter(1:3));
                    end
                    app.HemisphereMask = false(cat(2, app.ExpDimsSegmenter(1:3), 2));

                case 2
                    app.SliceSlider_Segmenter.Enable = 'off';
                    app.SliceSpinner_Segmenter.Enable = 'off';
                    app.Dim4Spinner_Segmenter.Enable = 'off';
                    app.Dim5Spinner_Segmenter.Enable = 'off';

                    % Define Mask matrices
                    app.BrainMask = false(app.ExpDimsSegmenter());
                    if reset_indicator == 1
                        app.SavedBrainMask = false(app.ExpDimsSegmenter);
                    end
                    app.HemisphereMask = false(cat(2, app.ExpDimsSegmenter, 2));
            end

            % Enable remaining components
            app.TurboButton_Segmenter.Enable = 'on';
            app.GreyscaleButton_Segmenter.Enable = 'on';
            app.CurrentSegmentationDropDown.Enable = 'on';
            app.CurrentSegmentationDropDown.Value = 'Brain';
            app.BrainSegmentationToolsPanel.Visible = 'on';
            app.HemisphereSegmentationToolsPanel.Visible = 'off';
            app.ROISegmentationToolsPanel.Visible = 'off';
            app.SelectionToolsPanel.Visible = 'on';
            brainPosition = app.BrainSegmentationToolsPanel.Position;
            selectionPosition = app.SelectionToolsPanel.Position;
            selectionPosition(2) = brainPosition(2)-selectionPosition(4);
            app.SelectionToolsPanel.Position = selectionPosition;
            app.SaveSegmentedDataButton.Enable = 'on';
            if isstring(app.ExportFolderPath)
                app.ExportDataButton_Segmenter.Enable = 'on';
            end

            % Check if there is a saved non-zero brain mask to enable hemisphere segmentation
            if ~isequal(app.SavedBrainMask(:,:,app.SliceSpinner_Segmenter.Value), false(app.ExpDimsSegmenter(1:2))) 
                app.CurrentSegmentationDropDown.Items = {'Brain', 'Hemisphere', 'ROI'};
            else
                app.CurrentSegmentationDropDown.Items = {'Brain', 'ROI'};
            end

            % Display sequence
            RefreshImageSegmenter(app);

            % Enable contrast and brightness controls
            app.BrightnessSlider_Segmenter.Enable = 'on';
            app.ContrastSlider_Segmenter.Enable = 'on';
            
            % Set interactions of segmenter uiaxes
            app.UIAxes_Segmenter.Interactions = [regionZoomInteraction zoomInteraction];
            
            % Reset zoom
            app.UIAxes_Segmenter.XLim = [-inf inf];
            app.UIAxes_Segmenter.YLim = [-inf inf];
        end

        % Value changing function: SliceSlider_Segmenter
        function SliceSlider_SegmenterValueChanging(app, event)
            event.Source.Value = round(event.Value);
            app.SliceSpinner_Segmenter.Value = event.Source.Value;
            
            % Reset zoom
            app.UIAxes_Segmenter.XLim = [-inf inf];
            app.UIAxes_Segmenter.YLim = [-inf inf];
            
            app.ImageshownSwitch_Brain.Value = "Overlay"; % Set image shown value to overlay
            app.AutoClusterButton.Enable = 'off'; % TUrn off auto cluster button

            RefreshImageSegmenter(app);
            if app.PerspectiveViewButton.Value == true
                RefreshImageSegmenterHelperUp(app);
                RefreshImageSegmenterHelperDown(app);
            end

            % Check if there is a saved non-zero brain mask to enable hemisphere segmentation
            if ~isequal(app.SavedBrainMask(:,:,app.SliceSpinner_Segmenter.Value), false(app.ExpDimsSegmenter(1:2))) 
                app.CurrentSegmentationDropDown.Items = {'Brain', 'Hemisphere', 'ROI'};
            else
                if app.CurrentSegmentationDropDown.Value == "Hemisphere"
                    app.BrainSegmentationToolsPanel.Visible = 'on';
                    app.HemisphereSegmentationToolsPanel.Visible ='off';
                    app.ROISegmentationToolsPanel.Visible = 'off';
                    brainPosition = app.BrainSegmentationToolsPanel.Position;
                    selectionPosition = app.SelectionToolsPanel.Position;
                    selectionPosition(2) = brainPosition(2)-selectionPosition(4);
                    app.SelectionToolsPanel.Position = selectionPosition;
                end
                app.CurrentSegmentationDropDown.Items = {'Brain', 'ROI'};
            end
        end

        % Value changed function: SliceSpinner_Segmenter
        function SliceSpinner_SegmenterValueChanged(app, event)
            event.Source.Value = round(event.Value);
            app.SliceSlider_Segmenter.Value = event.Source.Value;

            % Reset zoom
            app.UIAxes_Segmenter.XLim = [-inf inf];
            app.UIAxes_Segmenter.YLim = [-inf inf];
            
            app.ImageshownSwitch_Brain.Value = "Overlay"; % Set image shown value to overlay
            app.AutoClusterButton.Enable = 'off'; % TUrn off auto cluster button

            RefreshImageSegmenter(app);
            if app.PerspectiveViewButton.Value == true
                RefreshImageSegmenterHelperUp(app);
                RefreshImageSegmenterHelperDown(app);
            end

            % Check if there is a saved non-zero brain mask to enable hemisphere segmentation
            if ~isequal(app.SavedBrainMask(:,:,app.SliceSpinner_Segmenter.Value), false(app.ExpDimsSegmenter(1:2))) 
                app.CurrentSegmentationDropDown.Items = {'Brain', 'Hemisphere', 'ROI'};
            else
                if app.CurrentSegmentationDropDown.Value == "Hemisphere"
                    app.BrainSegmentationToolsPanel.Visible = 'on';
                    app.HemisphereSegmentationToolsPanel.Visible ='off';
                    app.ROISegmentationToolsPanel.Visible = 'off';
                    brainPosition = app.BrainSegmentationToolsPanel.Position;
                    selectionPosition = app.SelectionToolsPanel.Position;
                    selectionPosition(2) = brainPosition(2)-selectionPosition(4);
                    app.SelectionToolsPanel.Position = selectionPosition;
                end
                app.CurrentSegmentationDropDown.Items = {'Brain', 'ROI'}; 
            end
        end

        % Value changed function: Dim4Spinner_Segmenter
        function Dim4Spinner_SegmenterValueChanged(app, event)

            % Reset zoom
            app.UIAxes_Segmenter.XLim = [-inf inf];
            app.UIAxes_Segmenter.YLim = [-inf inf];
            
            app.ImageshownSwitch_Brain.Value = "Overlay"; % Set image shown value to overlay
            app.AutoClusterButton.Enable = 'off'; % TUrn off auto cluster button

            RefreshImageSegmenter(app);
        end

        % Value changed function: Dim5Spinner_Segmenter
        function Dim5Spinner_SegmenterValueChanged(app, event)

            % Reset zoom
            app.UIAxes_Segmenter.XLim = [-inf inf];
            app.UIAxes_Segmenter.YLim = [-inf inf];
            
            app.ImageshownSwitch_Brain.Value = "Overlay"; % Set image shown value to overlay
            app.AutoClusterButton.Enable = 'off'; % TUrn off auto cluster button

            RefreshImageSegmenter(app);
        end

        % Value changing function: ContrastSlider_Segmenter
        function ContrastSlider_SegmenterValueChanging(app, event)
            app.ContrastSlider_Segmenter.Value = event.Value;      
            RefreshImageSegmenter(app);
            if app.PerspectiveViewButton.Value == true
                RefreshImageSegmenterHelperUp(app);
                RefreshImageSegmenterHelperDown(app);
            end
        end

        % Value changing function: BrightnessSlider_Segmenter
        function BrightnessSlider_SegmenterValueChanging(app, event)
            app.BrightnessSlider_Segmenter.Value = event.Value;
            RefreshImageSegmenter(app);
            if app.PerspectiveViewButton.Value == true
                RefreshImageSegmenterHelperUp(app);
                RefreshImageSegmenterHelperDown(app);
            end
        end

        % Menu selected function: RotateMenu_Segmenter
        function RotateMenu_SegmenterSelected(app, event)
            
            % Rotate image data, update dimensions, show image
            app.OriginalSegmenterImageData = rot90(app.OriginalSegmenterImageData, -1);
            app.ExpDimsSegmenter = size(app.OriginalSegmenterImageData);
            app.WorkingSegmenterImageData = rot90(app.WorkingSegmenterImageData, -1);
            app.BrainMask = rot90(app.BrainMask, -1);
            app.SavedBrainMask = rot90(app.SavedBrainMask, -1);
            app.GreenScreen = rot90(app.GreenScreen, -1);
            app.HemisphereMask = rot90(app.HemisphereMask, -1);
            app.RedScreen = rot90(app.RedScreen, -1);
            app.BlueScreen = rot90(app.BlueScreen, -1);
            app.ROIMask = rot90(app.ROIMask, -1);
            app.YellowScreen = rot90(app.YellowScreen, -1);
            RefreshImageSegmenter(app);
        end

        % Menu selected function: FlipVerticallyMenu_Segmenter
        function FlipVerticallyMenu_SegmenterSelected(app, event)
            
            % Flip image data, update dimensions, show image
            app.OriginalSegmenterImageData = flipud(app.OriginalSegmenterImageData);
            app.ExpDimsSegmenter = size(app.OriginalSegmenterImageData);
            app.WorkingSegmenterImageData = flipud(app.WorkingSegmenterImageData);
            app.BrainMask = flipud(app.BrainMask);
            app.SavedBrainMask = flipud(app.SavedBrainMask);
            app.GreenScreen = flipud(app.GreenScreen);
            app.HemisphereMask = flipud(app.HemisphereMask);
            app.RedScreen = flipud(app.RedScreen);
            app.BlueScreen = flipud(app.BlueScreen);
            app.ROIMask = flipud(app.ROIMask);
            app.YellowScreen = flipud(app.YellowScreen);
            RefreshImageSegmenter(app);
        end

        % Menu selected function: FlipHorizontallyMenu_Segmenter
        function FlipHorizontallyMenu_SegmenterSelected(app, event)
            
            % Flip image data, update dimensions, show image
            app.OriginalSegmenterImageData = fliplr(app.OriginalSegmenterImageData);
            app.ExpDimsSegmenter = size(app.OriginalSegmenterImageData);
            app.WorkingSegmenterImageData = fliplr(app.WorkingSegmenterImageData);
            app.BrainMask = fliplr(app.BrainMask);
            app.SavedBrainMask = fliplr(app.SavedBrainMask);
            app.GreenScreen = fliplr(app.GreenScreen);
            app.HemisphereMask = fliplr(app.HemisphereMask);
            app.RedScreen = fliplr(app.RedScreen);
            app.BlueScreen = fliplr(app.BlueScreen);
            app.ROIMask = fliplr(app.ROIMask);
            app.YellowScreen = fliplr(app.YellowScreen);
            RefreshImageSegmenter(app);
        end

        % Menu selected function: ResetViewMenu_Segmenter
        function ResetViewMenu_SegmenterSelected(app, event)
            
            % Reset zoom
            app.UIAxes_Segmenter.XLim = [-inf inf];
            app.UIAxes_Segmenter.YLim = [-inf inf];

            % Reset contrast and brightness then refresh
            app.BrightnessSlider_Segmenter.Value = 0;
            app.ContrastSlider_Segmenter.Value = 0;
            RefreshImageSegmenter(app);
        end

        % Menu selected function: PermuteMenu_3_4
        function PermuteMenu_3_4Selected(app, event)
                
            selection = uiconfirm(app.BrukKitAlphav0860UIFigure,'Permute experiment 3rd and 4th dimensions? This will erase all segmentation progress.','Permute Dimensions', 'Icon','question');
            switch selection
                case 'OK'
                    switch numel(app.ExpDimsSegmenter)
                        case 4
                            app.OriginalSegmenterImageData = permute(app.OriginalSegmenterImageData, [1,2,4,3]);
                        case 5
                            app.OriginalSegmenterImageData = permute(app.OriginalSegmenterImageData, [1,2,4,3,5]);
                    end
                    app.WorkingSegmenterImageData = app.OriginalSegmenterImageData;
                    app.ExpDimsSegmenter = size(app.OriginalSegmenterImageData);
                    app.BrainMask = false(app.ExpDimsSegmenter(1:3));
                    app.SavedBrainMask = false(app.ExpDimsSegmenter(1:3));
                    app.HemisphereMask = false(cat(2, app.ExpDimsSegmenter(1:3), 2));
                    
                    % Delete ROI masks
                    app.ROIIdentifiers = {};
                    app.ROIListListBox.Items = app.ROIIdentifiers;
                    app.ROIMask = [];
                    
                    % Modify UI items
                    app.CurrentSegmentationDropDown.Items = {'Brain', 'ROI'};
                    app.CurrentSegmentationDropDown.Value = 'Brain';
                    app.BrainSegmentationToolsPanel.Visible = 'on';
                    app.HemisphereSegmentationToolsPanel.Visible = 'off';
                    app.ROISegmentationToolsPanel.Visible = 'off';
                    brainPosition = app.BrainSegmentationToolsPanel.Position;
                    selectionPosition = app.SelectionToolsPanel.Position;
                    selectionPosition(2) = brainPosition(2)-selectionPosition(4);
                    app.SelectionToolsPanel.Position = selectionPosition;

                    temp_limits = app.SliceSpinner_Segmenter.Limits;
                    temp_value = app.SliceSpinner_Segmenter.Value;

                    app.SliceSpinner_Segmenter.Limits = app.Dim4Spinner_Segmenter.Limits;
                    app.SliceSpinner_Segmenter.Value = app.Dim4Spinner_Segmenter.Value;
                    app.SliceSlider_Segmenter.Limits = app.Dim4Spinner_Segmenter.Limits;
                    app.SliceSlider_Segmenter.Value = app.Dim4Spinner_Segmenter.Value;
                    app.Dim4Spinner_Segmenter.Limits = temp_limits;
                    app.Dim4Spinner_Segmenter.Value = temp_value;

                    RefreshImageSegmenter(app);

                case 'Cancel'
                    return
            end
        end

        % Menu selected function: PermuteMenu_3_5
        function PermuteMenu_3_5Selected(app, event)
            
            selection = uiconfirm(app.BrukKitAlphav0860UIFigure,'Permute experiment 3rd and 5th dimensions? This will erase all segmentation progress.','Permute Dimensions', 'Icon','question');
            switch selection
                case 'OK'
                    app.OriginalSegmenterImageData = permute(app.OriginalSegmenterImageData, [1,2,5,4,3]);
                    app.WorkingSegmenterImageData = app.OriginalSegmenterImageData;
                    app.ExpDimsSegmenter = size(app.OriginalSegmenterImageData);
                    app.BrainMask = false(app.ExpDimsSegmenter(1:3));
                    app.SavedBrainMask = false(app.ExpDimsSegmenter(1:3));
                    app.HemisphereMask = false(cat(2, app.ExpDimsSegmenter(1:3), 2));

                    % Delete ROI masks
                    app.ROIIdentifiers = {};
                    app.ROIListListBox.Items = app.ROIIdentifiers;
                    app.ROIMask = [];

                    % Modify UI items
                    app.CurrentSegmentationDropDown.Items = {'Brain', 'ROI'};
                    app.CurrentSegmentationDropDown.Value = 'Brain';
                    app.BrainSegmentationToolsPanel.Visible = 'on';
                    app.HemisphereSegmentationToolsPanel.Visible = 'off';
                    app.ROISegmentationToolsPanel.Visible = 'off';
                    brainPosition = app.BrainSegmentationToolsPanel.Position;
                    selectionPosition = app.SelectionToolsPanel.Position;
                    selectionPosition(2) = brainPosition(2)-selectionPosition(4);
                    app.SelectionToolsPanel.Position = selectionPosition;

                    temp_value_slice = app.SliceSpinner_Segmenter.Value;
                    temp_limits_slice = app.SliceSpinner_Segmenter.Limits;

                    app.SliceSpinner_Segmenter.Limits = app.Dim5Spinner_Segmenter.Limits;
                    app.SliceSpinner_Segmenter.Value = app.Dim5Spinner_Segmenter.Value;
                    app.SliceSlider_Segmenter.Limits = app.Dim5Spinner_Segmenter.Limits;
                    app.SliceSlider_Segmenter.Value = app.Dim5Spinner_Segmenter.Value;
                    app.Dim5Spinner_Segmenter.Limits = temp_limits_slice;
                    app.Dim5Spinner_Segmenter.Value = temp_value_slice;

                    RefreshImageSegmenter(app);

                case 'Cancel'
                    return
            end
        end

        % Menu selected function: PermuteMenu_4_5
        function PermuteMenu_4_5Selected(app, event)
            selection = uiconfirm(app.BrukKitAlphav0860UIFigure,'Permute experiment 4th and 5th dimensions? This will erase all segmentation progress.','Permute Dimensions', 'Icon','question');
            switch selection
                case 'OK'
                    app.OriginalSegmenterImageData = permute(app.OriginalSegmenterImageData, [1,2,3,5,4]);
                    app.WorkingSegmenterImageData = app.OriginalSegmenterImageData;
                    app.ExpDimsSegmenter = size(app.OriginalSegmenterImageData);
                    app.BrainMask = false(app.ExpDimsSegmenter(1:3));
                    app.SavedBrainMask = false(app.ExpDimsSegmenter(1:3));
                    app.HemisphereMask = false(cat(2, app.ExpDimsSegmenter(1:3), 2));
                    
                    % Delete ROI masks
                    app.ROIIdentifiers = {};
                    app.ROIListListBox.Items = app.ROIIdentifiers;
                    app.ROIMask = [];

                    % Modify UI items
                    app.CurrentSegmentationDropDown.Items = {'Brain', 'ROI'};
                    app.CurrentSegmentationDropDown.Value = 'Brain';
                    app.BrainSegmentationToolsPanel.Visible = 'on';
                    app.HemisphereSegmentationToolsPanel.Visible = 'off';
                    app.ROISegmentationToolsPanel.Visible = 'off';
                    brainPosition = app.BrainSegmentationToolsPanel.Position;
                    selectionPosition = app.SelectionToolsPanel.Position;
                    selectionPosition(2) = brainPosition(2)-selectionPosition(4);
                    app.SelectionToolsPanel.Position = selectionPosition;

                    temp_limits = app.Dim5Spinner_Segmenter.Limits;
                    temp_value = app.Dim5Spinner_Segmenter.Value;

                    app.Dim5Spinner_Segmenter.Limits = app.Dim4Spinner_Segmenter.Limits;
                    app.Dim5Spinner_Segmenter.Value = app.Dim4Spinner_Segmenter.Value;
                    app.Dim4Spinner_Segmenter.Limits = temp_limits;
                    app.Dim4Spinner_Segmenter.Value = temp_value;

                    RefreshImageSegmenter(app);

                case 'Cancel'
                    return
            end
        end

        % Selection changed function: ColormapButtonGroup_Segmenter
        function ColormapButtonGroup_SegmenterSelectionChanged(app, event)
            RefreshImageSegmenter(app);
            if app.PerspectiveViewButton.Value == true
                RefreshImageSegmenterHelperUp(app);
                RefreshImageSegmenterHelperDown(app);
            end
        end

        % Value changed function: PerspectiveViewButton
        function PerspectiveViewButtonValueChanged(app, event)
            value = app.PerspectiveViewButton.Value;
            
            switch value
                case 1
                    app.BrukKitAlphav0860UIFigure.HandleVisibility = 'callback';
                    [y,x] = ginput(1);
                    switch numel(app.ExpDimsSegmenter)
                        case 3
                            app.SegmenterHelperVolume = permute(app.WorkingSegmenterImageData, [3 1 2]);
                        case 4
                            app.SegmenterHelperVolume = permute(squeeze(app.WorkingSegmenterImageData(:,:,:,app.Dim4Spinner_Segmenter.Value)), [3 1 2]);
                        case 5
                            app.SegmenterHelperVolume = permute(squeeze(app.WorkingSegmenterImageData(:,:,:,app.Dim4Spinner_Segmenter.Value, ...
                                app.Dim4Spinner_Segmenter.Value)), [3 1 2]);
                    end
                    try
                        app.SegmenterPosX = round(x);
                        app.SegmenterPosY = round(y);
                        app.SegmenterImageZX = squeeze(app.SegmenterHelperVolume(:,:,app.SegmenterPosY));
                        app.SegmenterImageZY = squeeze(app.SegmenterHelperVolume(:,app.SegmenterPosX,:));
                    catch ME
                        if strcmp(ME.identifier,'MATLAB:badsubscript')
                            uialert(app.BrukKitAlphav0860UIFigure, 'Selection out of bounds. Please select a point on the image.', 'Out of bounds error', 'Icon','error');
                        end
                        app.PerspectiveViewButton.Value = 0;
                        return
                    end
                    app.UIAxes_Segmenter.Position = [239,66,669,627];
                    app.UIAxes_SegmenterHelperUp.Visible = 'on';
                    app.UIAxes_SegmenterHelperDown.Visible = 'on';
                    RefreshImageSegmenterHelperUp(app);
                    RefreshImageSegmenterHelperDown(app);
                case 0
                    app.BrukKitAlphav0860UIFigure.HandleVisibility = 'off';
                    cla(app.UIAxes_SegmenterHelperUp);
                    cla(app.UIAxes_SegmenterHelperDown);
                    app.UIAxes_SegmenterHelperUp.Visible = 'off';
                    app.UIAxes_SegmenterHelperDown.Visible = 'off';
                    app.UIAxes_Segmenter.Position = [5,66,903,627];
            end
        end

        % Value changed function: CurrentSegmentationDropDown
        function CurrentSegmentationDropDownValueChanged(app, event)

            switch app.CurrentSegmentationDropDown.Value
                case 'Brain'
                    app.BrainSegmentationToolsPanel.Visible = 'on';
                    app.HemisphereSegmentationToolsPanel.Visible ='off';
                    app.ROISegmentationToolsPanel.Visible = 'off';
                    brainPosition = app.BrainSegmentationToolsPanel.Position;
                    selectionPosition = app.SelectionToolsPanel.Position;
                    selectionPosition(2) = brainPosition(2)-selectionPosition(4);
                    app.SelectionToolsPanel.Position = selectionPosition;
                case 'Hemisphere'
                    app.BrainSegmentationToolsPanel.Visible = 'off';
                    app.HemisphereSegmentationToolsPanel.Visible ='on';
                    app.ROISegmentationToolsPanel.Visible = 'off';
                    hemiPosition = app.HemisphereSegmentationToolsPanel.Position;
                    selectionPosition = app.SelectionToolsPanel.Position;
                    selectionPosition(2) = hemiPosition(2)-selectionPosition(4);
                    app.SelectionToolsPanel.Position = selectionPosition;
                case 'ROI'
                    app.BrainSegmentationToolsPanel.Visible = 'off';
                    app.HemisphereSegmentationToolsPanel.Visible ='off';
                    app.ROISegmentationToolsPanel.Visible = 'on';
                    roitoolsPosition = app.ROISegmentationToolsPanel.Position;
                    selectionPosition = app.SelectionToolsPanel.Position;
                    selectionPosition(2) = roitoolsPosition(2)-selectionPosition(4);
                    app.SelectionToolsPanel.Position = selectionPosition;
                otherwise
            end
            RefreshImageSegmenter(app);
        end

        % Value changed function: ImageshownSwitch_Brain
        function ImageshownSwitch_BrainValueChanged(app, event)
            RefreshImageSegmenter(app);
        end

        % Button pushed function: LoadExternalBrainMaskButton
        function LoadExternalBrainMaskButtonPushed(app, event)
            % Get external brain mask data
            [temp_file, temp_dir] = uigetfile('.nii');
            figure(app.BrukKitAlphav0860UIFigure)
            temp_Mask = pagetranspose(niftiread(cat(2, temp_dir, temp_file)));
            dims_loaded = size(temp_Mask);
            if ~isequal(dims_loaded(1:2), app.ExpDimsSegmenter(1:2))
                uialert(app.BrukKitAlphav0860UIFigure, 'Loaded brain mask x and y dimensions must be equal to those of data being segmented.', 'Loaded Mask Dimension Error')
                return
            elseif numel(dims_loaded)>=3 && numel(app.ExpDimsSegmenter)>=3 && ~isequal(dims_loaded(3), app.ExpDimsSegmenter(3))
                uialert(app.BrukKitAlphav0860UIFigure, 'Loaded brain mask must have the same amount of slices as data being segmented', 'Loaded Mask Dimension Error')
                return
            end
            app.BrainMask = temp_Mask;
            
            RefreshImageSegmenter(app);
            uiconfirm(app.BrukKitAlphav0860UIFigure, "External brain mask loaded successfully.", "External Mask","Options",{'OK'},"DefaultOption",1, "Icon","success")
        end

        % Value changed function: VolumeSwitch
        function VolumeSwitchValueChanged(app, event)
            value = app.VolumeSwitch.Value;
            switch value
                case '2D'
                    app.AutoClusterButton.Text = "Auto Cluster";
                    app.OpenMaskButton.Text = "Open Mask";
                    app.CloseMaskButton.Text = "Close Mask";
                    app.ResetSliceButton.Text = "Reset Slice";
                    app.ApplyMaskButton.Text = "Apply Slice";
                case '3D'
                    app.AutoClusterButton.Text = "3D Auto Cluster";
                    app.OpenMaskButton.Text = "3D Open Mask";
                    app.CloseMaskButton.Text = "3D Close Mask";
                    app.ResetSliceButton.Text = "Reset All";
                    app.ApplyMaskButton.Text = "Apply All";
            end
        end

        % Button pushed function: InitialSelectionButton
        function InitialSelectionButtonPushed(app, event)
            app.BrainMask(:,:,app.SliceSpinner_Segmenter.Value) = false(app.ExpDimsSegmenter(1:2));
            RefreshImageSegmenter(app);

            % Draw initial ROI, create mask and masked image
            init_Region = drawfreehand(app.UIAxes_Segmenter);
            app.BrainMask(:,:,app.SliceSpinner_Segmenter.Value) = createMask(init_Region, app.OriginalSegmenterImageData(:,:,app.SliceSpinner_Segmenter.Value));
            delete(init_Region);
            
            % Show image with mask overlaid on top
            RefreshImageSegmenter(app);
            
            app.AutoClusterButton.Enable = 'on'; % Turn on auto cluster button
        end

        % Button pushed function: AutoClusterButton
        function AutoClusterButtonPushed(app, event)
            switch app.VolumeSwitch.Value
                case '2D'
                    % Get clusters on masked image, calculate best overlap using sorensen dice coefficient and
                    % select best cluster
                    clusters = imsegkmeans(single(app.CurrentSlice).*app.BrainMask(:,:,app.SliceSpinner_Segmenter.Value),2,'NumAttempts',2);
                    cluster_1_dice = dice(clusters==1, logical(app.BrainMask(:,:,app.SliceSpinner_Segmenter.Value)));
                    cluster_2_dice = dice(clusters==2, logical(app.BrainMask(:,:,app.SliceSpinner_Segmenter.Value)));
                    if cluster_1_dice > cluster_2_dice
                        app.BrainMask(:,:,app.SliceSpinner_Segmenter.Value) = clusters == 1;
                    else 
                        app.BrainMask(:,:,app.SliceSpinner_Segmenter.Value) = clusters == 2;
                    end  
                case '3D'
                    % Prompt for slice limits
                    limits = inputdlg({'Enter lower slice limit:','Enter upper slice limit:'}, 'Input Slice Limits', [1 40], {'1', num2str(app.ExpDimsSegmenter(3))});
                    min = str2double(limits{1});
                    max = str2double(limits{2});
                    % Expand selection to chosen slices
                    app.BrainMask(:,:,min:max) = repmat(app.BrainMask(:,:,app.SliceSpinner_Segmenter.Value),[1 1 max-min+1]);
                    % Get clusters on masked image, calculate best overlap using sorensen dice coefficient and
                    % select best cluster
                    switch numel(app.ExpDimsSegmenter)
                        case 2
                            uialert(app.BrukKitAlphav0860UIFigure, ...
                                'Data needs to have at least 3 dimensions to be eligible for 3D clustering.', ...
                                'Auto Cluster Dimension Mismatch')
                        case 3
                            CurrentROIVolume = app.OriginalSegmenterImageData;
                        case 4
                            CurrentROIVolume = app.OriginalSegmenterImageData(:,:,:,app.Dim4Spinner_Segmenter.Value);
                        case 5
                            CurrentROIVolume = app.OriginalSegmenterImageData(:,:,:,app.Dim4Spinner_Segmenter.Value,app.Dim5Spinner_Segmenter.Value);
                    end
                    clusters = imsegkmeans3(single(CurrentROIVolume(:,:,min:max)).*app.BrainMask(:,:,min:max),2,'NumAttempts',2);
                    cluster_1_dice = dice(clusters==1, logical(app.BrainMask(:,:,min:max)));
                    cluster_2_dice = dice(clusters==2, logical(app.BrainMask(:,:,min:max)));
                    if cluster_1_dice > cluster_2_dice
                        app.BrainMask(:,:,min:max) = clusters == 1;
                    else 
                        app.BrainMask(:,:,min:max) = clusters == 2;
                    end 
            end
            
            app.AutoClusterButton.Enable = 'off'; % Turn off auto cluster button
            app.ImageshownSwitch_Brain.Value = "Overlay"; % Set image shown value to overlay
            
            RefreshImageSegmenter(app); 
        end

        % Button pushed function: OpenMaskButton
        function OpenMaskButtonPushed(app, event)
            
            % Construct structuring element, open image mask
            disk_Radius = app.DiskradiusSpinner.Value;
            SE = strel('disk', disk_Radius, 0);

            switch app.VolumeSwitch.Value
                case '2D'
                    app.BrainMask(:,:,app.SliceSpinner_Segmenter.Value) = imopen(app.BrainMask(:,:,app.SliceSpinner_Segmenter.Value), SE);
                case '3D'
                    app.BrainMask = imopen(app.BrainMask, SE);
            end
            
            % Show image with mask overlaid on top
            RefreshImageSegmenter(app);
        end

        % Button pushed function: CloseMaskButton
        function CloseMaskButtonPushed(app, event)
            
            % Construct structuring element, close image mask
            disk_Radius = app.DiskradiusSpinner.Value;
            SE = strel('disk', disk_Radius, 0);

            switch app.VolumeSwitch.Value
                case '2D'
                    app.BrainMask(:,:,app.SliceSpinner_Segmenter.Value) = imclose(app.BrainMask(:,:,app.SliceSpinner_Segmenter.Value), SE);
                case '3D'
                    app.BrainMask = imclose(app.BrainMask, SE);
            end
            
            % Show image with mask overlaid on top
            RefreshImageSegmenter(app);
        end

        % Button pushed function: ApplyMaskButton
        function ApplyMaskButtonPushed(app, event)

            switch app.VolumeSwitch.Value
                case '2D'
                    % Save slice image based on number of dimensions in original matrix
                    switch numel(app.ExpDimsSegmenter)
                        case 5
                            for i=1:app.ExpDimsSegmenter(4)
                                for j=1:app.ExpDimsSegmenter(5)
                                    app.WorkingSegmenterImageData(:,:,app.SliceSpinner_Segmenter.Value,i,j) = app.BrainMask(:,:,app.SliceSpinner_Segmenter.Value).*app.OriginalSegmenterImageData(:,:,app.SliceSpinner_Segmenter.Value,i,j);
                                end
                            end         
                        case 4
                            for i=1:app.ExpDimsSegmenter(4)
                                app.WorkingSegmenterImageData(:,:,app.SliceSpinner_Segmenter.Value,i) = app.BrainMask(:,:,app.SliceSpinner_Segmenter.Value).*app.OriginalSegmenterImageData(:,:,app.SliceSpinner_Segmenter.Value,i);
                            end
                        otherwise
                            app.WorkingSegmenterImageData(:,:,app.SliceSpinner_Segmenter.Value) = app.BrainMask(:,:,app.SliceSpinner_Segmenter.Value).*app.OriginalSegmenterImageData(:,:,app.SliceSpinner_Segmenter.Value);
                    end
        
                    % Save slice mask
                    app.SavedBrainMask(:,:,app.SliceSpinner_Segmenter.Value) = app.BrainMask(:,:,app.SliceSpinner_Segmenter.Value);
                    app.BrainMask(:,:,app.SliceSpinner_Segmenter.Value) = false(app.ExpDimsSegmenter(1:2));
                case '3D'
                    % Save slice image based on number of dimensions in original matrix
                    switch numel(app.ExpDimsSegmenter)
                        case 5
                            for i=1:app.ExpDimsSegmenter(4)
                                for j=1:app.ExpDimsSegmenter(5)
                                    app.WorkingSegmenterImageData(:,:,:,i,j) = app.BrainMask.*app.OriginalSegmenterImageData(:,:,:,i,j);
                                end
                            end         
                        case 4
                            for i=1:app.ExpDimsSegmenter(4)
                                app.WorkingSegmenterImageData(:,:,:,i) = app.BrainMask.*app.OriginalSegmenterImageData(:,:,:,i);
                            end
                        otherwise
                            app.WorkingSegmenterImageData = app.BrainMask.*app.OriginalSegmenterImageData;
                    end
        
                    % Save slice mask
                    app.SavedBrainMask = app.BrainMask;
                    app.BrainMask = false(app.ExpDimsSegmenter(1:3));
            end

            app.ImageshownSwitch_Brain.Value = "Overlay"; % Set image shown value to overlay
            app.AutoClusterButton.Enable = 'off'; % TUrn off auto cluster button

            RefreshImageSegmenter(app);

            % Check if there is a saved non-zero brain mask to enable hemisphere segmentation
            if ~isequal(app.SavedBrainMask(:,:,app.SliceSpinner_Segmenter.Value), false(app.ExpDimsSegmenter(1:2))) 
                app.CurrentSegmentationDropDown.Items = {'Brain', 'Hemisphere', 'ROI'};
            else
                app.CurrentSegmentationDropDown.Items = {'Brain', 'ROI'};
            end
        end

        % Button pushed function: ResetSliceButton
        function ResetSliceButtonPushed(app, event)
 
            % Reset zoom
            app.UIAxes_Segmenter.XLim = [-inf inf];
            app.UIAxes_Segmenter.YLim = [-inf inf];
            
            switch app.VolumeSwitch.Value
                case '2D'
                    % Reset slice image based on number of dimensions in original
                    % matrix
                    switch numel(app.ExpDimsSegmenter)
                        case 5
                            for j=1:app.ExpDimsSegmenter(5)
                                for i=1:app.ExpDimsSegmenter(4)
                                    app.WorkingSegmenterImageData(:,:,app.SliceSpinner_Segmenter.Value,i,j) = app.OriginalSegmenterImageData(:,:,app.SliceSpinner_Segmenter.Value,i,j);
                                end
                            end         
                        case 4
                            for i=1:app.ExpDimsSegmenter(4)
                                app.WorkingSegmenterImageData(:,:,app.SliceSpinner_Segmenter.Value,i) = app.OriginalSegmenterImageData(:,:,app.SliceSpinner_Segmenter.Value,i);
                            end
                        otherwise
                            app.WorkingSegmenterImageData(:,:,app.SliceSpinner_Segmenter.Value) = app.OriginalSegmenterImageData(:,:,app.SliceSpinner_Segmenter.Value);
                    end
        
                    % Reset slice mask
                    app.SavedBrainMask(:,:,app.SliceSpinner_Segmenter.Value) = false(app.ExpDimsSegmenter(1:2));
                    app.BrainMask(:,:,app.SliceSpinner_Segmenter.Value) = false(app.ExpDimsSegmenter(1:2));
                case '3D'
                    % Reset slice image based on number of dimensions in original
                    % matrix
                    switch numel(app.ExpDimsSegmenter)
                        case 5
                            for j=1:app.ExpDimsSegmenter(5)
                                for i=1:app.ExpDimsSegmenter(4)
                                    app.WorkingSegmenterImageData(:,:,:,i,j) = app.OriginalSegmenterImageData(:,:,:,i,j);
                                end
                            end         
                        case 4
                            for i=1:app.ExpDimsSegmenter(4)
                                app.WorkingSegmenterImageData(:,:,:,i) = app.OriginalSegmenterImageData(:,:,:,i);
                            end
                        otherwise
                            app.WorkingSegmenterImageData = app.OriginalSegmenterImageData;
                    end
        
                    % Reset slice mask
                    app.SavedBrainMask = false(app.ExpDimsSegmenter(1:3));
                    app.BrainMask = false(app.ExpDimsSegmenter(1:3));
            end
            
            app.ImageshownSwitch_Brain.Value = "Overlay"; % Set image shown value to overlay
            app.AutoClusterButton.Enable = 'off'; % Turn off auto cluster button

            RefreshImageSegmenter(app);

            % Check if there is a saved non-zero brain mask to enable hemisphere segmentation
            if ~isequal(app.SavedBrainMask(:,:,app.SliceSpinner_Segmenter.Value), false(app.ExpDimsSegmenter(1:2))) 
                app.CurrentSegmentationDropDown.Items = {'Brain', 'Hemisphere', 'ROI'};
            else
                app.CurrentSegmentationDropDown.Items = {'Brain', 'ROI'};
            end
        end

        % Button pushed function: LoadExternalHemisphereMaskButton
        function LoadExternalHemisphereMaskButtonPushed(app, event)
            
             % Get external hemisphere mask data
            [temp_file, temp_dir] = uigetfile('.nii');
            figure(app.BrukKitAlphav0860UIFigure)
            temp_Mask = pagetranspose(niftiread(cat(2, temp_dir, temp_file)));
            dims_loaded = size(temp_Mask);
            if ~isequal(dims_loaded(1:2), app.ExpDimsSegmenter(1:2))
                uialert(app.BrukKitAlphav0860UIFigure, 'Loaded hemisphere mask x and y dimensions must be equal to those of data being segmented.', 'Loaded Mask Dimension Error')
                return
            elseif numel(dims_loaded)>=4 && numel(app.ExpDimsSegmenter)>=3 && ~isequal(dims_loaded(3), app.ExpDimsSegmenter(3))
                uialert(app.BrukKitAlphav0860UIFigure, 'Loaded hemisphere mask must have the same amount of slices as data being segmented', 'Loaded Mask Dimension Error')
                return
            end
            app.HemisphereMask = temp_Mask;
            
            RefreshImageSegmenter(app);
            uiconfirm(app.BrukKitAlphav0860UIFigure, "External hemisphere mask loaded successfully.", "External Hemisphere Mask","Options",{'OK'},"DefaultOption",1, "Icon","success")
        end

        % Button pushed function: ResetHemispheresButton
        function ResetHemispheresButtonPushed(app, event)
            if numel(app.ExpDimsSegmenter) ~= 2
                app.HemisphereMask(:,:,app.SliceSpinner_Segmenter.Value,1) = false(app.ExpDimsSegmenter(1:2));
                app.HemisphereMask(:,:,app.SliceSpinner_Segmenter.Value,2) = false(app.ExpDimsSegmenter(1:2));
            else
                app.HemisphereMask(:,:,1) = false(app.ExpDimsSegmenter(1:2));
                app.HemisphereMask(:,:,2) = false(app.ExpDimsSegmenter(1:2));
            end
            RefreshImageSegmenter(app);
        end

        % Button pushed function: LoadExternalROIPackButton
        function LoadExternalROIPackButtonPushed(app, event)
            
            % Get external ROI pack data
            [temp_file, temp_dir] = uigetfile('.nii');
            figure(app.BrukKitAlphav0860UIFigure)
            temp_Mask = pagetranspose(niftiread(cat(2, temp_dir, temp_file)));
            id_path = string(temp_dir)+string(temp_file(1:end-13))+"_identifiers_ROI.mat";   
            dims_loaded = size(temp_Mask);
            if ~exist(id_path, 'file')
                uialert(app.BrukKitAlphav0860UIFigure, 'No valid ROI identifier file found on selected ROI pack path.', 'Loaded ROI Pack ID Error')
                return
            elseif ~isequal(dims_loaded(1:2), app.ExpDimsSegmenter(1:2))
                uialert(app.BrukKitAlphav0860UIFigure, 'Loaded ROI pack x and y dimensions must be equal to those of data being segmented.', 'Loaded ROI Pack Dimension Error')
                return
            elseif numel(dims_loaded)>=4 && numel(app.ExpDimsSegmenter)>=3 && ~isequal(dims_loaded(3), app.ExpDimsSegmenter(3))
                uialert(app.BrukKitAlphav0860UIFigure, 'Loaded ROI pack must have the same amount of slices as data being segmented', 'Loaded ROI Pack Dimension Error')
                return
            end
            temp_identifiers = load(id_path);
            app.ROIIdentifiers = temp_identifiers.roi_id;
            app.ROIListListBox.Items = app.ROIIdentifiers;
            app.ROIMask = temp_Mask;
            
            RefreshImageSegmenter(app);
            uiconfirm(app.BrukKitAlphav0860UIFigure, "External ROI pack loaded successfully.", "External ROI Pack","Options",{'OK'},"DefaultOption",1, "Icon","success")
        end

        % Value changed function: ROIListListBox
        function ROIListListBoxValueChanged(app, event)
            RefreshImageSegmenter(app);
        end

        % Value changed function: ImageshownSwitch_ROI
        function ImageshownSwitch_ROIValueChanged(app, event)
            RefreshImageSegmenter(app);
        end

        % Button pushed function: AddROIButton
        function AddROIButtonPushed(app, event)
            ROI_name = inputdlg('Enter ROI name', 'Add New ROI', [1 40]);

            % Check for empty/duplicate name input
            if ~isequal(ROI_name, {''}) & ~any(strcmp(app.ROIIdentifiers,ROI_name)) %#ok<AND2> 
                app.ROIIdentifiers = cat(2, app.ROIIdentifiers, ROI_name);
                app.ROIListListBox.Items = app.ROIIdentifiers;
                app.ROIListListBox.Value = ROI_name;

                % Concatenate ROI mask to 4D matrix with other ROI masks
                if numel(app.ExpDimsSegmenter) ~= 2
                    app.ROIMask = cat(4, app.ROIMask, false(app.ExpDimsSegmenter(1:3)));
                else
                    app.ROIMask = cat(3, app.ROIMask, false(app.ExpDimsSegmenter));
                end
            else
                uialert(app.BrukKitAlphav0860UIFigure, 'ROI name must be non-empty and not a duplicate.', 'ROI Naming Error')
            end
            RefreshImageSegmenter(app);
        end

        % Button pushed function: DeleteROIButton
        function DeleteROIButtonPushed(app, event)
            try
                % Find ROI index
                index = find(strcmp(app.ROIIdentifiers,app.ROIListListBox.Value));
                % Delete ROI identifier
                app.ROIIdentifiers(index) = [];
                app.ROIListListBox.Items = app.ROIIdentifiers;
                % Delete ROI Mask
                if numel(app.ExpDimsSegmenter) ~= 2
                    app.ROIMask(:,:,:,index) = [];
                else
                    app.ROIMask(:,:,index) = [];
                end
            catch
            end
            RefreshImageSegmenter(app);
        end

        % Button pushed function: ResetROISliceButton
        function ResetROISliceButtonPushed(app, event)
            try
                 % Find ROI index
                index = find(strcmp(app.ROIIdentifiers,app.ROIListListBox.Value));
                % Reset ROI slice
                if numel(app.ExpDimsSegmenter) ~= 2
                    app.ROIMask(:,:,app.SliceSpinner_Segmenter.Value,index) = false(app.ExpDimsSegmenter(1:2));
                else
                    app.ROIMask(:,:,index) = false(app.ExpDimsSegmenter(1:2));
                end
            catch
            end
            RefreshImageSegmenter(app);
        end

        % Button pushed function: VolROISegmentationToolsButton
        function VolROISegmentationToolsButtonPushed(app, event)
            app.ProgressBar = uiprogressdlg(app.BrukKitAlphav0860UIFigure,'Title',"Please wait",...
                 'Message', "Segmenting ROI Volumes...", 'Indeterminate','on');
            drawnow
            
            app.VolROISegmentationToolsButton.Enable = 'off';

            switch numel(app.ExpDimsSegmenter)
                case 3
                    volume = app.WorkingSegmenterImageData;
                case 4
                    volume = app.WorkingSegmenterImageData(:,:,:,app.Dim4Spinner_Segmenter.Value);
                case 5
                    volume = app.WorkingSegmenterImageData(:,:,:,app.Dim4Spinner_Segmenter.Value,app.Dim4Spinner_Segmenter.Value);
            end
            app.ROIVolumeSegmenterWindow = ROIVolumeSegmenter(app, volume, app.ROIMask, ...
                app.ROIIdentifiers, app.SegmenterDimTriplet(1), app.SegmenterDimTriplet(2), app.SegmenterDimTriplet(3));
        end

        % Button pushed function: FreeButton_Add
        function FreeButton_AddPushed(app, event)
            
            % Draw freehand ROI
            app.FreeROI = drawfreehand(app.UIAxes_Segmenter, 'InteractionsAllowed', "reshape", 'FaceAlpha', 0.1, 'Color', [0.4660 0.6740 0.1880]);
            app.ROI_OperationID = "add";
        end

        % Button pushed function: FreeButton_Remove
        function FreeButton_RemovePushed(app, event)
            
            % Draw freehand ROI
            app.FreeROI = drawfreehand(app.UIAxes_Segmenter, 'InteractionsAllowed', "reshape", 'FaceAlpha', 0.1, 'Color', [0.6350 0.0780 0.1840]);
            app.ROI_OperationID = "remove";
        end

        % Button pushed function: PolyButton_Add
        function PolyButton_AddPushed(app, event)
            
            % Draw polygon ROI
            app.FreeROI = drawpolygon(app.UIAxes_Segmenter, 'InteractionsAllowed', "reshape", 'FaceAlpha', 0.1, 'Color', [0.4660 0.6740 0.1880]);
            app.ROI_OperationID = "add";
        end

        % Button pushed function: PolyButton_Remove
        function PolyButton_RemovePushed(app, event)
            
            % Draw polygon ROI
            app.FreeROI = drawpolygon(app.UIAxes_Segmenter, 'InteractionsAllowed', "reshape", 'FaceAlpha', 0.1, 'Color', [0.6350 0.0780 0.1840]);
            app.ROI_OperationID = "remove";
        end

        % Button pushed function: ConfirmButton
        function ConfirmButtonPushed(app, event)
                        
            % Update mask using new ROI based on current image displayed -
            % masked or original with overlaid transparent mask
            try
                switch app.CurrentSegmentationDropDown.Value
                    case 'Brain'
                        switch app.ROI_OperationID
                            case 'add'
                                try
                                    added_Mask = app.FreeROI.createMask(app.SegmenterImage);
                                    app.BrainMask(:,:,app.SliceSpinner_Segmenter.Value) = app.BrainMask(:,:,app.SliceSpinner_Segmenter.Value)|added_Mask;
                                catch
                                end
                                RefreshImageSegmenter(app);
                            case 'remove'
                                try
                                    removed_Mask = app.FreeROI.createMask(app.SegmenterImage);
                                    temp = app.BrainMask(:,:,app.SliceSpinner_Segmenter.Value);
                                    temp(removed_Mask) = 0;
                                    app.BrainMask(:,:,app.SliceSpinner_Segmenter.Value) = temp;
                                catch
                                end
                                RefreshImageSegmenter(app);
                        end
                    case 'Hemisphere'
                        switch app.ROI_OperationID
                            case 'add'
                                added_Mask = app.FreeROI.createMask(app.SegmenterImage);
                                if app.RightredButton.Value == true
                                    % Check for 2D image data
                                    if numel(app.ExpDimsSegmenter) ~= 2
                                        app.HemisphereMask(:,:,app.SliceSpinner_Segmenter.Value,2) = added_Mask|app.HemisphereMask(:,:,app.SliceSpinner_Segmenter.Value,2);
                                        app.HemisphereMask(:,:,app.SliceSpinner_Segmenter.Value,2) = app.SavedBrainMask(:,:,app.SliceSpinner_Segmenter.Value)&app.HemisphereMask(:,:,app.SliceSpinner_Segmenter.Value,2);
                                        % Check for auto completion of second hemisphere
                                        if app.AutoCompleteHemispheresCheckBox.Value == 1
                                            app.HemisphereMask(:,:,app.SliceSpinner_Segmenter.Value,1) = app.HemisphereMask(:,:,app.SliceSpinner_Segmenter.Value,2) == 0;
                                            app.HemisphereMask(:,:,app.SliceSpinner_Segmenter.Value,1) = app.SavedBrainMask(:,:,app.SliceSpinner_Segmenter.Value)&app.HemisphereMask(:,:,app.SliceSpinner_Segmenter.Value,1);
                                        end
                                    else
                                        app.HemisphereMask(:,:,2) = added_Mask|app.HemisphereMask(:,:,2);
                                        app.HemisphereMask(:,:,2) = app.SavedBrainMask(:,:,app.SliceSpinner_Segmenter.Value)&app.HemisphereMask(:,:,2);
                                        % Check for auto completion of second hemisphere
                                        if app.AutoCompleteHemispheresCheckBox.Value == 1
                                            app.HemisphereMask(:,:,1) = app.HemisphereMask(:,:,2) == 0;
                                            app.HemisphereMask(:,:,1) = app.SavedBrainMask(:,:,app.SliceSpinner_Segmenter.Value)&app.HemisphereMask(:,:,1);
                                        end
                                    end
    
                                else
                                    %Check for 2D image data
                                    if numel(app.ExpDimsSegmenter) ~= 2
                                        app.HemisphereMask(:,:,app.SliceSpinner_Segmenter.Value,1) = added_Mask|app.HemisphereMask(:,:,app.SliceSpinner_Segmenter.Value,1);
                                        app.HemisphereMask(:,:,app.SliceSpinner_Segmenter.Value,1) = app.SavedBrainMask(:,:,app.SliceSpinner_Segmenter.Value)&app.HemisphereMask(:,:,app.SliceSpinner_Segmenter.Value,1);
                                        % Check for auto completion of second hemisphere
                                        if app.AutoCompleteHemispheresCheckBox.Value == 1
                                            app.HemisphereMask(:,:,app.SliceSpinner_Segmenter.Value,2) = app.HemisphereMask(:,:,app.SliceSpinner_Segmenter.Value,1) == 0;
                                            app.HemisphereMask(:,:,app.SliceSpinner_Segmenter.Value,2) = app.SavedBrainMask(:,:,app.SliceSpinner_Segmenter.Value)&app.HemisphereMask(:,:,app.SliceSpinner_Segmenter.Value,2);
                                        end
                                    else
                                        app.HemisphereMask(:,:,1) = added_Mask|app.HemisphereMask(:,:,1);
                                        app.HemisphereMask(:,:,1) = app.SavedBrainMask(:,:,app.SliceSpinner_Segmenter.Value)&app.HemisphereMask(:,:,1);
                                        % Check for auto completion of second hemisphere
                                        if app.AutoCompleteHemispheresCheckBox.Value == 1
                                            app.HemisphereMask(:,:,2) = app.HemisphereMask(:,:,1) == 0;
                                            app.HemisphereMask(:,:,2) = app.SavedBrainMask(:,:,app.SliceSpinner_Segmenter.Value)&app.HemisphereMask(:,:,2);
                                        end
                                    end
                                end
                                RefreshImageSegmenter(app);
                            case 'remove'
                                removed_Mask = app.FreeROI.createMask(app.SegmenterImage);
                                if app.RightredButton.Value == true
                                    % Check for 2D image data
                                    if numel(app.ExpDimsSegmenter) ~= 2
                                        temp_Hemi = app.HemisphereMask(:,:,app.SliceSpinner_Segmenter.Value,2);
                                        temp_Hemi(removed_Mask)=0;
                                        app.HemisphereMask(:,:,app.SliceSpinner_Segmenter.Value,2) = temp_Hemi;
                                        app.HemisphereMask(:,:,app.SliceSpinner_Segmenter.Value,2) = app.SavedBrainMask(:,:,app.SliceSpinner_Segmenter.Value)&app.HemisphereMask(:,:,app.SliceSpinner_Segmenter.Value,2);
                                        % Check for auto completion of second hemisphere
                                        if app.AutoCompleteHemispheresCheckBox.Value == 1
                                            app.HemisphereMask(:,:,app.SliceSpinner_Segmenter.Value,1) = app.HemisphereMask(:,:,app.SliceSpinner_Segmenter.Value,2) == 0;
                                            app.HemisphereMask(:,:,app.SliceSpinner_Segmenter.Value,1) = app.SavedBrainMask(:,:,app.SliceSpinner_Segmenter.Value)&app.HemisphereMask(:,:,app.SliceSpinner_Segmenter.Value,1);
                                        end
                                    else
                                        temp_Hemi = app.HemisphereMask(:,:,2);
                                        temp_Hemi(removed_Mask)=0;
                                        app.HemisphereMask(:,:,2) = temp_Hemi;
                                        app.HemisphereMask(:,:,2) = app.SavedBrainMask(:,:,app.SliceSpinner_Segmenter.Value)&app.HemisphereMask(:,:,2);
                                        % Check for auto completion of second hemisphere
                                        if app.AutoCompleteHemispheresCheckBox.Value == 1
                                            app.HemisphereMask(:,:,1) = app.HemisphereMask(:,:,2) == 0;
                                            app.HemisphereMask(:,:,1) = app.SavedBrainMask(:,:,app.SliceSpinner_Segmenter.Value)&app.HemisphereMask(:,:,1);
                                        end
                                    end
    
                                else
                                    % Check for 2D image data
                                    if numel(app.ExpDimsSegmenter) ~= 2
                                        temp_Hemi = app.HemisphereMask(:,:,app.SliceSpinner_Segmenter.Value,1);
                                        temp_Hemi(removed_Mask)=0;
                                        app.HemisphereMask(:,:,app.SliceSpinner_Segmenter.Value,1) = temp_Hemi;
                                        app.HemisphereMask(:,:,app.SliceSpinner_Segmenter.Value,1) = app.SavedBrainMask(:,:,app.SliceSpinner_Segmenter.Value)&app.HemisphereMask(:,:,app.SliceSpinner_Segmenter.Value,1);
                                        % Check for auto completion of second hemisphere
                                        if app.AutoCompleteHemispheresCheckBox.Value == 1
                                            app.HemisphereMask(:,:,app.SliceSpinner_Segmenter.Value,2) = app.HemisphereMask(:,:,app.SliceSpinner_Segmenter.Value,1) == 0;
                                            app.HemisphereMask(:,:,app.SliceSpinner_Segmenter.Value,2) = app.SavedBrainMask(:,:,app.SliceSpinner_Segmenter.Value)&app.HemisphereMask(:,:,app.SliceSpinner_Segmenter.Value,2);
                                        end
                                    else
                                        temp_Hemi = app.HemisphereMask(:,:,1);
                                        temp_Hemi(removed_Mask)=0;
                                        app.HemisphereMask(:,:,1) = temp_Hemi;
                                        app.HemisphereMask(:,:,1) = app.SavedBrainMask(:,:,app.SliceSpinner_Segmenter.Value)&app.HemisphereMask(:,:,1);
                                        % Check for auto completion of second hemisphere
                                        if app.AutoCompleteHemispheresCheckBox.Value == 1
                                            app.HemisphereMask(:,:,2) = app.HemisphereMask(:,:,1) == 0;
                                            app.HemisphereMask(:,:,2) = app.SavedBrainMask(:,:,app.SliceSpinner_Segmenter.Value)&app.HemisphereMask(:,:,2);
                                        end
                                    end
                                end
                                RefreshImageSegmenter(app);
                        end
                    case 'ROI'
                        % Find selected ROI index
                        index = find(strcmp(app.ROIIdentifiers,app.ROIListListBox.Value));
                        switch app.ROI_OperationID
                            case 'add'
                                added_Mask = app.FreeROI.createMask(app.SegmenterImage);
                                if numel(app.ExpDimsSegmenter) ~= 2
                                    app.ROIMask(:,:,app.SliceSpinner_Segmenter.Value,index) = added_Mask|app.ROIMask(:,:,app.SliceSpinner_Segmenter.Value,index);
                                else
                                    app.ROIMask(:,:,index) = added_Mask|app.ROIMask(:,:,app.SliceSpinner_Segmenter.Value,index);
                                end
                                RefreshImageSegmenter(app);
                            case 'remove'
                                removed_Mask = app.FreeROI.createMask(app.SegmenterImage);
                                if numel(app.ExpDimsSegmenter) ~= 2
                                    temp_ROI = app.ROIMask(:,:,app.SliceSpinner_Segmenter.Value,index);
                                    temp_ROI(removed_Mask)=0;
                                    app.ROIMask(:,:,app.SliceSpinner_Segmenter.Value,index) = temp_ROI;
                                else
                                    temp_ROI = app.ROIMask(:,:,index);
                                    temp_ROI(removed_Mask)=0;
                                    app.ROIMask(:,:,index) = temp_ROI;
                                end
                                RefreshImageSegmenter(app);
                        end
                end
            catch
            end
        end

        % Button pushed function: DeleteButton
        function DeleteButtonPushed(app, event)
            % Delete current ROI
            try
                delete(app.FreeROI)
            catch
            end
        end

        % Button pushed function: SaveSegmentedDataButton
        function SaveSegmentedDataButtonPushed(app, event)
            SaveData(app, 'Segmenter')
        end

        % Button pushed function: ExportDataButton_Segmenter
        function ExportDataButton_SegmenterPushed(app, event)
            
            ExportImageDataGeneral(app, 'Segmenter');
            
            uiconfirm(app.BrukKitAlphav0860UIFigure, "Segmented sequence mask and image data exported in NIfTI format.", "","Options",{'OK'},"DefaultOption",1, "Icon","success")
        end

        % Value changed function: SelectVolumetryDropDown
        function SelectVolumetryDropDownValueChanged(app, event)
            if app.SelectVolumetryDropDown.Value == "None"
                % Disable Export
                app.ExportDataButton_Volumetry.Enable = 'off';
                % Reset brain fields and table
                app.UITable_VolumetryBrain.Data = table();
                app.VolumeEditField_Brain.Value = 0;
                app.MeanEditField_Brain.Value = 0;
                app.SDEditField_Brain.Value = 0;
                app.MedianEditField_Brain.Value = 0;
                app.IQRLowerEditField_Brain.Value = 0;
                app.IQRUpperEditField_Brain.Value = 0;
                app.MinEditField_Brain.Value = 0;
                app.MaxEditField_Brain.Value = 0;
                % Reset hemisphere fields and table
                app.SelectHemisphereDropDown.Enable = 'off';
                app.UITable_VolumetryHemisphere.Data = table();
                app.VolumeEditField_Hemisphere.Value = 0;
                app.MeanEditField_Hemisphere.Value = 0;
                app.SDEditField_Hemisphere.Value = 0;
                app.MedianEditField_Hemisphere.Value = 0;
                app.IQRLowerEditField_Hemisphere.Value = 0;
                app.IQRUpperEditField_Hemisphere.Value = 0;
                app.MinEditField_Hemisphere.Value = 0;
                app.MaxEditField_Hemisphere.Value = 0;
                % Reset ROI fields and table
                app.SelectROIDropDown.Enable = 'off';
                app.SelectROIDropDown.Items = "None";
                app.UITable_VolumetryROI.Data = table();
                app.ApplyEdemaCorrectionCheckBox.Enable = 'off';
                app.ApplyEdemaCorrectionCheckBox.Value = 0;
                app.VolumeEditField_ROI.Value = 0;
                app.MeanEditField_ROI.Value = 0;
                app.SDEditField_ROI.Value = 0;
                app.MedianEditField_ROI.Value = 0;
                app.IQRLowerEditField_ROI.Value = 0;
                app.IQRUpperEditField_ROI.Value = 0;
                app.MinEditField_ROI.Value = 0;
                app.MaxEditField_ROI.Value = 0;
                app.AreaUnitLabel.Text = "";
                app.VolumeUnitLabel.Text = "";
                return
            end
            
            % Draw a progress box 
            progress = uiprogressdlg(app.BrukKitAlphav0860UIFigure,'Title',"Please wait",...
                 'Message', "Retrieving saved data.");
            drawnow
            
            % Get data from saved table
            progress.Value = 0.1;
            pause(0.3) 
            app.VolumetryImageData = cell2mat(app.SavedTable.Image(app.SelectVolumetryDropDown.Value));
            app.VolumetryBrainMask = cell2mat(app.SavedTable.BrainMask(app.SelectVolumetryDropDown.Value));
            app.VolumetryHemiMask = cell2mat(app.SavedTable.HemiMask(app.SelectVolumetryDropDown.Value));
            app.VolumetryROI = cell2mat(app.SavedTable.ROI(app.SelectVolumetryDropDown.Value));
            app.VolumetryDimX = app.SavedTable.VoxDimX(app.SelectVolumetryDropDown.Value);
            app.VolumetryDimY = app.SavedTable.VoxDimY(app.SelectVolumetryDropDown.Value);
            voxel_Area = app.VolumetryDimY*app.VolumetryDimX;
            app.VolumetryThickness = app.SavedTable.SliceThickness(app.SelectVolumetryDropDown.Value);
            app.VolumetryGap = app.SavedTable.SliceGap(app.SelectVolumetryDropDown.Value);
            dim_units = split(app.SavedTable.Units(app.SelectVolumetryDropDown.Value));
            
            % Set unit edit fields
            if dim_units == "Unspecified"
                app.AreaUnitLabel.Text = "Unspecified";
                app.VolumeUnitLabel.Text = "Unspecified";
            elseif dim_units(1) == "mm" && dim_units(2) == "mm"
                app.AreaUnitLabel.Text = "mm^2";
                app.VolumeUnitLabel.Text = "mm^3";
            end

            % Enable Export
            if isstring(app.ExportFolderPath)
                app.ExportDataButton_Volumetry.Enable = 'on';
            end

            % Get volume for segmented brain and area for separate slices
            progress.Value = 0.3;
            progress.Message = "Calculating brain volume and descriptive statistics.";
            pause(0.5)
            [sliceTable, Volume, mean_val, std_val, median_val, IQRlow, IQRup, min_val, max_val] = GetVolumetricData(app, app.VolumetryImageData, app.VolumetryBrainMask, voxel_Area, app.VolumetryThickness, app.VolumetryGap);
            app.UITable_VolumetryBrain.Data = sliceTable;
            app.VolumeEditField_Brain.Value = Volume;

            % Populate brain descriptive edit fields
            try
                app.MeanEditField_Brain.Value = mean_val;
                app.SDEditField_Brain.Value = std_val;
                app.MedianEditField_Brain.Value = median_val;
                app.IQRLowerEditField_Brain.Value = IQRlow;
                app.IQRUpperEditField_Brain.Value = IQRup;
                app.MinEditField_Brain.Value = min_val;
                app.MaxEditField_Brain.Value = max_val;
            catch
                app.MeanEditField_Brain.Value = 0;
                app.SDEditField_Brain.Value = 0;
                app.MedianEditField_Brain.Value = 0;
                app.IQRLowerEditField_Brain.Value = 0;
                app.IQRUpperEditField_Brain.Value = 0;
                app.MinEditField_Brain.Value = 0;
                app.MaxEditField_Brain.Value = 0;
            end
            
            % Check for hemisphere segmentation
            if ~isequal(app.VolumetryHemiMask, false(1))
                % Get volume for segmented hemispheres and area for separate slices
                progress.Value = 0.5;
                progress.Message = "Calculating hemisphere volume and descriptive statistics.";
                pause(0.5)
                app.SelectHemisphereDropDown.Enable = 'on';
                app.SelectHemisphereDropDown.Value = 'Left';
                switch numel(size(app.VolumetryHemiMask))
                    case 4
                        [sliceTable, Volume, mean_val, std_val, median_val, IQRlow, IQRup, min_val, max_val] = GetVolumetricData(app, app.VolumetryImageData, app.VolumetryHemiMask(:,:,:,1), voxel_Area, app.VolumetryThickness, app.VolumetryGap);
                    case 3
                        [sliceTable, Volume, mean_val, std_val, median_val, IQRlow, IQRup, min_val, max_val] = GetVolumetricData(app, app.VolumetryImageData, app.VolumetryHemiMask(:,:,1), voxel_Area, app.VolumetryThickness, app.VolumetryGap);
                end
                app.UITable_VolumetryHemisphere.Data = sliceTable;
                app.VolumeEditField_Hemisphere.Value = Volume;

                % Populate hemisphere descriptive edit fields
                app.MeanEditField_Hemisphere.Value = mean_val;
                app.SDEditField_Hemisphere.Value = std_val;
                app.MedianEditField_Hemisphere.Value = median_val;
                app.IQRLowerEditField_Hemisphere.Value = IQRlow;
                app.IQRUpperEditField_Hemisphere.Value = IQRup;
                app.MinEditField_Hemisphere.Value = min_val;
                app.MaxEditField_Hemisphere.Value = max_val;
            else
                app.SelectHemisphereDropDown.Enable = 'off';
                app.UITable_VolumetryHemisphere.Data = table();
                app.VolumeEditField_Hemisphere.Value = 0;
                app.MeanEditField_Hemisphere.Value = 0;
                app.SDEditField_Hemisphere.Value = 0;
                app.MedianEditField_Hemisphere.Value = 0;
                app.IQRLowerEditField_Hemisphere.Value = 0;
                app.IQRUpperEditField_Hemisphere.Value = 0;
                app.MinEditField_Hemisphere.Value = 0;
                app.MaxEditField_Hemisphere.Value = 0;
            end

            % Check for ROI segmentation
            if ~isequal(app.VolumetryROI.Mask, false(1))
                % Get volume for first segmented ROI and area for separate slices
                progress.Value = 0.7;
                progress.Message = "Calculating ROI volumes and descriptive statistics.";
                pause(0.5)
                app.SelectROIDropDown.Enable = 'on';
                app.SelectROIDropDown.Items = app.VolumetryROI.ID;
                app.SelectROIDropDown.Value = app.VolumetryROI.ID(1);
                if ~isequal(app.VolumetryHemiMask, false(1))
                    app.ApplyEdemaCorrectionCheckBox.Enable = 'on';
                else
                    app.ApplyEdemaCorrectionCheckBox.Enable = 'off';
                end
                app.ApplyEdemaCorrectionCheckBox.Value = 0;
                switch numel(size(app.VolumetryImageData))
                    case 2
                        [sliceTable, Volume, mean_val, std_val, median_val, IQRlow, IQRup, min_val, max_val] = GetVolumetricData(app, app.VolumetryImageData, app.VolumetryROI.Mask(:,:,1), voxel_Area, app.VolumetryThickness, app.VolumetryGap);
                    otherwise
                        [sliceTable, Volume, mean_val, std_val, median_val, IQRlow, IQRup, min_val, max_val] = GetVolumetricData(app, app.VolumetryImageData, app.VolumetryROI.Mask(:,:,:,1), voxel_Area, app.VolumetryThickness, app.VolumetryGap);
                end
                app.UITable_VolumetryROI.Data = sliceTable;
                app.VolumeEditField_ROI.Value = Volume;

                % Populate ROI descriptive edit fields
                app.MeanEditField_ROI.Value = mean_val;
                app.SDEditField_ROI.Value = std_val;
                app.MedianEditField_ROI.Value = median_val;
                app.IQRLowerEditField_ROI.Value = IQRlow;
                app.IQRUpperEditField_ROI.Value = IQRup;
                app.MinEditField_ROI.Value = min_val;
                app.MaxEditField_ROI.Value = max_val;
            else
                app.SelectROIDropDown.Enable = 'off';
                app.SelectROIDropDown.Items = "None";
                app.ApplyEdemaCorrectionCheckBox.Enable = 'off';
                app.ApplyEdemaCorrectionCheckBox.Value = 0;
                app.UITable_VolumetryROI.Data = table();
                app.VolumeEditField_ROI.Value = 0;
                app.MeanEditField_ROI.Value = 0;
                app.SDEditField_ROI.Value = 0;
                app.MedianEditField_ROI.Value = 0;
                app.IQRLowerEditField_ROI.Value = 0;
                app.IQRUpperEditField_ROI.Value = 0;
                app.MinEditField_ROI.Value = 0;
                app.MaxEditField_ROI.Value = 0;
            end
            
            % close the dialog box
            progress.Value = 1;
            progress.Message = "Done!";
            pause(0.5);
            close(progress);
        end

        % Value changed function: SelectHemisphereDropDown
        function SelectHemisphereDropDownValueChanged(app, event)
            voxel_Area = app.VolumetryDimY*app.VolumetryDimX;
            if app.SelectHemisphereDropDown.Value == "Left"
                switch numel(size(app.VolumetryHemiMask))
                    case 4
                        [sliceTable, Volume, mean_val, std_val, median_val, IQRlow, IQRup, min_val, max_val] = GetVolumetricData(app, app.VolumetryImageData, app.VolumetryHemiMask(:,:,:,1), voxel_Area, app.VolumetryThickness, app.VolumetryGap);
                    case 3
                        [sliceTable, Volume, mean_val, std_val, median_val, IQRlow, IQRup, min_val, max_val] = GetVolumetricData(app, app.VolumetryImageData, app.VolumetryHemiMask(:,:,1), voxel_Area, app.VolumetryThickness, app.VolumetryGap);
                end
                app.UITable_VolumetryHemisphere.Data = sliceTable;
                app.VolumeEditField_Hemisphere.Value = Volume;

                % Populate hemisphere descriptive edit fields
                app.MeanEditField_Hemisphere.Value = mean_val;
                app.SDEditField_Hemisphere.Value = std_val;
                app.MedianEditField_Hemisphere.Value = median_val;
                app.IQRLowerEditField_Hemisphere.Value = IQRlow;
                app.IQRUpperEditField_Hemisphere.Value = IQRup;
                app.MinEditField_Hemisphere.Value = min_val;
                app.MaxEditField_Hemisphere.Value = max_val;
            else
                switch numel(size(app.VolumetryHemiMask))
                    case 4
                        [sliceTable, Volume, mean_val, std_val, median_val, IQRlow, IQRup, min_val, max_val] = GetVolumetricData(app, app.VolumetryImageData, app.VolumetryHemiMask(:,:,:,2), voxel_Area, app.VolumetryThickness, app.VolumetryGap);
                    case 3
                        [sliceTable, Volume, mean_val, std_val, median_val, IQRlow, IQRup, min_val, max_val] = GetVolumetricData(app, app.VolumetryImageData, app.VolumetryHemiMask(:,:,2), voxel_Area, app.VolumetryThickness, app.VolumetryGap);
                end
                app.UITable_VolumetryHemisphere.Data = sliceTable;
                app.VolumeEditField_Hemisphere.Value = Volume;

                % Populate hemisphere descriptive edit fields
                app.MeanEditField_Hemisphere.Value = mean_val;
                app.SDEditField_Hemisphere.Value = std_val;
                app.MedianEditField_Hemisphere.Value = median_val;
                app.IQRLowerEditField_Hemisphere.Value = IQRlow;
                app.IQRUpperEditField_Hemisphere.Value = IQRup;
                app.MinEditField_Hemisphere.Value = min_val;
                app.MaxEditField_Hemisphere.Value = max_val;
            end          
        end

        % Value changed function: SelectROIDropDown
        function SelectROIDropDownValueChanged(app, event)
            UpdateVolumetryROI(app);
        end

        % Value changed function: ApplyEdemaCorrectionCheckBox
        function ApplyEdemaCorrectionCheckBoxValueChanged(app, event)
            UpdateVolumetryROI(app);
        end

        % Menu selected function: HemisphereScalingFactorMenu
        function HemisphereScalingFactorMenuSelected(app, event)
            app.HemisphereScalingFactorMenu.Checked = 'on';
            app.BelayevScalingFactorMenu.Checked = 'off';
            app.GerrietsCompressionFactorMenu.Checked = 'off';
            if app.SelectVolumetryDropDown.Value ~= "None" & app.ApplyEdemaCorrectionCheckBox.Enable == "on" %#ok<AND2> 
                UpdateVolumetryROI(app);
            end
        end

        % Menu selected function: BelayevScalingFactorMenu
        function BelayevScalingFactorMenuSelected(app, event)
            app.HemisphereScalingFactorMenu.Checked = 'off';
            app.BelayevScalingFactorMenu.Checked = 'on';
            app.GerrietsCompressionFactorMenu.Checked = 'off';
            if app.SelectVolumetryDropDown.Value ~= "None" & app.ApplyEdemaCorrectionCheckBox.Enable == "on" %#ok<AND2> 
                UpdateVolumetryROI(app);
            end
        end

        % Menu selected function: GerrietsCompressionFactorMenu
        function GerrietsCompressionFactorMenuSelected(app, event)
            app.HemisphereScalingFactorMenu.Checked = 'off';
            app.BelayevScalingFactorMenu.Checked = 'off';
            app.GerrietsCompressionFactorMenu.Checked = 'on';
            if app.SelectVolumetryDropDown.Value ~= "None" & app.ApplyEdemaCorrectionCheckBox.Enable == "on" %#ok<AND2> 
                UpdateVolumetryROI(app);
            end
        end

        % Button pushed function: ExportDataButton_Volumetry
        function ExportDataButton_VolumetryPushed(app, event)
            voxel_Area = app.VolumetryDimY*app.VolumetryDimX;
            target_Path = app.ExportFolderPath + filesep + app.SelectVolumetryDropDown.Value + "_Volumetry.xlsx";
            table_Vars = ["Volume", "Mean", "SD", "Median", "IQR Low", "IQR High", "Min", "Max"];

            % Write Brain Volumetry to excel
            writing_table = table(app.VolumeEditField_Brain.Value, app.MeanEditField_Brain.Value, app.SDEditField_Brain.Value, app.MedianEditField_Brain.Value, app.IQRLowerEditField_Brain.Value, ...
                app.IQRUpperEditField_Brain.Value, app.MinEditField_Brain.Value, app.MaxEditField_Brain.Value, 'VariableNames', table_Vars);
            writetable(writing_table, target_Path, 'Sheet', "Brain")
            writetable(app.UITable_VolumetryBrain.Data, target_Path, 'Sheet', "Brain", 'Range', 'A4')

            % Write Hemisphere Volumetry if applicable
            if app.SelectHemisphereDropDown.Enable == "on"
                % Write Left Hemi Data
                switch numel(size(app.VolumetryHemiMask))
                    case 4
                        [sliceTable, Volume, mean_val, std_val, median_val, IQRlow, IQRup, min_val, max_val] = GetVolumetricData(app, app.VolumetryImageData, app.VolumetryHemiMask(:,:,:,1), voxel_Area, app.VolumetryThickness, app.VolumetryGap);
                    case 3
                        [sliceTable, Volume, mean_val, std_val, median_val, IQRlow, IQRup, min_val, max_val] = GetVolumetricData(app, app.VolumetryImageData, app.VolumetryHemiMask(:,:,1), voxel_Area, app.VolumetryThickness, app.VolumetryGap);
                end
                writing_table = table(Volume, mean_val, std_val, median_val, IQRlow, IQRup, min_val, max_val, 'VariableNames', table_Vars);
                writetable(writing_table, target_Path, 'Sheet', "Left Hemisphere")
                writetable(sliceTable, target_Path, 'Sheet', "Left Hemisphere", 'Range', 'A4')
                % Write Right Hemi Data
                switch numel(size(app.VolumetryHemiMask))
                    case 4
                        [sliceTable, Volume, mean_val, std_val, median_val, IQRlow, IQRup, min_val, max_val] = GetVolumetricData(app, app.VolumetryImageData, app.VolumetryHemiMask(:,:,:,2), voxel_Area, app.VolumetryThickness, app.VolumetryGap);
                    case 3
                        [sliceTable, Volume, mean_val, std_val, median_val, IQRlow, IQRup, min_val, max_val] = GetVolumetricData(app, app.VolumetryImageData, app.VolumetryHemiMask(:,:,2), voxel_Area, app.VolumetryThickness, app.VolumetryGap);
                end
                writing_table = table(Volume, mean_val, std_val, median_val, IQRlow, IQRup, min_val, max_val, 'VariableNames', table_Vars);
                writetable(writing_table, target_Path, 'Sheet', "Right Hemisphere")
                writetable(sliceTable, target_Path, 'Sheet', "Right Hemisphere", 'Range', 'A4')
            end

            % Write ROI Volumetry if applicable
            if app.SelectROIDropDown.Enable == "on"
                for i = app.SelectROIDropDown.Items
                     % Find index of selected ROI
                    index = find(contains(app.VolumetryROI.ID, i));
                    switch app.ApplyEdemaCorrectionCheckBox.Value
                        case 1
                            switch numel(size(app.VolumetryImageData))
                                case 2
                                    [sliceTable, Volume, mean_val, std_val, median_val, IQRlow, IQRup, min_val, max_val] = GetVolumetricData(app, app.VolumetryImageData, app.VolumetryROI.Mask(:,:,index), voxel_Area, app.VolumetryThickness, app.VolumetryGap, app.VolumetryHemiMask);
                                otherwise
                                    [sliceTable, Volume, mean_val, std_val, median_val, IQRlow, IQRup, min_val, max_val] = GetVolumetricData(app, app.VolumetryImageData, app.VolumetryROI.Mask(:,:,:,index), voxel_Area, app.VolumetryThickness, app.VolumetryGap, app.VolumetryHemiMask);
                            end
                        case 0
                            switch numel(size(app.VolumetryImageData))
                                case 2
                                    [sliceTable, Volume, mean_val, std_val, median_val, IQRlow, IQRup, min_val, max_val] = GetVolumetricData(app, app.VolumetryImageData, app.VolumetryROI.Mask(:,:,index), voxel_Area, app.VolumetryThickness, app.VolumetryGap);
                                otherwise
                                    [sliceTable, Volume, mean_val, std_val, median_val, IQRlow, IQRup, min_val, max_val] = GetVolumetricData(app, app.VolumetryImageData, app.VolumetryROI.Mask(:,:,:,index), voxel_Area, app.VolumetryThickness, app.VolumetryGap);
                            end
                    end
                    try
                        writing_table = table(Volume, mean_val, std_val, median_val, IQRlow, IQRup, min_val, max_val, 'VariableNames', table_Vars);
                    catch
                        writing_table = table(0, 0, 0, 0, 0, 0, 0, 0, 'VariableNames', table_Vars);
                    end
                    writetable(writing_table, target_Path, 'Sheet', string(i))
                        writetable(sliceTable, target_Path, 'Sheet', string(i), 'Range', 'A4')
                end
            end
        end

        % Cell selection callback: UITable_VolumetryBrain
        function UITable_VolumetryBrainCellSelection(app, event)
            indices = event.Indices;
            try
                selectedSlice = table2array(app.UITable_VolumetryBrain.Data(indices(1),1));
                maskPreview = app.VolumetryBrainMask(:,:,selectedSlice);
                app.UIAxes_Volumetry_Container.Visible = "on";
                imshow(maskPreview, 'DisplayRange', [0 1], 'Parent', app.UIAxes_Volumetry);
                
                app.UIAxes_Volumetry.Interactions = [regionZoomInteraction zoomInteraction];
                app.UIAxes_Volumetry_Container.Position = [371,234,300,185];
                app.UIAxes_Volumetry.PositionConstraint = 'innerposition';
                app.UIAxes_Volumetry.InnerPosition = [0,0,app.UIAxes_Volumetry_Container.Position(3),app.UIAxes_Volumetry_Container.Position(4)];
            catch
            end
        end

        % Cell selection callback: UITable_VolumetryHemisphere
        function UITable_VolumetryHemisphereCellSelection(app, event)
            indices = event.Indices;
            data_dims = size(app.VolumetryBrainMask);
            try
                selectedSlice = table2array(app.UITable_VolumetryHemisphere.Data(indices(1),1));
                switch app.SelectHemisphereDropDown.Value
                    case 'Left'
                        selectedHemisphere = 1;
                        color_Overlay = cat(3, zeros(data_dims(1:2)), zeros(data_dims(1:2)), ones(data_dims(1:2)));
                    case 'Right'
                        selectedHemisphere = 2;
                        color_Overlay = cat(3, ones(data_dims(1:2)), zeros(data_dims(1:2)), zeros(data_dims(1:2)));
                end
                maskPreview = app.VolumetryBrainMask(:,:,selectedSlice);
                app.UIAxes_Volumetry_Container.Visible = "on";
                imshow(maskPreview, 'DisplayRange', [0 1], 'Parent', app.UIAxes_Volumetry);
                hold(app.UIAxes_Volumetry, "on")
                shown_hemi = imshow(color_Overlay, 'Parent', app.UIAxes_Volumetry);
                hold(app.UIAxes_Volumetry, "off")
                shown_hemi.AlphaData = app.VolumetryHemiMask(:,:,selectedSlice,selectedHemisphere)-0.3;
                
                app.UIAxes_Volumetry.Interactions = [regionZoomInteraction zoomInteraction];
                app.UIAxes_Volumetry_Container.Position = [795,234,300,185];
                app.UIAxes_Volumetry.PositionConstraint = 'innerposition';
                app.UIAxes_Volumetry.InnerPosition = [0,0,app.UIAxes_Volumetry_Container.Position(3),app.UIAxes_Volumetry_Container.Position(4)];
            catch
            end
        end

        % Cell selection callback: UITable_VolumetryROI
        function UITable_VolumetryROICellSelection(app, event)
            indices = event.Indices;
            data_dims = size(app.VolumetryBrainMask);
            color_Overlay = cat(3, ones(data_dims(1:2)), ones(data_dims(1:2)), zeros(data_dims(1:2)));
            color_Overlay(:,:,1) = 0.9290;
            color_Overlay(:,:,2) = 0.6940;
            color_Overlay(:,:,3) = 0.1250;
            try
                selectedSlice = table2array(app.UITable_VolumetryROI.Data(indices(1),1));
                selectedROI = find(contains(app.VolumetryROI.ID, app.SelectROIDropDown.Value));
                maskPreview = app.VolumetryBrainMask(:,:,selectedSlice);
                app.UIAxes_Volumetry_Container.Visible = "on";
                imshow(maskPreview, 'DisplayRange', [0 1], 'Parent', app.UIAxes_Volumetry);
                hold(app.UIAxes_Volumetry, "on")
                shown_roi = imshow(color_Overlay, 'Parent', app.UIAxes_Volumetry);
                hold(app.UIAxes_Volumetry, "off")
                shown_roi.AlphaData = app.VolumetryROI.Mask(:,:,selectedSlice,selectedROI)-0.3;

                app.UIAxes_Volumetry.Interactions = [regionZoomInteraction zoomInteraction];
                app.UIAxes_Volumetry_Container.Position = [611,234,300,185];
                app.UIAxes_Volumetry.PositionConstraint = 'innerposition';
                app.UIAxes_Volumetry.InnerPosition = [0,0,app.UIAxes_Volumetry_Container.Position(3),app.UIAxes_Volumetry_Container.Position(4)];
            catch
            end
        end

        % Button down function: VolumetryTab
        function VolumetryTabButtonDown(app, event)
            app.UIAxes_Volumetry_Container.Visible = "off";
        end

        % Button down function: BrainPanel
        function BrainPanelButtonDown(app, event)
            app.UIAxes_Volumetry_Container.Visible = "off";
        end

        % Button down function: HemispherePanel
        function HemispherePanelButtonDown(app, event)
            app.UIAxes_Volumetry_Container.Visible = "off";
        end

        % Button down function: ROIPanel_Volumetry
        function ROIPanel_VolumetryButtonDown(app, event)
            app.UIAxes_Volumetry_Container.Visible = "off";
        end

        % Clicked callback: SelectVolumetryDropDown
        function SelectVolumetryDropDownClicked(app, event)
            app.UIAxes_Volumetry_Container.Visible = "off";
        end

        % Clicked callback: SelectHemisphereDropDown
        function SelectHemisphereDropDownClicked(app, event)
            app.UIAxes_Volumetry_Container.Visible = "off";  
        end

        % Clicked callback: SelectROIDropDown
        function SelectROIDropDownClicked(app, event)
            app.UIAxes_Volumetry_Container.Visible = "off";
        end

        % Value changed function: ChooseRegistrationTypeDropDown
        function ChooseRegistrationTypeDropDownValueChanged(app, event)
            
            switch app.ChooseRegistrationTypeDropDown.Value
                case "Standard"
                    app.StandardAtlasRegistrationPanel.Visible = 'on';
                    app.TimeSeriesAlignmentPanel.Visible = 'off';
                    app.SelectfixedDropDown.Visible = 'on';
                    app.SelectfixedLabel.Visible = 'on';
                    app.ImportReferenceAtlasButton.Visible = 'off';
                    app.SelectAtlasDropDown.Visible = 'off';
                case "Reference Atlas"
                    app.StandardAtlasRegistrationPanel.Visible = 'on';
                    app.TimeSeriesAlignmentPanel.Visible = 'off';
                    app.SelectfixedDropDown.Visible = 'off';
                    app.SelectfixedLabel.Visible = 'off';
                    app.ImportReferenceAtlasButton.Visible = 'on';
                    app.SelectAtlasDropDown.Visible = 'on';
                case "Time-Series Alignment"
                    app.StandardAtlasRegistrationPanel.Visible = 'off';
                    app.TimeSeriesAlignmentPanel.Visible = 'on';
            end
            app.SelectfixedDropDown.Value = "None";
            app.RegistrationInstructionsTextArea.Value = '';
        end

        % Value changed function: SelectfixedDropDown
        function SelectfixedDropDownValueChanged(app, event)
            if app.SelectfixedDropDown.Value == "None"
                app.RegistrationInstructionsTextArea.Value = '';
                return
            end
            % Get fixed image data number of dimensions
            fixed_Image = cell2mat(app.SavedTable.Image(app.SelectfixedDropDown.Value));
            app.FixedNDims = numel(size(fixed_Image));

            app.RegistrationInstructionsTextArea.Value = '';
        end

        % Value changed function: SelectmovingDropDown
        function SelectmovingDropDownValueChanged(app, event)
            if app.SelectmovingDropDown.Value == "None"
                app.RegistrationInstructionsTextArea.Value = '';
                return
            end
            % Get moving image data number of dimensions
            moving_Image = cell2mat(app.SavedTable.Image(app.SelectmovingDropDown.Value));
            app.MovingNDims = numel(size(moving_Image));

            app.RegistrationInstructionsTextArea.Value = '';
        end

        % Value changed function: UsedifferentparametermapCheckBox
        function UsedifferentparametermapCheckBoxValueChanged(app, event)

            if app.UsedifferentparametermapCheckBox.Value == 1
                app.SelectparameterDropDown.Enable = 'on';
            else
                app.SelectparameterDropDown.Enable = 'off';
            end
            app.SelectparameterDropDown.Value = "None";
            app.RegistrationInstructionsTextArea.Value = '';
        end

        % Value changed function: SelectparameterDropDown
        function SelectparameterDropDownValueChanged(app, event)
            if app.SelectparameterDropDown.Value == "None"
                app.RegistrationInstructionsTextArea.Value = '';
                return
            end
            % Get parameter image data number of dimensions
            parameter_Image = cell2mat(app.SavedTable.Image(app.SelectparameterDropDown.Value));
            app.ParameterNDims = numel(size(parameter_Image));

            app.RegistrationInstructionsTextArea.Value = '';
        end

        % Button pushed function: ImportReferenceAtlasButton
        function ImportReferenceAtlasButtonPushed(app, event)
            
            % Open import options
            selection = uiconfirm(app.BrukKitAlphav0860UIFigure, "Select import option:", "Reference Atlas Import Options", ...
                "Options", ["Download New","Load From Directory","Cancel"], "DefaultOption", 1, "CancelOption", 3);
            switch selection
                case "Download New"
                    % Open atlas importer
                    app.ProgressBar = uiprogressdlg(app.BrukKitAlphav0860UIFigure,'Title',"Please wait",...
                    'Message', "Importing Reference Atlases...", 'Indeterminate','on');
                    drawnow
                    app.ImportReferenceAtlasButton.Enable = 'off';
                    app.AtlasImporterWindow = ReferenceAtlasImporter(app);
                case "Load From Directory"
                    progress = uiprogressdlg(app.BrukKitAlphav0860UIFigure,'Title',"Please wait",...
                    'Message', "Selecting reference atlas folder");
                    drawnow
                    progress.Value = 0.2;
                    % Get directory
                    selected_directory = uigetdir;
                    figure(app.BrukKitAlphav0860UIFigure);

                    loadedCollection = struct();
                    dropdown_items = {'None'};

                    % Check for atlases and import found 
                    waxholm_t2_atlas_Path = strcat(selected_directory, filesep, 'T2w Waxholm Space Atlas - C57BL6J Mouse');
                    if exist(waxholm_t2_atlas_Path, 'dir')
                        progress.Value = 0.4;
                        progress.Message = 'Found T2w Waxholm Space Atlas - C57BL6J Mouse: Importing...';
                        pause(0.5)
                        % Update atlas path
                        waxholm_t2_atlas_Path = strcat(waxholm_t2_atlas_Path, filesep, 'T2WaxholmMouse.nii');
                        % Load atlas using niftiread, permute dims,
                        % pagetranspose and flipud
                        waxholm_t2_atlas.ImageData = niftiread(waxholm_t2_atlas_Path);
                        waxholm_t2_atlas.ImageData = permute(waxholm_t2_atlas.ImageData, [1,3,2]);
                        waxholm_t2_atlas.ImageData = pagetranspose(waxholm_t2_atlas.ImageData);
                        waxholm_t2_atlas.ImageData = flipud(waxholm_t2_atlas.ImageData);
                        waxholm_t2_atlas.ImageData = flip(waxholm_t2_atlas.ImageData, 3);

                        % Get atlas info, update dimensions and rotation
                        % matrix
                        waxholm_info = niftiinfo(waxholm_t2_atlas_Path);
                        waxholm_t2_atlas.VoxDimX = waxholm_info.PixelDimensions(1);
                        waxholm_t2_atlas.VoxDimY = waxholm_info.PixelDimensions(1);
                        waxholm_t2_atlas.SliceThickness = waxholm_info.PixelDimensions(1);
                        waxholm_t2_atlas.SliceGap = 0;
                        waxholm_t2_atlas.Units = "mm mm mm";
                        waxholm_t2_atlas.RotMat = waxholm_info.Transform.T(1:3,1:3);

                        % Save to loaded atlas collection struct, update
                        % drop down items
                        loadedCollection.T2WaxholmMouse = waxholm_t2_atlas;
                        dropdown_items = cat(1, dropdown_items, 'T2w Waxholm Space Atlas - C57BL6J Mouse');
                    end
                    
                    waxholm_t1_atlas_Path = strcat(selected_directory, filesep, 'T1w Waxholm Space Atlas - C57BL6J Mouse');
                    if exist(waxholm_t1_atlas_Path, 'dir')
                        progress.Value = 0.6;
                        progress.Message = 'Found T1w Waxholm Space Atlas - C57BL6J Mouse: Importing...';
                        pause(0.5)
                        % Update atlas path
                        waxholm_t1_atlas_Path = strcat(waxholm_t1_atlas_Path, filesep, 'T1WaxholmMouse.nii');
                        % Load atlas using niftiread, permute dims,
                        % pagetranspose and flipud
                        waxholm_t1_atlas.ImageData = niftiread(waxholm_t1_atlas_Path);
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

                    allen_atlas_Path = strcat(selected_directory, filesep, 'Allen Brain Atlas - Adult Mouse Nissl Grayscale'); 
                    if exist(allen_atlas_Path, 'dir')
                        progress.Value = 0.8;
                        progress.Message = 'Found Allen Brain Atlas - Adult Mouse Nissl Grayscale; Importing...';
                        pause(0.5)
                        % Update atlas path
                        allen_atlas_Path = strcat(allen_atlas_Path, filesep, 'atlasVolume.raw');
                        % Load atlas per Allen Brain Atlas instructions
                        fid = fopen(allen_atlas_Path, 'r', 'l' );
                        allen_atlas.ImageData = fread( fid, prod([528 320 456]), 'uint8');
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

                    if isequal(dropdown_items, {'None'})
                        close(progress);
                        uialert(app.BrukKitAlphav0860UIFigure, 'No reference atlases were found in selected directory.', 'No Reference Atlas Found')
                    else
                        % Update loaded atlas collection, update drop down
                        app.AtlasCollection = loadedCollection;
                        app.SelectAtlasDropDown.Items = dropdown_items;
                        
                        progress.Value = 1;
                        progress.Message = 'Done!';
                        pause(0.5)
                        close(progress);

                        % Display confirmation
                        uiconfirm(app.BrukKitAlphav0860UIFigure, "Reference atlases sucessfully imported.", "","Options",{'OK'},"DefaultOption",1, "Icon","success");
                    end
            end
        end

        % Value changed function: SelectAtlasDropDown
        function SelectAtlasDropDownValueChanged(app, event)
            
            value = app.SelectAtlasDropDown.Value;
            switch value
                case "T2w Waxholm Space Atlas - C57BL6J Mouse"
                    app.ChosenAtlas = app.AtlasCollection.T2WaxholmMouse;
                case "T1w Waxholm Space Atlas - C57BL6J Mouse"
                    app.ChosenAtlas = app.AtlasCollection.T1WaxholmMouse;
                case "Allen Brain Atlas - Adult Mouse Nissl Grayscale"
                    app.ChosenAtlas = app.AtlasCollection.AllenAdultMouseNissl;
            end
        end

        % Button pushed function: RegistrationViewerButton
        function RegistrationViewerButtonPushed(app, event)
            
            % Check for valid selections
            if app.SelectmovingDropDown.Value == "None"|(app.ChooseRegistrationTypeDropDown.Value == "Standard" & app.SelectfixedDropDown.Value == "None")|(app.SelectparameterDropDown.Value == "None" & app.UsedifferentparametermapCheckBox.Value ==1) %#ok<OR2,AND2> 
                uialert(app.BrukKitAlphav0860UIFigure, 'Cannot open Registration Viewer; please select valid registration data.', 'Registration Viewer Error.')
                return
            elseif (app.ChooseRegistrationTypeDropDown.Value == "Reference Atlas" & app.SelectAtlasDropDown.Value == "None") %#ok<AND2>
                uialert(app.BrukKitAlphav0860UIFigure, 'Cannot open Registration Viewer; please import and select valid reference atlas.', 'Registration Viewer Error.')
                return
            end
            
            % Get registration image data based on registration type
            moving_Image = cell2mat(app.SavedTable.Image(app.SelectmovingDropDown.Value));
            switch app.ChooseRegistrationTypeDropDown.Value
                case "Standard"
                    fixed_Image = cell2mat(app.SavedTable.Image(app.SelectfixedDropDown.Value));
                case "Reference Atlas"
                    fixed_Image = app.ChosenAtlas.ImageData;
            end
            
            % Open Registration Viewer 
            if app.UsedifferentparametermapCheckBox.Value == 0
                app.ProgressBar = uiprogressdlg(app.BrukKitAlphav0860UIFigure,'Title',"Please wait",...
                     'Message', "Viewing Registration Data...", 'Indeterminate','on');
                drawnow
                app.RegistrationViewerButton.Enable = 'off';
                app.RegistrationViewerWindow = RegistrationViewer_Basic(app, moving_Image, fixed_Image);
                if app.ChooseRegistrationTypeDropDown.Value == "Reference Atlas"
                    app.RegistrationViewerWindow.FixedImageLabel.Text = "Reference Atlas";
                end
            elseif app.UsedifferentparametermapCheckBox.Value == 1
                parameter_Image = cell2mat(app.SavedTable.Image(app.SelectparameterDropDown.Value));
                app.ProgressBar = uiprogressdlg(app.BrukKitAlphav0860UIFigure,'Title',"Please wait",...
                     'Message', "Viewing Registration Data...", 'Indeterminate','on');
                drawnow
                app.RegistrationViewerButton.Enable = 'off';
                app.RegistrationViewerWindow = RegistrationViewer_Parameter(app, moving_Image, fixed_Image, parameter_Image);
                if app.ChooseRegistrationTypeDropDown.Value == "Reference Atlas"
                    app.RegistrationViewerWindow.FixedImageLabel.Text = "Reference Atlas";
                end
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
            
            % Check for valid selections, registration instructions
            if app.SelectmovingDropDown.Value == "None"|(app.ChooseRegistrationTypeDropDown.Value == "Standard" & app.SelectfixedDropDown.Value == "None")|(app.SelectparameterDropDown.Value == "None" & app.UsedifferentparametermapCheckBox.Value ==1) %#ok<OR2,AND2> 
                uialert(app.BrukKitAlphav0860UIFigure, 'Registration not possible; please select valid registration data.', 'Registration Error.')
                return
            elseif (app.ChooseRegistrationTypeDropDown.Value == "Reference Atlas" & app.SelectAtlasDropDown.Value == "None") %#ok<AND2>
                uialert(app.BrukKitAlphav0860UIFigure, 'Registration not possible; please import and select valid reference atlas.', 'Registration Error.')
                return
            elseif app.RegistrationInstructionsTextArea.Value == ""
                uialert(app.BrukKitAlphav0860UIFigure, 'Registration not possible; no instructions specified.', 'Registration Error.')
                return
            end
            
            progress = uiprogressdlg(app.BrukKitAlphav0860UIFigure,'Title','Please wait', 'Indeterminate','on', 'Message', 'Registering images');
            drawnow

            % Get total registration instructions, remove 0x0 char arrays
            split_instr = split(app.RegistrationInstructionsTextArea.Value, ' ');
            split_instr =  split_instr(~cellfun('isempty',split_instr));

            app.RegisteredImageData = [];
            app.PreRegistrationImage = [];
            app.RegisteredMask = [];
            
            % Get moving, fixed/atlas and parameter image data
            moving_Image = cell2mat(app.SavedTable.Image(app.SelectmovingDropDown.Value));
            switch app.ChooseRegistrationTypeDropDown.Value
                case "Standard"
                    fixed_Image = cell2mat(app.SavedTable.Image(app.SelectfixedDropDown.Value));
                case "Reference Atlas"
                    fixed_Image = app.ChosenAtlas.ImageData;
                    % Resize Atlas image data using moving/atlas larger dimension ratio
                    moving_dims = size(moving_Image);
                    moving_dims = moving_dims(1:2);
                    atlas_dims = size(fixed_Image);
                    atlas_dims = atlas_dims(1:2);
                    resizing_factor = max(moving_dims)/max(atlas_dims);
                    fixed_Image = imresize(fixed_Image, resizing_factor, 'Method', 'bilinear');
                    % Calculate resized atlas properties
                    app.ResizedAtlasProperties.VoxDimX = app.ChosenAtlas.VoxDimX/resizing_factor;
                    app.ResizedAtlasProperties.VoxDimY = app.ChosenAtlas.VoxDimY/resizing_factor;
                    app.ResizedAtlasProperties.SliceThickness = app.ChosenAtlas.SliceThickness/resizing_factor;
                    app.ResizedAtlasProperties.SliceGap = app.ChosenAtlas.SliceGap/resizing_factor;
                    app.ResizedAtlasProperties.RotMat = app.ChosenAtlas.RotMat/resizing_factor;
            end
            if app.UsedifferentparametermapCheckBox.Value == 1
                parameter_Image = cell2mat(app.SavedTable.Image(app.SelectparameterDropDown.Value));
            end
            
            % In case of standard registration, get fixed mask data
            if app.ChooseRegistrationTypeDropDown.Value == "Standard"
                fixed_Mask = cell2mat(app.SavedTable.BrainMask(app.SelectfixedDropDown.Value));
            end
            
            % Work along the specified registration instructions slice by slice
            for i=1:length(split_instr)
                slice_instr = cell2mat(split_instr(i));
                
                % Get moving slice dimension indexes, create numpy array, cat to pre-registration image 
                F_ind = strfind(slice_instr, 'f');
                mov_instr = slice_instr(2:(F_ind-1)); 
                instr_comma_ind = strfind(mov_instr, ',');
                dim3 = mov_instr(2:instr_comma_ind(1)-1);
                dim4 = mov_instr(instr_comma_ind(1)+1:instr_comma_ind(2)-1);
                dim5 = mov_instr(instr_comma_ind(2)+1:end-1);
                switch app.MovingNDims
                    case 5
                        moving_Image_py = py.numpy.array(moving_Image(:,:,str2double(dim3),str2double(dim4),str2double(dim5)));
                        app.PreRegistrationImage = cat(3, app.PreRegistrationImage, moving_Image(:,:,str2double(dim3),str2double(dim4),str2double(dim5)));
                    case 4
                        moving_Image_py = py.numpy.array(moving_Image(:,:,str2double(dim3),str2double(dim4)));
                        app.PreRegistrationImage = cat(3, app.PreRegistrationImage, moving_Image(:,:,str2double(dim3),str2double(dim4)));
                    otherwise
                        moving_Image_py = py.numpy.array(moving_Image(:,:,str2double(dim3)));
                        app.PreRegistrationImage = cat(3, app.PreRegistrationImage, moving_Image(:,:,str2double(dim3)));
                end

                if ~contains(slice_instr, 'p') == 1
                    % Get fixed slice dimension indexes, create numpy array
                    fix_instr = slice_instr((F_ind+1):end);  
                    instr_comma_ind = strfind(fix_instr, ',');
                    dim3 = fix_instr(2:instr_comma_ind(1)-1);
                    dim4 = fix_instr(instr_comma_ind(1)+1:instr_comma_ind(2)-1);
                    dim5 = fix_instr(instr_comma_ind(2)+1:end-1);
                    if app.ChooseRegistrationTypeDropDown.Value == "Standard"
                        switch app.FixedNDims
                            case 5
                                fixed_Image_py = py.numpy.array(fixed_Image(:,:,str2double(dim3),str2double(dim4),str2double(dim5)));
                            case 4
                                fixed_Image_py = py.numpy.array(fixed_Image(:,:,str2double(dim3),str2double(dim4)));
                            otherwise
                                fixed_Image_py = py.numpy.array(fixed_Image(:,:,str2double(dim3)));
                        end
                    else
                        fixed_Image_py = py.numpy.array(fixed_Image(:,:,str2double(dim3)));
                    end
    	            
                    % Register moving onto fixed
                    basic = ["import SimpleITK as sitk", "elastixImageFilter = sitk.ElastixImageFilter();", "elastixImageFilter.SetFixedImage(sitk.GetImageFromArray(fixIm));", "elastixImageFilter.SetMovingImage(sitk.GetImageFromArray(movIm));", "parameterMapVector = sitk.VectorOfParameterMap();", "parameterMapVector.append(sitk.GetDefaultParameterMap('affine'));", "parameterMapVector.append(sitk.GetDefaultParameterMap('bspline'));", "elastixImageFilter.SetParameterMap(parameterMapVector);", "elastixImageFilter.Execute();", "resultArray = sitk.GetArrayFromImage(elastixImageFilter.GetResultImage());"];
                    resultImage_py = pyrun(basic, "resultArray", fixIm = fixed_Image_py, movIm = moving_Image_py);
                    resultImage = double(resultImage_py);

                    % Concatenate to registered data
                    app.RegisteredImageData = cat(3, app.RegisteredImageData, resultImage);
                    
                    % In case of standard registration, concatenate mask
                    if app.ChooseRegistrationTypeDropDown.Value == "Standard"
                        app.RegisteredMask = cat(3, app.RegisteredMask, fixed_Mask(:,:,str2double(dim3)));
                    end
                else
                    % Get fixed slice dimension indexes, create numpy array
                    P_ind = strfind(slice_instr, 'p');
                    fix_instr = slice_instr((F_ind+1):(P_ind-1));  
                    instr_comma_ind = strfind(fix_instr, ',');
                    dim3_fix = fix_instr(2:instr_comma_ind(1)-1);
                    dim4 = fix_instr(instr_comma_ind(1)+1:instr_comma_ind(2)-1);
                    dim5 = fix_instr(instr_comma_ind(2)+1:end-1);
                    if app.ChooseRegistrationTypeDropDown.Value == "Standard"
                        switch app.FixedNDims
                            case 5
                                fixed_Image_py = py.numpy.array(fixed_Image(:,:,str2double(dim3_fix),str2double(dim4),str2double(dim5)));
                            case 4
                                fixed_Image_py = py.numpy.array(fixed_Image(:,:,str2double(dim3_fix),str2double(dim4)));
                            otherwise
                                fixed_Image_py = py.numpy.array(fixed_Image(:,:,str2double(dim3_fix)));
                        end
                    else
                        fixed_Image_py = py.numpy.array(fixed_Image(:,:,str2double(dim3_fix)));
                    end
                    % Get parameter slice dimension indexes, create numpy array
                    par_instr = slice_instr((P_ind+1):end);  
                    instr_comma_ind = strfind(par_instr, ',');
                    dim3 = par_instr(2:instr_comma_ind(1)-1);
                    dim4 = par_instr(instr_comma_ind(1)+1:instr_comma_ind(2)-1);
                    dim5 = par_instr(instr_comma_ind(2)+1:end-1);
                    switch app.ParameterNDims
                        case 5
                            parameter_Image_py = py.numpy.array(parameter_Image(:,:,str2double(dim3),str2double(dim4),str2double(dim5)));
                        case 4
                            parameter_Image_py = py.numpy.array(parameter_Image(:,:,str2double(dim3),str2double(dim4)));
                        otherwise
                            parameter_Image_py = py.numpy.array(parameter_Image(:,:,str2double(dim3)));
                    end

                    % Register moving onto fixed using selected parameter image data registration parameters
                    advanced = ["import SimpleITK as sitk", "elastixImageFilter = sitk.ElastixImageFilter();", "elastixImageFilter.SetFixedImage(sitk.GetImageFromArray(fixIm));", "elastixImageFilter.SetMovingImage(sitk.GetImageFromArray(paramIm));", "parameterMapVector = sitk.VectorOfParameterMap();", "parameterMapVector.append(sitk.GetDefaultParameterMap('affine'));", "parameterMapVector.append(sitk.GetDefaultParameterMap('bspline'));", "elastixImageFilter.SetParameterMap(parameterMapVector);", "elastixImageFilter.Execute();", "transformParameterMap = elastixImageFilter.GetTransformParameterMap();", "transformix = sitk.TransformixImageFilter();", "transformix.SetTransformParameterMap(transformParameterMap);", "transformix.SetMovingImage(sitk.GetImageFromArray(movIm));", "transformix.Execute();", "resultArray = sitk.GetArrayFromImage(transformix.GetResultImage());"];

                    resultImage_py = pyrun(advanced, "resultArray", fixIm = fixed_Image_py, movIm = moving_Image_py, paramIm = parameter_Image_py);
                    resultImage = double(resultImage_py);

                    % Concatenate to registered data and mask
                    app.RegisteredImageData = cat(3, app.RegisteredImageData, resultImage);

                    % In case of standard registration, concatenate mask
                    if app.ChooseRegistrationTypeDropDown.Value == "Standard"
                        app.RegisteredMask = cat(3,app.RegisteredMask, fixed_Mask(:,:,str2double(dim3_fix)));
                    end
                end
            end

            dims_reg = size(app.RegisteredImageData);
            try
                dim3_size = dims_reg(3);
                app.SliceSlider_Registration.Value = 1;
                app.SliceSlider_Registration.Enable = 'on';
                app.SliceSlider_Registration.Limits = [1, dim3_size];
                app.SliceSpinner_Registration.Value = 1;
                app.SliceSpinner_Registration.Enable = 'on';
                app.SliceSpinner_Registration.Limits = [1, dim3_size];
            catch
                app.SliceSlider_Registration.Enable = 'off';
                app.SliceSlider_Registration.Value = 1;
                app.SliceSpinner_Registration.Enable = 'off';
                app.SliceSpinner_Registration.Value = 1;
            end
            app.TurboButton_Registration.Enable = 'on';
            app.GreyscaleButton_Registration.Enable = 'on';
            app.ImageshownSwitch_Registration.Enable = 'on';

            RefreshImageRegistration(app); 

            app.SaveRegisteredDataButton.Enable = 'on';
            if isstring(app.ExportFolderPath)
                app.ExportDataButton_Registration.Enable = 'on';
            end

            % Close the dialog box
            close(progress)
        end

        % Value changed function: SelectTimeAlignmentDropDown
        function SelectTimeAlignmentDropDownValueChanged(app, event)
            
            if app.SelectTimeAlignmentDropDown.Value == "None"
                app.Dim4Spinner_TimeAlignmentReference.Enable = 'off';
                app.Dim4Spinner_TimeAlignmentReference.Value = 1;
                app.Dim5Spinner_TimeAlignmentReference.Enable = 'off';
                app.Dim5Spinner_TimeAlignmentReference.Value = 1;
                app.AlignDataButton.Enable = 'off';
                return
            end
            % Get image date
            try
                working_data = cell2mat(app.SavedTable.Image(app.SelectTimeAlignmentDropDown.Value));
            catch
                working_data = cell2mat(app.ExperimentPropertyTable.(2)(app.SelectTimeAlignmentDropDown.Value));     
            end
            data_dims = size(working_data);
            switch numel(data_dims)
                case 4
                    dim4_size = data_dims(4);
                    app.Dim4Spinner_TimeAlignmentReference.Enable = 'on';
                    app.Dim4Spinner_TimeAlignmentReference.Limits = [1, dim4_size];
                    app.Dim4Spinner_TimeAlignmentReference.Value = 1;
                    app.Dim5Spinner_TimeAlignmentReference.Enable = 'off';
                    app.AlignDataButton.Enable = 'on';
                case 5
                    dim4_size = data_dims(4);
                    app.Dim4Spinner_TimeAlignmentReference.Enable = 'on';
                    app.Dim4Spinner_TimeAlignmentReference.Limits = [1, dim4_size];
                    app.Dim4Spinner_TimeAlignmentReference.Value = 1;
                    dim5_size = data_dims(5);
                    app.Dim5Spinner_TimeAlignmentReference.Enable = 'on';
                    app.Dim5Spinner_TimeAlignmentReference.Limits = [1, dim5_size];
                    app.Dim5Spinner_TimeAlignmentReference.Value = 1;
                    app.AlignDataButton.Enable = 'on';
                otherwise
                    % Disable alignment
                    app.Dim4Spinner_TimeAlignmentReference.Enable = 'off';
                    app.Dim4Spinner_TimeAlignmentReference.Value = 1;
                    app.Dim5Spinner_TimeAlignmentReference.Enable = 'off';
                    app.Dim5Spinner_TimeAlignmentReference.Value = 1;
                    app.AlignDataButton.Enable = 'off';
                    uialert(app.BrukKitAlphav0860UIFigure, 'Time alignment not possible, data must have 4 or 5 dimensions.', 'Dimension error')

            end
        end

        % Button pushed function: AlignDataButton
        function AlignDataButtonPushed(app, event)
            tic
            % Draw progress bar
            progress = uiprogressdlg(app.BrukKitAlphav0860UIFigure,'Title','Please wait', 'Indeterminate','on', 'Message', 'Aligning data');
            drawnow

            % Get image data
            try
                original_data = cell2mat(app.SavedTable.Image(app.SelectTimeAlignmentDropDown.Value));
            catch
                original_data = cell2mat(app.ExperimentPropertyTable.(2)(app.SelectTimeAlignmentDropDown.Value));     
            end
            data_dims = size(original_data);
            
            % Set before data
            app.PreRegistrationImage = original_data;
            % Create empty working array
            working_data = zeros(data_dims);   

            % Set reference points
            dim4_reference = app.Dim4Spinner_TimeAlignmentReference.Value;
            dim5_reference = app.Dim5Spinner_TimeAlignmentReference.Value;
            % Set python instructions
            rigid_alignment = ["import SimpleITK as sitk", "elastixImageFilter = sitk.ElastixImageFilter();", "elastixImageFilter.SetFixedImage(sitk.GetImageFromArray(fixIm));", "elastixImageFilter.SetMovingImage(sitk.GetImageFromArray(movIm));", "elastixImageFilter.SetParameterMap(sitk.GetDefaultParameterMap('rigid'));", "elastixImageFilter.Execute();", "resultArray = sitk.GetArrayFromImage(elastixImageFilter.GetResultImage());"];
            
            switch numel(data_dims)
                % 4D time alignment
                case 4
                    % Go through data, if not reference point then align
                    for i=1:data_dims(3)
                        base = original_data(:,:,i,dim4_reference);
                        parfor j=1:data_dims(4)
                            if j~=dim4_reference
                                displaced = original_data(:,:,i,j);
                                resultImage_py = pyrun(rigid_alignment, "resultArray", fixIm = py.numpy.array(base), movIm = py.numpy.array(displaced));
                                resultImage = double(resultImage_py);
                                % Update working data matrix with aligned data
                                working_data(:,:,i,j) = resultImage;
                            else
                                working_data(:,:,i,j) = original_data(:,:,i,j);
                            end
                        end
                    end
                    % Disable dim5 controls
                    app.Dim5Slider_TimeAlignmentControl.Enable = 'off';
                    app.Dim5Slider_TimeAlignmentControl.Value = 1;
                    app.Dim5Spinner_TimeAlignmentControl.Enable = 'off';
                    app.Dim5Spinner_TimeAlignmentControl.Value = 1;

                % 5D time alignment
                case 5
                    % Go through data, if not reference point then align
                    for i=1:data_dims(3)
                        base = original_data(:,:,i,dim4_reference, dim5_reference);
                        for j=1:data_dims(4)
                            parfor z=1:data_dims(5)
                                if j~=dim4_reference & z ~=dim5_reference %#ok<AND2>
                                    displaced = original_data(:,:,i,j,z);
                                    resultImage_py = pyrun(rigid_alignment, "resultArray", fixIm = py.numpy.array(base), movIm = py.numpy.array(displaced));
                                    resultImage = double(resultImage_py);
                                    % Update working data matrix with aligned data
                                    working_data(:,:,i,j,z) = resultImage;
                                else
                                    working_data(:,:,i,j,z) = original_data(:,:,i,j,z);
                                end
                            end
                        end
                    end
                    % Enable dim4 controls
                    app.Dim5Slider_TimeAlignmentControl.Enable = 'on';
                    app.Dim5Slider_TimeAlignmentControl.Limits = [1, data_dims(5)];
                    app.Dim5Slider_TimeAlignmentControl.Value = 1;
                    app.Dim5Spinner_TimeAlignmentControl.Enable = 'on';
                    app.Dim5Spinner_TimeAlignmentControl.Limits = [1, data_dims(5)];
                    app.Dim5Spinner_TimeAlignmentControl.Value = 1;
            end

            % Update slice controls
            try
                app.SliceSlider_Registration.Value = 1;
                app.SliceSlider_Registration.Enable = 'on';
                app.SliceSlider_Registration.Limits = [1, data_dims(3)];
                app.SliceSpinner_Registration.Value = 1;
                app.SliceSpinner_Registration.Enable = 'on';
                app.SliceSpinner_Registration.Limits = [1, data_dims(3)];
            catch
                app.SliceSlider_Registration.Enable = 'off';
                app.SliceSlider_Registration.Value = 1;
                app.SliceSpinner_Registration.Enable = 'off';
                app.SliceSpinner_Registration.Value = 1;
            end

            % Enable dim4 controls
            app.Dim4Slider_TimeAlignmentControl.Enable = 'on';
            app.Dim4Slider_TimeAlignmentControl.Limits = [1, data_dims(4)];
            app.Dim4Slider_TimeAlignmentControl.Value = 1;
            app.Dim4Spinner_TimeAlignmentControl.Enable = 'on';
            app.Dim4Spinner_TimeAlignmentControl.Limits = [1, data_dims(4)];
            app.Dim4Spinner_TimeAlignmentControl.Value = 1;

            % Set working data as registration data
            app.RegisteredImageData = working_data;
            
            % Enable remaining components, refresh image
            app.TurboButton_Registration.Enable = 'on';
            app.GreyscaleButton_Registration.Enable = 'on';
            app.ImageshownSwitch_Registration.Enable = 'on';

            RefreshImageRegistration(app); 

            app.SaveRegisteredDataButton.Enable = 'on';
            if isstring(app.ExportFolderPath)
                app.ExportDataButton_Registration.Enable = 'on';
            end

            % Close the dialog box
            close(progress)
            toc
        end

        % Value changing function: SliceSlider_Registration
        function SliceSlider_RegistrationValueChanging(app, event)
            event.Source.Value = round(event.Value);
            app.SliceSpinner_Registration.Value = event.Source.Value;

            RefreshImageRegistration(app);
        end

        % Value changed function: SliceSpinner_Registration
        function SliceSpinner_RegistrationValueChanged(app, event)
            app.SliceSlider_Registration.Value = app.SliceSpinner_Registration.Value;

            RefreshImageRegistration(app);
        end

        % Value changing function: Dim4Slider_TimeAlignmentControl
        function Dim4Slider_TimeAlignmentControlValueChanging(app, event)
            event.Source.Value = round(event.Value);
            app.Dim4Spinner_TimeAlignmentControl.Value = event.Source.Value;

            RefreshImageRegistration(app);
        end

        % Value changed function: Dim4Spinner_TimeAlignmentControl
        function Dim4Spinner_TimeAlignmentControlValueChanged(app, event)
            app.Dim4Slider_TimeAlignmentControl.Value = app.Dim4Spinner_TimeAlignmentControl.Value;

            RefreshImageRegistration(app);
        end

        % Value changing function: Dim5Slider_TimeAlignmentControl
        function Dim5Slider_TimeAlignmentControlValueChanging(app, event)
            event.Source.Value = round(event.Value);
            app.Dim5Spinner_TimeAlignmentControl.Value = event.Source.Value;

            RefreshImageRegistration(app);
        end

        % Value changed function: Dim5Spinner_TimeAlignmentControl
        function Dim5Spinner_TimeAlignmentControlValueChanged(app, event)
            app.Dim5Slider_TimeAlignmentControl.Value = app.Dim5Spinner_TimeAlignmentControl.Value;

            RefreshImageRegistration(app); 
        end

        % Selection changed function: ColormapButtonGroup_Registration
        function ColormapButtonGroup_RegistrationSelectionChanged(app, event)

            RefreshImageRegistration(app);
        end

        % Value changed function: ImageshownSwitch_Registration
        function ImageshownSwitch_RegistrationValueChanged(app, event)
            
            RefreshImageRegistration(app);
        end

        % Button pushed function: ExportDataButton_Registration
        function ExportDataButton_RegistrationPushed(app, event)
            
            switch app.ChooseRegistrationTypeDropDown.Value
                case "Standard"
                    ExportImageDataRegistration(app, 'Standard Registration');
                case "Reference Atlas"
                    ExportImageDataRegistration(app, 'Atlas Registration');
                case "Time-Series Alignment"
                    ExportImageDataRegistration(app, 'Time Series Alignment');
            end
 
            uiconfirm(app.BrukKitAlphav0860UIFigure, "Registered image data exported in NIfTI format.", "","Options",{'OK'},"DefaultOption",1, "Icon","success");
        end

        % Button pushed function: SaveRegisteredDataButton
        function SaveRegisteredDataButtonPushed(app, event)
            SaveData(app, 'Registration');
        end

        % Menu selected function: ResetViewMenu_Registration
        function ResetViewMenu_RegistrationSelected(app, event)
            
            % Reset zoom
            app.UIAxes_Registration.XLim = [-inf inf];
            app.UIAxes_Registration.YLim = [-inf inf];
        end

        % Menu selected function: ResetInstructionsMenu
        function ResetInstructionsMenuSelected(app, event)
            app.RegistrationInstructionsTextArea.Value = '';
        end

        % Value changed function: ChooseMapTypeDropDown
        function ChooseMapTypeDropDownValueChanged(app, event)
            switch app.ChooseMapTypeDropDown.Value
                case "DSC"
                    app.DSCMappingOptionsPanel.Visible = 'on';
                    app.T1OptionsPanel.Visible = 'off';
                    app.T2OptionsPanel.Visible = 'off';
                    % app.OptimizationOptionsPanel.Visible = 'off';
                    app.FAIRpASLMappingoptionsPanel.Visible = 'off';
                case "T2"
                    app.DSCMappingOptionsPanel.Visible = 'off';
                    app.T1OptionsPanel.Visible = 'off';
                    app.T2OptionsPanel.Visible = 'on';
                    % app.OptimizationOptionsPanel.Visible = 'on';
                    app.FAIRpASLMappingoptionsPanel.Visible = 'off';
                    % t2Position = app.T2OptionsPanel.Position;
                    % optimizationPosition = app.OptimizationOptionsPanel.Position;
                    % optimizationPosition(2) = t2Position(2)-optimizationPosition(4);
                    % app.OptimizationOptionsPanel.Position = optimizationPosition;
                case "T1"
                    app.DSCMappingOptionsPanel.Visible = 'off';
                    app.T1OptionsPanel.Visible = 'on';
                    app.T2OptionsPanel.Visible = 'off';
                    app.CalculateT1MapButton.Visible = 'on';
                    % app.OptimizationOptionsPanel.Visible = 'on';
                    app.FAIRpASLMappingoptionsPanel.Visible = 'off';
                    % t1Position = app.T1OptionsPanel.Position;
                    % optimizationPosition = app.OptimizationOptionsPanel.Position;
                    % optimizationPosition(2) = t1Position(2)-optimizationPosition(4);
                    % app.OptimizationOptionsPanel.Position = optimizationPosition;
                case "pASL"
                    app.DSCMappingOptionsPanel.Visible = 'off';
                    app.T1OptionsPanel.Visible = 'on';
                    app.T2OptionsPanel.Visible = 'off';
                    app.CalculateT1MapButton.Visible = 'off';
                    % app.OptimizationOptionsPanel.Visible = 'on';
                    t1Position = app.T1OptionsPanel.Position;
                    pASLPosition = app.OptimizationOptionsPanel.Position;
                    pASLPosition(2) = t1Position(2)-pASLPosition(4);
                    app.FAIRpASLMappingoptionsPanel.Position = pASLPosition;
                    app.FAIRpASLMappingoptionsPanel.Visible = 'on';
                    % aslPosition = app.FAIRpASLMappingoptionsPanel.Position;
                    % optimizationPosition = app.OptimizationOptionsPanel.Position;
                    % optimizationPosition(2) = aslPosition(2)-optimizationPosition(4);
                    % app.OptimizationOptionsPanel.Position = optimizationPosition;
            end
        end

        % Value changed function: SelectPreMapDropDown
        function SelectPreMapDropDownValueChanged(app, event)
            value = app.SelectPreMapDropDown.Value;

            % If 'None' is selected, disable UIaxis controls
            if value == "None"
                cla(app.UIAxes_PreMap);
                app.SliceSpinner_PreMap.Enable = 'off';
                app.SliceSlider_PreMap.Enable = 'off';
                app.Dim4Spinner_PreMap.Enable = 'off';
                app.Dim5Spinner_PreMap.Enable = 'off';
                return
            end
            
            % Get selected experiment image data from loaded experiments or saved registration experiments
            try
                app.PreMapImageData = cell2mat(app.SavedTable.Image(value));
            catch
                try
                    app.PreMapImageData = cell2mat(app.ExperimentPropertyTable.(2)(value));
                catch
                end
            end
            
            % Initialize default slider values
            app.Dim5Spinner_PreMap.Value = 1;
            app.Dim4Spinner_PreMap.Value = 1;
            app.SliceSlider_PreMap.Value = 1;
            app.SliceSpinner_PreMap.Value = 1;
            app.AIFExtractionSliceSpinner.Value = 1;

            % Get data dimension sizes, set slider limits
            app.ExpDimsPreMap= size(app.PreMapImageData);
            dim3_size = app.ExpDimsPreMap(3);
            app.SliceSlider_PreMap.Limits = [1, dim3_size];
            app.SliceSpinner_PreMap.Limits = [1, dim3_size];
            app.AIFExtractionSliceSpinner.Limits = [1, dim3_size];
            
            switch numel(app.ExpDimsPreMap)
                case 4
                    dim4_size = app.ExpDimsPreMap(4);
                    app.Dim4Spinner_PreMap.Enable = 'on';
                    app.Dim5Spinner_PreMap.Enable = 'off';
                    app.Dim4Spinner_PreMap.Limits = [1, dim4_size];
                    app.PermuteDimensionsMenu_PreMap.Enable = 'on';
                    app.PermuteMenu_3_4_PreMap.Enable ='on';
                    app.PermuteMenu_3_5_PreMap.Enable ='off';
                    app.PermuteMenu_4_5_PreMap.Enable ='off';
                case 5
                    dim4_size = app.ExpDimsPreMap(4);
                    app.Dim4Spinner_PreMap.Enable = 'on';
                    app.Dim4Spinner_PreMap.Limits = [1, dim4_size];
                    dim5_size = app.ExpDimsPreMap(5);
                    app.Dim5Spinner_PreMap.Enable = 'on';
                    app.Dim5Spinner_PreMap.Limits = [1, dim5_size];
                    app.PermuteDimensionsMenu_PreMap.Enable = 'on';
                    app.PermuteMenu_3_4_PreMap.Enable ='on';
                    app.PermuteMenu_3_5_PreMap.Enable ='on';
                    app.PermuteMenu_4_5_PreMap.Enable ='on';
                case 3
                    app.Dim4Spinner_PreMap.Enable = 'off';
                    app.Dim5Spinner_PreMap.Enable = 'off';
                    app.PermuteDimensionsMenu_PreMap.Enable = 'off';
                    app.PermuteMenu_3_4_PreMap.Enable ='off';
                    app.PermuteMenu_3_5_PreMap.Enable ='off';
                    app.PermuteMenu_4_5_PreMap.Enable ='off';
            end
            
            % Lookup TE values from ExperimentTable
            try
                expTEvalues = nonzeros(app.TEvalues(app.SavedTable.OrigIndex(value),:));
            catch
                expTEvalues = nonzeros(app.TEvalues(find(strcmp(app.ExperimentPropertyTable{:,'Experiment ID'}, value)),:));
            end
            if isempty(expTEvalues)
                app.TEvaluesText.Value = "";
            else
                app.TEvaluesText.Value = erase(mat2str(expTEvalues), ["[";"]"]);
            end

            % Lookup TR values from ExperimentTable
            try
                expTRvalues = nonzeros(app.TRvalues(app.SavedTable.OrigIndex(value),:));
            catch
                expTRvalues = nonzeros(app.TRvalues(find(strcmp(app.ExperimentPropertyTable{:,'Experiment ID'}, value)),:));
            end
            if isempty(expTRvalues)
                app.TRvaluesText.Value = "";
            else
                app.TRvaluesText.Value = erase(mat2str(expTRvalues), ["[";"]"]);
            end

            % Lookup TI values from ExperimentTable
            try
                expTIvalues = nonzeros(app.TIvalues(app.SavedTable.OrigIndex(value),:));
            catch
                expTIvalues = nonzeros(app.TIvalues(find(strcmp(app.ExperimentPropertyTable{:,'Experiment ID'}, value)),:));
            end
            if isempty(expTIvalues)
                app.TIvaluesText.Value = "";
            else
                app.TIvaluesText.Value = erase(mat2str(expTIvalues), ["[";"]"]);
            end


            % Enable slice controls
            app.SliceSlider_PreMap.Enable = 'on';
            app.SliceSpinner_PreMap.Enable = 'on';
            
            % Display sequence
            RefreshImagePreMap(app);
            
            % Set interactions of preview uiaxes
            app.UIAxes_PreMap.Interactions = [regionZoomInteraction zoomInteraction];       
        end

        % Value changing function: SliceSlider_PreMap
        function SliceSlider_PreMapValueChanging(app, event)
            event.Source.Value = round(event.Value);
            app.SliceSpinner_PreMap.Value = event.Source.Value;

            RefreshImagePreMap(app);

            % Reset zoom
            app.UIAxes_PreMap.XLim = [-inf inf];
            app.UIAxes_PreMap.YLim = [-inf inf];         
        end

        % Value changed function: SliceSpinner_PreMap
        function SliceSpinner_PreMapValueChanged(app, event)
            event.Source.Value = round(event.Value);
            app.SliceSlider_PreMap.Value = event.Source.Value;

            RefreshImagePreMap(app);

            % Reset zoom
            app.UIAxes_PreMap.XLim = [-inf inf];
            app.UIAxes_PostMap.YLim = [-inf inf];
        end

        % Value changed function: Dim4Spinner_PreMap
        function Dim4Spinner_PreMapValueChanged(app, event)
            RefreshImagePreMap(app);

            % Reset zoom
            app.UIAxes_PreMap.XLim = [-inf inf];
            app.UIAxes_PreMap.YLim = [-inf inf];
        end

        % Value changed function: Dim5Spinner_PreMap
        function Dim5Spinner_PreMapValueChanged(app, event)
            RefreshImagePreMap(app);

            % Reset zoom
            app.UIAxes_PreMap.XLim = [-inf inf];
            app.UIAxes_PreMap.YLim = [-inf inf];
        end

        % Menu selected function: RotateMenu_PreMap
        function RotateMenu_PreMapSelected(app, event)
            % Rotate image data, show image
            app.PreMapImageData = rot90(app.PreMapImageData, -1);
            
            RefreshImagePreMap(app);
        end

        % Menu selected function: FlipVerticallyMenu_PreMap
        function FlipVerticallyMenu_PreMapSelected(app, event)
            % Flip image data, show image
            app.PreMapImageData = flipud(app.PreMapImageData);
            
            RefreshImagePreMap(app);
        end

        % Menu selected function: FlipHorizontallyMenu_PreMap
        function FlipHorizontallyMenu_PreMapSelected(app, event)
            % Flip image data, show image
            app.PreMapImageData = fliplr(app.PreMapImageData);
            
            RefreshImagePreMap(app);
        end

        % Menu selected function: ResetViewMenu_PreMap
        function ResetViewMenu_PreMapSelected(app, event)
            % Reset zoom
            app.UIAxes_PreMap.XLim = [-inf inf];
            app.UIAxes_PreMap.YLim = [-inf inf];

            RefreshImagePreMap(app);
        end

        % Menu selected function: PermuteMenu_3_4_PreMap
        function PermuteMenu_3_4_PreMapSelected(app, event)
            switch numel(app.ExpDimsPreMap)
                case 4
                    app.PreMapImageData = permute(app.PreMapImageData, [1,2,4,3]);
                case 5
                    app.PreMapImageData = permute(app.PreMapImageData, [1,2,4,3,5]);
            end
            app.ExpDimsPreMap = size(app.PreMapImageData);

            temp_limits = app.SliceSpinner_PreMap.Limits;
            temp_value = app.SliceSpinner_PreMap.Value;

            app.SliceSpinner_PreMap.Limits = app.Dim4Spinner_PreMap.Limits;
            app.SliceSpinner_PreMap.Value = app.Dim4Spinner_PreMap.Value;
            app.SliceSlider_PreMap.Limits = app.Dim4Spinner_PreMap.Limits;
            app.SliceSlider_PreMap.Value = app.Dim4Spinner_PreMap.Value;
            app.Dim4Spinner_PreMap.Limits = temp_limits;
            app.Dim4Spinner_PreMap.Value = temp_value;

            RefreshImagePreMap(app);
        end

        % Menu selected function: PermuteMenu_3_5_PreMap
        function PermuteMenu_3_5_PreMapSelected(app, event)
            app.PreMapImageData = permute(app.PreMapImageData, [1,2,5,4,3]);
            app.ExpDimsPreMap = size(app.PreMapImageData);

            temp_value_slice = app.SliceSpinner_PreMap.Value;
            temp_limits_slice = app.SliceSpinner_PreMap.Limits;

            app.SliceSpinner_PreMap.Limits = app.Dim5Spinner_PreMap.Limits;
            app.SliceSpinner_PreMap.Value = app.Dim5Spinner_PreMap.Value;
            app.SliceSlider_PreMap.Limits = app.Dim5Spinner_PreMap.Limits;
            app.SliceSlider_PreMap.Value = app.Dim5Spinner_PreMap.Value;
            app.Dim5Spinner_PreMap.Limits = temp_limits_slice;
            app.Dim5Spinner_PreMap.Value = temp_value_slice;

            RefreshImagePreMap(app);
        end

        % Menu selected function: PermuteMenu_4_5_PreMap
        function PermuteMenu_4_5_PreMapSelected(app, event)
            app.PreMapImageData = permute(app.PreMapImageData, [1,2,3,5,4]);
            app.PreMapImageData = app.PreMapImageData;
            app.ExpDimsPreMap = size(app.PreMapImageData);

            temp_limits = app.Dim5Spinner_PreMap.Limits;
            temp_value = app.Dim5Spinner_PreMap.Value;

            app.Dim5Spinner_PreMap.Limits = app.Dim4Spinner_PreMap.Limits;
            app.Dim5Spinner_PreMap.Value = app.Dim4Spinner_PreMap.Value;
            app.Dim4Spinner_PreMap.Limits = temp_limits;
            app.Dim4Spinner_PreMap.Value = temp_value;

            RefreshImagePreMap(app);
        end

        % Button pushed function: AdvancedSettingsButton
        function AdvancedSettingsButtonPushed(app, event)
            app.ProgressBar = uiprogressdlg(app.BrukKitAlphav0860UIFigure,'Title',"Please wait",...
                 'Message', "Adjusting DSC Mapping Options...", 'Indeterminate','on');
            drawnow
            app.AdvancedSettingsButton.Enable = 'off';
            app.DSCSettingsWindow = DSCSettings(app, app.DSCOptions);
        end

        % Button pushed function: CalculateDSCmapsButton
        function CalculateDSCmapsButtonPushed(app, event)
            
            % Draw progress box
            progress = uiprogressdlg(app.BrukKitAlphav0860UIFigure,'Title',"Please wait",...
                 'Message', "Retrieving data for DSC mapping");
            drawnow

            % Set options display to 1
            app.DSCOptions.display = 1;
            app.DSCOptions.aif.nSlice = app.AIFExtractionSliceSpinner.Value;
            if app.SVDButton.Value == 1
                app.DSCOptions.deconv.method = {'SVD'};
            elseif app.cSVDButton.Value == 1
                app.DSCOptions.deconv.method = {'cSVD'};
            elseif app.oSVDButton.Value == 1
                app.DSCOptions.deconv.method = {'oSVD'};
            end
            
            % Get volumetric data and sequence parameters for map
            % calculation
            progress.Value = 0.2;
            pause(0.5);
            drop_Value = app.SelectPreMapDropDown.Value; 
            try
                TE = app.SavedTable.TE(drop_Value);
                TR = app.SavedTable.TR(drop_Value);
            catch
                TE = app.ExperimentPropertyTable.(3)(drop_Value);
                TR = app.ExperimentPropertyTable.(4)(drop_Value);
            end
            
            % Calculate and display DSC maps
            progress.Value = 0.4;
            progress.Message = "Calculating maps...";
            if numel(size(app.PreMapImageData)) == 4   
                [cbv,cbf,mtt,cbv_lc,ttp,mask,aif,conc,s0]=DSC_mri_core(app.PreMapImageData, TE, TR, app.DSCOptions); %#ok<ASGLU> 
                
                app.MTTData = struct2array(mtt);
                app.MTTData(isnan(app.MTTData)) = 0;
                app.MTTData(app.MTTData == inf) = 0;
                app.CBFData = struct2array(cbf);
                app.CBFData.map(app.CBFData.map == inf) = 0;
                app.CBVData = cbv;
                app.CBVData(app.CBVData == inf) = 0;
                app.CBVLCData = cbv_lc;
                app.CBVLCData(app.CBVLCData == inf) = 0;

                switch app.DSCMapDropDown.Value
                    case 'CBF'
                        app.PostMapImageData = app.CBFData.map;
                    case 'CBV'
                        app.PostMapImageData = app.CBVData;
                    case 'MTT'
                        app.PostMapImageData = app.MTTData;
                end
                data_dims = size(app.PostMapImageData);
                app.SliceSpinner_PostMap.Limits = [1, data_dims(3)];              
                app.SliceSpinner_PostMap.Enable = 'on';
                app.SliceSpinner_PostMap.Value = 1;
                app.SliceSlider_PostMap.Limits = [1, data_dims(3)];              
                app.SliceSlider_PostMap.Enable = 'on';
                app.SliceSlider_PostMap.Value = 1;
            else
                uialert(app.BrukKitAlphav0860UIFigure, 'DSC map calculation not possible, data must be 4-dimensional.', 'Dimension error')
            end
            
            % Set interactions on UIAxes
            app.UIAxes_PreMap.Interactions = [regionZoomInteraction zoomInteraction];
            
            app.DSCMapDropDown.Enable = 'on';
            app.TurboButton_PostMap.Enable = 'on';
            app.GreyscaleButton_PostMap.Enable = 'on';
            app.ContrastSlider_PostMap.Enable = 'on';
            app.BrightnessSlider_PostMap.Enable = 'on';

            app.SaveDataButton_Map.Enable = 'on';
            if isstring(app.ExportFolderPath)
                app.ExportDataButton_Map.Enable = 'on';
            end
            
            % Display maps
            progress.Value = 0.8;
            progress.Message = "Displaying mapping results";
            pause(0.5);
            RefreshImagePostMap(app);

            % close the dialog box
            progress.Value = 1;
            progress.Message = "Done!";
            pause(0.5);
            close(progress);
        end

        % Value changed function: DSCMapDropDown
        function DSCMapDropDownValueChanged(app, event)
            switch app.DSCMapDropDown.Value
                case "CBF"
                    app.PostMapImageData = app.CBFData.map;
                case "CBV"
                    app.PostMapImageData = app.CBVData;
                case "MTT"
                    app.PostMapImageData = app.MTTData;
            end
            
            % Display chosen map image based on method selected
            RefreshImagePostMap(app);
            
            % Reset zoom and comparation data
            app.UIAxes_PreMap.XLim = [-inf inf];
            app.UIAxes_PreMap.YLim = [-inf inf];
        end

        % Button pushed function: ResettodefaultsButton
        function ResettodefaultsButtonPushed(app, event)
            app.fxToleranceEditField.Value = 1.0e-3;
            app.OptimalityToleranceEditField.Value = 1.0e-3;
            app.StepToleranceEditField.Value = 1.0e-3;
            app.dfStepSizeEditField.Value = 1.0e-4;
            app.MaxNrofEvaluationsEditField.Value = 1.0e+1;
            app.MaxNrofIterationsEditField.Value = 1.0e+1;
        end

        % Button pushed function: CalculateT1MapButton
        function CalculateT1MapButtonPushed(app, event)
            
            tvalues = str2double(split(app.TRvaluesText.Value, ";")');
            ivalues = str2double(split(app.TIvaluesText.Value, ";")');

            if ~(length(tvalues) == size(app.PreMapImageData, 4) || length(ivalues) == size(app.PreMapImageData, 4))
                uialert(app.BrukKitAlphav0860UIFigure, 'Number of TR or TI values not equal to number of echoes. Please permute dimensions in following order: x,y,z,nEcho.', ...
                    'Dimension error');
                return
            end
            if ~isnan(ivalues(1)) && length(tvalues) ~= 1
                uialert(app.BrukKitAlphav0860UIFigure, 'Please use a single TR value for inversion recovery T1 maps', ...
                    'Function error');
                return
            end

            progress = uiprogressdlg(app.BrukKitAlphav0860UIFigure,'Title',"Please wait",...
                 'Message', "Calculating T1 maps...", "Indeterminate", "on");
            drawnow

            T1raw_reordered = permute(app.PreMapImageData,[3 1 2 4]); % reorder 4-D matrix to have echos as the last dimension (slice, x, y, echos)
            [z, x, y, ~] = size(T1raw_reordered);
            T1raw_reordered_reshaped = reshape(T1raw_reordered,[],size(T1raw_reordered,4));
            % tmax = max(tvalues);

            % try
            %     opts = optimoptions(@lsqcurvefit,'FunctionTolerance',app.fxToleranceEditField.Value, ...
            %         'OptimalityTolerance',app.OptimalityToleranceEditField.Value, ...
            %         'StepTolerance',app.StepToleranceEditField.Value, ...
            %         'FiniteDifferenceStepSize',app.dfStepSizeEditField.Value, ...
            %         'MaxFunctionEvaluations',app.MaxNrofEvaluationsEditField.Value, ...
            %         'MaxIterations',app.MaxNrofIterationsEditField.Value,'Display','none');
            % catch
            %     uialert(app.BrukKitAlphav0860UIFigure, 'App failed to set desired optimization options. Please check settings.', ...
            %         'Optimization settings error');
            %     return
            % end

            % use parallel processing for faster fitting
            % delete(gcp('nocreate'));
            % parpool("local");
            
            coeffs = CalculateT1Map_mex(T1raw_reordered_reshaped,tvalues,ivalues);             

            % if isnan(ivalues(1))
            %     fun = @(coeffs,tvalues)coeffs(1)*(1-exp(-tvalues/coeffs(2))); 
            %     coeffs0 = [1,1];
            %     coeffs = zeros(length(T1raw_reordered_reshaped),2);
            % 
            %     parfor br = 1:length(T1raw_reordered_reshaped)
            %         if max(T1raw_reordered_reshaped(br,:)) ~= 0
            %             T1raw_reordered_reshaped(br,:) = T1raw_reordered_reshaped(br,:) / max(T1raw_reordered_reshaped(br,:));
            %             coeffs(br,:) = lsqcurvefit(fun,coeffs0,tvalues,T1raw_reordered_reshaped(br,:), [0 0], ...
            %             [1 2*tmax], opts);
            %         end
            %     end
            % else
            %     fun = @(coeffs,ivalues)coeffs(1)*abs((1-2*exp(-ivalues/coeffs(2)))); 
            %     coeffs0 = [1,1];
            %     coeffs = zeros(length(T1raw_reordered_reshaped),2);
            % 
            %     parfor br = 1:length(T1raw_reordered_reshaped)
            %         if max(T1raw_reordered_reshaped(br,:)) ~= 0
            %             T1raw_reordered_reshaped(br,:) = T1raw_reordered_reshaped(br,:) / max(T1raw_reordered_reshaped(br,:));
            %             coeffs(br,:) = lsqcurvefit(fun,coeffs0,ivalues,T1raw_reordered_reshaped(br,:), [0 0], ...
            %             [1 2*tmax], opts);
            %         end
            %     end
            % end

            % delete(gcp('nocreate'));

            T1map_calculated_stack = reshape(squeeze(coeffs(:,2)), z, x, y);
            app.PostMapImageData = permute(T1map_calculated_stack,[2 3 1]);

            data_dims = size(app.PostMapImageData);
            app.SliceSpinner_PostMap.Limits = [1, data_dims(3)];              
            app.SliceSpinner_PostMap.Enable = 'on';
            app.SliceSpinner_PostMap.Value = 1;
            app.SliceSlider_PostMap.Limits = [1, data_dims(3)];              
            app.SliceSlider_PostMap.Enable = 'on';
            app.SliceSlider_PostMap.Value = 1;

            app.TurboButton_PostMap.Enable = 'on';
            app.GreyscaleButton_PostMap.Enable = 'on';
            app.ContrastSlider_PostMap.Enable = 'on';
            app.BrightnessSlider_PostMap.Enable = 'on';

            app.SaveDataButton_Map.Enable = 'on';
            if isstring(app.ExportFolderPath)
                app.ExportDataButton_Map.Enable = 'on';
            end

            progress.Message = "Done!";
            pause(0.5);
            close(progress);
            
            RefreshImagePostMap(app);
        end

        % Button pushed function: CalculateT2MapButton
        function CalculateT2MapButtonPushed(app, event)

            tvalues = str2double(split(app.TEvaluesText.Value, ";")');

            if size(tvalues) ~= size(app.PreMapImageData, 4)
                uialert(app.BrukKitAlphav0860UIFigure, 'Number of TE values not equal to number of echoes. Please permute dimensions in following order: x,y,z,nEcho.', ...
                    'Dimension error');
                return
            end

            progress = uiprogressdlg(app.BrukKitAlphav0860UIFigure,'Title',"Please wait",...
                 'Message', "Calculating T2 maps...", "Indeterminate", "on");
            drawnow

            T2raw_reordered = permute(app.PreMapImageData,[3 1 2 4]); % reorder 4-D matrix to have echos as the last dimension (slice, x, y, echos)
            [z, x, y, ~] = size(T2raw_reordered);
            T2raw_reordered_reshaped = reshape(T2raw_reordered,[],size(T2raw_reordered,4));
            % tmax = max(tvalues);
         
            % fun = @(coeffs,tvalues)coeffs(1)*exp(-tvalues/coeffs(2)); 
            % coeffs0 = [1,0.03];
            % coeffs = zeros(length(T2raw_reordered_reshaped),2);

            % try
            %     opts = optimoptions(@lsqcurvefit,'FunctionTolerance',app.fxToleranceEditField.Value, ...
            %         'OptimalityTolerance',app.OptimalityToleranceEditField.Value, ...
            %         'StepTolerance',app.StepToleranceEditField.Value, ...
            %         'FiniteDifferenceStepSize',app.dfStepSizeEditField.Value, ...
            %         'MaxFunctionEvaluations',app.MaxNrofEvaluationsEditField.Value, ...
            %         'MaxIterations',app.MaxNrofIterationsEditField.Value,'Display','none');
            % catch
            %     uialert(app.BrukKitAlphav0860UIFigure, 'App failed to set desired optimization options. Please check settings.', ...
            %         'Optimization settings error');
            %     return
            % end

            coeffs = CalculateT2Map_mex(T2raw_reordered_reshaped,tvalues);
            % use parallel processing for faster fitting
            % delete(gcp('nocreate'));
            % parpool("local");
            % progress.Message = "Calculating T2 maps... This might take awhile.";
            % 
            % parfor br = 1:length(T2raw_reordered_reshaped)
            %     if max(T2raw_reordered_reshaped(br,:)) ~= 0
            %         T2raw_reordered_reshaped(br,:) = T2raw_reordered_reshaped(br,:) / max(T2raw_reordered_reshaped(br,:));
            %         coeffs(br,:) = lsqcurvefit(fun,coeffs0,tvalues,T2raw_reordered_reshaped(br,:), [0 0], ...
            %         [1 2*tmax], opts);
            %     end
            % end
            % 
            % delete(gcp('nocreate'));

            T2map_calculated_stack = reshape(squeeze(coeffs(:,2)), z, x, y);
            app.PostMapImageData = permute(T2map_calculated_stack,[2 3 1]);

            data_dims = size(app.PostMapImageData);
            app.SliceSpinner_PostMap.Limits = [1, data_dims(3)];              
            app.SliceSpinner_PostMap.Enable = 'on';
            app.SliceSpinner_PostMap.Value = 1;
            app.SliceSlider_PostMap.Limits = [1, data_dims(3)];              
            app.SliceSlider_PostMap.Enable = 'on';
            app.SliceSlider_PostMap.Value = 1;

            app.TurboButton_PostMap.Enable = 'on';
            app.GreyscaleButton_PostMap.Enable = 'on';
            app.ContrastSlider_PostMap.Enable = 'on';
            app.BrightnessSlider_PostMap.Enable = 'on';

            app.SaveDataButton_Map.Enable = 'on';
            if isstring(app.ExportFolderPath)
                app.ExportDataButton_Map.Enable = 'on';
            end

            progress.Message = "Done!";
            pause(0.5);
            close(progress);
            
            RefreshImagePostMap(app);
        end

        % Button pushed function: CalculatepASLMapButton
        function CalculatepASLMapButtonPushed(app, event)
            
            tvalues = str2double(split(app.TRvaluesText.Value, ";")');
            tvalues = tvalues(1:2:end);
            ivalues = str2double(split(app.TIvaluesText.Value, ";")');

            if ~(length(ivalues) == size(app.PreMapImageData, 4) || length(ivalues) == size(app.PreMapImageData, 5))
                uialert(app.BrukKitAlphav0860UIFigure, 'Number of TR or TI values not equal to number of echoes. Please permute dimensions in following order: x,y,z,nEcho.', ...
                    'Dimension error');
                return
            end

            progress = uiprogressdlg(app.BrukKitAlphav0860UIFigure,'Title',"Please wait",...
                 'Message', "Calculating pASL maps...", "Indeterminate", "on");
            drawnow

            switch numel(size(app.PreMapImageData))
                case 4
                    switch app.SliceSelectiveFirstButton.Value
                        case true
                            T1rawSS = app.PreMapImageData(:,:,1,:);
                            T1rawNS = app.PreMapImageData(:,:,2,:);
                        case false
                            T1rawSS = app.PreMapImageData(:,:,2,:);
                            T1rawNS = app.PreMapImageData(:,:,1,:);
                    end
                case 5
                    switch app.SliceSelectiveFirstButton.Value
                        case true
                            T1rawSS = squeeze(app.PreMapImageData(:,:,:,1,:));
                            T1rawNS = squeeze(app.PreMapImageData(:,:,:,2,:));
                        case false
                            T1rawSS = squeeze(app.PreMapImageData(:,:,:,2,:));
                            T1rawNS = squeeze(app.PreMapImageData(:,:,:,1,:));
                    end
                otherwise
            end
           
            T1rawSS_reordered = permute(T1rawSS,[3 1 2 4]); % reorder 4-D matrix to have echos as the last dimension (slice, x, y, echos)
            T1rawNS_reordered = permute(T1rawNS,[3 1 2 4]);
            [z, x, y, ~] = size(T1rawSS_reordered);
            T1rawSS_reordered_reshaped = reshape(T1rawSS_reordered,[],size(T1rawSS_reordered,4));
            T1rawNS_reordered_reshaped = reshape(T1rawNS_reordered,[],size(T1rawNS_reordered,4));
            T1blood = app.BloodT1sEditField.Value;

            % try
            %     opts = optimoptions(@lsqcurvefit,'FunctionTolerance',app.fxToleranceEditField.Value, ...
            %         'OptimalityTolerance',app.OptimalityToleranceEditField.Value, ...
            %         'StepTolerance',app.StepToleranceEditField.Value, ...
            %         'FiniteDifferenceStepSize',app.dfStepSizeEditField.Value, ...
            %         'MaxFunctionEvaluations',app.MaxNrofEvaluationsEditField.Value, ...
            %         'MaxIterations',app.MaxNrofIterationsEditField.Value,'Display','none');
            % catch
            %     uialert(app.BrukKitAlphav0860UIFigure, 'App failed to set desired optimization options. Please check settings.', ...
            %         'Optimization settings error');
            %     return
            % end

            perf = CalculateASLMap_mex(T1rawSS_reordered_reshaped,T1rawNS_reordered_reshaped,tvalues,ivalues,T1blood);
            % tmax = max(tvalues);
            % use parallel processing for faster fitting
            % delete(gcp('nocreate'));
            % parpool("local");
            % progress.Message = "Calculating T1 maps for slice selective experiment... This might take awhile.";
            % 
            % fun = @(coeffs,ivalues)coeffs(1)*abs((1-2*exp(-ivalues/coeffs(2)))); 
            % coeffs0 = [1,1];
            % coeffsSS = zeros(length(T1rawSS_reordered_reshaped),2);
            % coeffsNS = zeros(length(T1rawNS_reordered_reshaped),2);
            % perf = zeros(length(T1rawNS_reordered_reshaped),1);
            % 
            % 
            % parfor br = 1:length(T1rawSS_reordered_reshaped)
            %     if max(T1rawSS_reordered_reshaped(br,:)) ~= 0
            %         T1rawSS_reordered_reshaped(br,:) = T1rawSS_reordered_reshaped(br,:) / max(T1rawSS_reordered_reshaped(br,:));
            %         coeffsSS(br,:) = lsqcurvefit(fun,coeffs0,ivalues,T1rawSS_reordered_reshaped(br,:), [0 0], ...
            %         [1 2*tmax], opts);
            %     end
            % end
            % 
            % progress.Message = "Calculating T1 maps for non-selective experiment... This might take awhile.";
            % 
            % parfor br = 1:length(T1rawNS_reordered_reshaped)
            %     if max(T1rawNS_reordered_reshaped(br,:)) ~= 0
            %         T1rawNS_reordered_reshaped(br,:) = T1rawNS_reordered_reshaped(br,:) / max(T1rawNS_reordered_reshaped(br,:));
            %         coeffsNS(br,:) = lsqcurvefit(fun,coeffs0,ivalues,T1rawNS_reordered_reshaped(br,:), [0 0], ...
            %         [1 2*tmax], opts);
            %     end
            % end
            % 
            % progress.Message = "Calculating CBF maps... Almost there.";
            % 
            % parfor br = 1:length(T1rawSS_reordered_reshaped)
            %     perf(br) = abs(4980 * coeffsNS(br,2) / T1blood * (1 / coeffsSS(br,2) - 1 / coeffsNS(br,2)));
            % end
            % 
            % delete(gcp('nocreate'));

            perf(isnan(perf))=0;
            perf(isinf(perf))=0;
            CBFmap_calculated_stack = reshape(perf(:,1), z, x, y);
            app.PostMapImageData = squeeze(permute(CBFmap_calculated_stack,[2 3 1]));

            data_dims = size(app.PostMapImageData);
            try
                app.SliceSpinner_PostMap.Limits = [1, data_dims(3)];              
                app.SliceSpinner_PostMap.Enable = 'on';
                app.SliceSlider_PostMap.Limits = [1, data_dims(3)];              
                app.SliceSlider_PostMap.Enable = 'on';
            catch
            end

            app.SliceSpinner_PostMap.Value = 1;
            app.SliceSlider_PostMap.Value = 1;
            app.TurboButton_PostMap.Enable = 'on';
            app.GreyscaleButton_PostMap.Enable = 'on';
            app.ContrastSlider_PostMap.Enable = 'on';
            app.BrightnessSlider_PostMap.Enable = 'on';

            app.SaveDataButton_Map.Enable = 'on';
            if isstring(app.ExportFolderPath)
                app.ExportDataButton_Map.Enable = 'on';
            end

            progress.Message = "Done!";
            pause(0.5);
            close(progress);
            
            RefreshImagePostMap(app);
        end

        % Menu selected function: RotateMenu_PostMap
        function RotateMenu_PostMapSelected(app, event)
            % Rotate image data, show image
            app.PostMapImageData = rot90(app.PostMapImageData, -1);
            
            RefreshImagePostMap(app);
        end

        % Menu selected function: FlipVerticallyMenu_PostMap
        function FlipVerticallyMenu_PostMapSelected(app, event)
            % Flip image data, show image
            app.PostMapImageData = flipud(app.PostMapImageData);
            
            RefreshImagePostMap(app);
        end

        % Menu selected function: FlipHorizontallyMenu_PostMap
        function FlipHorizontallyMenu_PostMapSelected(app, event)
            % Flip image data, show image
            app.PostMapImageData = fliplr(app.PostMapImageData);
            
            RefreshImagePostMap(app);
        end

        % Menu selected function: ResetViewMenu_PostMap
        function ResetViewMenu_PostMapSelected(app, event)
            % Reset zoom
            app.UIAxes_PostMap.XLim = [-inf inf];
            app.UIAxes_PostMap.YLim = [-inf inf];

            % Reset contrast and brightness then refresh
            app.BrightnessSlider_PostMap.Value = 0;
            app.ContrastSlider_PostMap.Value = 0;
            RefreshImagePostMap(app);
        end

        % Value changed function: SliceSpinner_PostMap
        function SliceSpinner_PostMapValueChanged(app, event)
            event.Source.Value = round(event.Value);
            app.SliceSlider_PostMap.Value = event.Source.Value;
            
            RefreshImagePostMap(app);
            
            % Reset zoom
            app.UIAxes_PostMap.XLim = [-inf inf];
            app.UIAxes_PostMap.YLim = [-inf inf];
        end

        % Value changing function: SliceSlider_PostMap
        function SliceSlider_PostMapValueChanging(app, event)
            event.Source.Value = round(event.Value);
            app.SliceSpinner_PostMap.Value = event.Source.Value;

            RefreshImagePostMap(app);

            % Reset zoom
            app.UIAxes_PostMap.XLim = [-inf inf];
            app.UIAxes_PostMap.YLim = [-inf inf];
        end

        % Selection changed function: ColormapButtonGroup_PostMap
        function ColormapButtonGroup_PostMapSelectionChanged(app, event)
            RefreshImagePostMap(app);
        end

        % Value changing function: ContrastSlider_PostMap
        function ContrastSlider_PostMapValueChanging(app, event)
            app.ContrastSlider_PostMap.Value = event.Value;
            RefreshImagePostMap(app);
        end

        % Value changing function: BrightnessSlider_PostMap
        function BrightnessSlider_PostMapValueChanging(app, event)
            app.BrightnessSlider_PostMap.Value = event.Value;
            RefreshImagePostMap(app);
        end

        % Button pushed function: ExportDataButton_Map
        function ExportDataButton_MapPushed(app, event)

            ExportImageDataGeneral(app, 'Map');

            uiconfirm(app.BrukKitAlphav0860UIFigure, "Parameter map image data exported in NIfTI format.", "","Options",{'OK'},"DefaultOption",1, "Icon","success");
        end

        % Button pushed function: SaveDataButton_Map
        function SaveDataButton_MapPushed(app, event)
            SaveData(app, 'Map');
        end

        % Value changed function: Select3DViewerDropDown
        function Select3DViewerDropDownValueChanged(app, event)
            delete(app.ViewerParentObject)
            value = app.Select3DViewerDropDown.Value;
            if value == "None"
                cla(app.UIAxes_AlphaMap);
                app.RenderingStyleDropDown.Enable = 'off';
                app.RenderingStyleDropDown.Value = "Volume Rendering";
                app.ColormapDropDown_Viewer.Enable = 'off';
                app.ColormapDropDown_Viewer.Value = "Greyscale";
                app.ColormapImage_Viewer.Visible = 'off';
                app.AlphamapDropDown_Viewer.Enable = 'off';
                app.AlphamapDropDown_Viewer.Value = "Linear";
                app.XEditField_Viewer.Value = 0;
                app.YEditField_Viewer.Value = 0;
                app.ZEditField_Viewer.Value = 0;
                app.SliceRangeLowSpinner_Viewer.Enable = 'off';
                app.SliceRangeLowSpinner_Viewer.Value = 1;
                app.SliceRangeHighSpinner_Viewer.Enable = 'off';
                app.SliceRangeHighSpinner_Viewer.Limits = [1, 2];
                app.SliceRangeHighSpinner_Viewer.Value = 1;
                app.Dim4Spinner_Viewer.Enable = 'off';
                app.Dim4Spinner_Viewer.Value = 1;
                app.Dim5Spinner_Viewer.Enable = 'off';
                app.Dim5Spinner_Viewer.Value = 1;
                app.OverlayButton.Enable = 'off';
                return
            end
            
            % Get image data, check dims, initialize viewer3d parent object
            try
                app.ViewerImageData = cell2mat(app.SavedTable.Image(value));
            catch
                app.ViewerImageData = cell2mat(app.ExperimentPropertyTable.(2)(value));     
            end
            app.ViewerImageData = (app.ViewerImageData - min(app.ViewerImageData(:))) / (max(app.ViewerImageData(:)) - min(app.ViewerImageData(:)));
            app.ViewerImageDataDims = size(app.ViewerImageData);
            if numel(app.ViewerImageDataDims)<3
                app.RenderingStyleDropDown.Enable = 'off';
                app.RenderingStyleDropDown.Value = "Volume Rendering";
                app.ColormapDropDown_Viewer.Enable = 'off';
                app.ColormapDropDown_Viewer.Value = "Greyscale";
                app.ColormapImage_Viewer.Visible = 'off';
                app.AlphamapDropDown_Viewer.Enable = 'off';
                app.AlphamapDropDown_Viewer.Value = "Linear";
                app.XEditField_Viewer.Value = 0;
                app.YEditField_Viewer.Value = 0;
                app.ZEditField_Viewer.Value = 0;
                app.SliceRangeLowSpinner_Viewer.Enable = 'off';
                app.SliceRangeLowSpinner_Viewer.Value = 1;
                app.SliceRangeHighSpinner_Viewer.Enable = 'off';
                app.SliceRangeHighSpinner_Viewer.Limits = [1, 2];
                app.SliceRangeHighSpinner_Viewer.Value = 1;
                app.Dim4Spinner_Viewer.Enable = 'off';
                app.Dim4Spinner_Viewer.Value = 1;
                app.Dim5Spinner_Viewer.Enable = 'off';
                app.Dim5Spinner_Viewer.Value = 1;
                app.OverlayButton.Enable = 'off';
                uialert(app.BrukKitAlphav0860UIFigure, 'Selected data cannot be rendered: number of data dimensions must be between 3 and 5.', '3D Viewer Data Dimension Error')
                return
            end
            app.ViewerParentObject = viewer3d('Parent', app.ViewerPanel);
            
            % Get dimension scales, create triplet and update edit fields
            try
                app.ViewerDimTriplet = [app.SavedTable.VoxDimX(value) app.SavedTable.VoxDimY(value) app.SavedTable.SliceThickness(value)+app.SavedTable.SliceGap(value)];
            catch 
                app.ViewerDimTriplet = [app.ExperimentPropertyTable.(5)(value) app.ExperimentPropertyTable.(6)(value) app.ExperimentPropertyTable.(7)(value)+app.ExperimentPropertyTable.(8)(value)];
            end
            app.XEditField_Viewer.Value = app.ViewerDimTriplet(1);
            app.YEditField_Viewer.Value = app.ViewerDimTriplet(2);
            app.ZEditField_Viewer.Value = app.ViewerDimTriplet(3);
            
            % Enable/Disable Components
            app.RenderingStyleDropDown.Enable = 'on';
            app.RenderingStyleDropDown.Value = "Volume Rendering";
            app.ColormapDropDown_Viewer.Enable = 'on';
            app.ColormapDropDown_Viewer.Value = "Greyscale";
            app.ColormapImage_Viewer.Visible = 'on';
            app.ColormapImage_Viewer.ImageSource = getColormapImageArray(25,256, "Greyscale");
            app.AlphamapDropDown_Viewer.Enable = 'on';
            app.AlphamapDropDown_Viewer.Value = "Linear";
            app.OverlayButton.Enable = 'on';
            % Set slice slider limits and values
            app.SliceRangeLowSpinner_Viewer.Enable = 'on';
            app.SliceRangeLowSpinner_Viewer.Limits = [1, app.ViewerImageDataDims(3)-1];
            app.SliceRangeLowSpinner_Viewer.Value = 1;
            app.SliceRangeHighSpinner_Viewer.Enable = 'on';
            app.SliceRangeHighSpinner_Viewer.Limits = [2, app.ViewerImageDataDims(3)];
            app.SliceRangeHighSpinner_Viewer.Value = app.ViewerImageDataDims(3);       

            % Create transformation matrix
            T = [app.ViewerDimTriplet(1) 0 0 0; 0 app.ViewerDimTriplet(2) 0 0; 0 0 app.ViewerDimTriplet(3) 0; 0 0 0 1];
            tform = affinetform3d(T);

            % Enable/disable spinners based on number of dims, refresh 3D Viewer
            switch numel(app.ViewerImageDataDims)
                case 3
                    app.Dim4Spinner_Viewer.Enable = 'off';
                    app.Dim4Spinner_Viewer.Value = 1;
                    app.Dim5Spinner_Viewer.Enable = 'off';
                    app.Dim5Spinner_Viewer.Value = 1;
                    app.CurrentVolume = volshow(app.ViewerImageData, 'Parent', app.ViewerParentObject, 'Transformation', tform, 'RenderingStyle', "VolumeRendering");
                case 4
                    app.Dim4Spinner_Viewer.Enable = 'on';
                    app.Dim4Spinner_Viewer.Value = 1;
                    app.Dim4Spinner_Viewer.Limits = [1, app.ViewerImageDataDims(4)];
                    app.Dim5Spinner_Viewer.Enable = 'off';
                    app.Dim5Spinner_Viewer.Value = 1;
                    app.CurrentVolume = volshow(app.ViewerImageData(:,:,:,1), 'Parent', app.ViewerParentObject, 'Transformation', tform, 'RenderingStyle', "VolumeRendering");
                case 5
                    app.Dim4Spinner_Viewer.Enable = 'on';
                    app.Dim4Spinner_Viewer.Value = 1;
                    app.Dim4Spinner_Viewer.Limits = [1, app.ViewerImageDataDims(4)];
                    app.Dim5Spinner_Viewer.Enable = 'on';
                    app.Dim5Spinner_Viewer.Value = 1;
                    app.Dim5Spinner_Viewer.Limits = [1, app.ViewerImageDataDims(5)];
                    app.CurrentVolume = volshow(app.ViewerImageData(:,:,:,1,1), 'Parent', app.ViewerParentObject, 'Transformation', tform, 'RenderingStyle', "VolumeRendering");
            end     

            AlphamapDropDown_ViewerValueChanged(app);
        end

        % Value changed function: RenderingStyleDropDown
        function RenderingStyleDropDownValueChanged(app, event)

            switch app.RenderingStyleDropDown.Value
                case "Volume Rendering"
                    renderingStyle = 'VolumeRendering';
                case "Maximum Intensity Projection"
                    renderingStyle = 'MaximumIntensityProjection';
                case "Minimum Intensity Projection"
                    renderingStyle = 'MinimumIntensityProjection';
                case "Slice Planes"
                    renderingStyle = 'SlicePlanes';
                case "Gradient Opacity"
                    renderingStyle = 'GradientOpacity';
                case "Isosurface"
                    renderingStyle = 'Isosurface';
            end
            app.ViewerParentObject.Children.RenderingStyle = renderingStyle;
        end

        % Value changed function: ColormapDropDown_Viewer
        function ColormapDropDown_ViewerValueChanged(app, event)
            
            switch app.ColormapDropDown_Viewer.Value
                case "Greyscale"
                    colormapChoice = gray;
                case "Turbo"
                    colormapChoice = turbo;
                case "Hot"
                    colormapChoice = hot;
                case "Jet"
                    colormapChoice = jet;
                case "Parula"
                    colormapChoice = parula;
                case "Sky"
                    colormapChoice = sky;
                case "Cool"
                    colormapChoice = cool;
                case "Copper"
                    colormapChoice = copper;
                case "Bone"
                    colormapChoice = bone;
            end
            app.ViewerParentObject.Children.Colormap = colormapChoice;
            app.ColormapImage_Viewer.ImageSource = getColormapImageArray(25,256, app.ColormapDropDown_Viewer.Value);
        end

        % Value changed function: AlphamapDropDown_Viewer
        function AlphamapDropDown_ViewerValueChanged(app, event)
            
            h = histogram(app.UIAxes_AlphaMap,im2uint8(app.CurrentVolume.Data),256,"Normalization","probability","FaceColor",[0 0 0],"EdgeColor","none");
            peaks = findpeaks(h.Values);
            app.UIAxes_AlphaMap.XLim = [0 255];
            app.UIAxes_AlphaMap.YLim = [0 2*max(peaks(2:end))];

            switch app.AlphamapDropDown_Viewer.Value
                case "Linear"
                    app.AlphamapPoly = images.roi.Polyline(app.UIAxes_AlphaMap,"Position",[0 255;0 app.UIAxes_AlphaMap.YLim(2)]');               
                case "MRI"
                    app.AlphamapPoly = images.roi.Polyline(app.UIAxes_AlphaMap,"Position",[5 0.000588235294117645*app.UIAxes_AlphaMap.YLim(2); ...
                        10 0.150294117647059*app.UIAxes_AlphaMap.YLim(2); ...
                        30 0.300376470588235*app.UIAxes_AlphaMap.YLim(2); ...
                        55 0.380128767925081*app.UIAxes_AlphaMap.YLim(2); ...
                        255 0.500000000000000*app.UIAxes_AlphaMap.YLim(2)]); 
                    % app.AlphamapPoly = [0;0;0;0;0;0.000588235294117645;0.0307058823529412;0.0608235294117647;0.0909411764705882;0.121058823529412;0.150294117647059;0.157823529411765;0.165352941176471;0.172882352941176;0.180411764705882;0.187941176470588;0.195470588235294;0.203000000000000;0.210529411764706;0.218058823529412;0.225588235294118;0.233117647058824;0.240647058823529;0.248176470588235;0.255705882352941;0.263235294117647;0.270764705882353;0.278294117647059;0.285823529411765;0.293352941176471;0.300376470588235;0.303589019607843;0.306801568627451;0.310014117647059;0.313226666666667;0.316439215686275;0.319651764705882;0.322864313725490;0.326076862745098;0.329289411764706;0.332501960784314;0.335714509803922;0.338927058823529;0.342139607843137;0.345352156862745;0.348564705882353;0.351777254901961;0.354989803921569;0.358202352941176;0.361414901960784;0.364627450980392;0.367840000000000;0.371052549019608;0.374265098039216;0.377477647058824;0.380128767925081;0.380728124085455;0.381327480245830;0.381926836406204;0.382526192566579;0.383125548726954;0.383724904887328;0.384324261047703;0.384923617208077;0.385522973368452;0.386122329528826;0.386721685689201;0.387321041849576;0.387920398009950;0.388519754170325;0.389119110330699;0.389718466491074;0.390317822651449;0.390917178811823;0.391516534972198;0.392115891132572;0.392715247292947;0.393314603453322;0.393913959613696;0.394513315774071;0.395112671934445;0.395712028094820;0.396311384255195;0.396910740415569;0.397510096575944;0.398109452736318;0.398708808896693;0.399308165057068;0.399907521217442;0.400506877377817;0.401106233538191;0.401705589698566;0.402304945858941;0.402904302019315;0.403503658179690;0.404103014340064;0.404702370500439;0.405301726660814;0.405901082821188;0.406500438981563;0.407099795141937;0.407699151302312;0.408298507462687;0.408897863623061;0.409497219783436;0.410096575943810;0.410695932104185;0.411295288264560;0.411894644424934;0.412494000585309;0.413093356745683;0.413692712906058;0.414292069066433;0.414891425226807;0.415490781387182;0.416090137547556;0.416689493707931;0.417288849868306;0.417888206028680;0.418487562189055;0.419086918349429;0.419686274509804;0.420285630670179;0.420884986830553;0.421484342990928;0.422083699151302;0.422683055311677;0.423282411472052;0.423881767632426;0.424481123792801;0.425080479953175;0.425679836113550;0.426279192273925;0.426878548434299;0.427477904594674;0.428077260755048;0.428676616915423;0.429275973075797;0.429875329236172;0.430474685396547;0.431074041556921;0.431673397717296;0.432272753877671;0.432872110038045;0.433471466198420;0.434070822358794;0.434670178519169;0.435269534679543;0.435868890839918;0.436468247000293;0.437067603160667;0.437666959321042;0.438266315481417;0.438865671641791;0.439465027802166;0.440064383962540;0.440663740122915;0.441263096283289;0.441862452443664;0.442461808604039;0.443061164764413;0.443660520924788;0.444259877085162;0.444859233245537;0.445458589405912;0.446057945566286;0.446657301726661;0.447256657887035;0.447856014047410;0.448455370207785;0.449054726368159;0.449654082528534;0.450253438688908;0.450852794849283;0.451452151009658;0.452051507170032;0.452650863330407;0.453250219490781;0.453849575651156;0.454448931811531;0.455048287971905;0.455647644132280;0.456247000292654;0.456846356453029;0.457445712613404;0.458045068773778;0.458644424934153;0.459243781094527;0.459843137254902;0.460442493415277;0.461041849575651;0.461641205736026;0.462240561896400;0.462839918056775;0.463439274217150;0.464038630377524;0.464637986537899;0.465237342698273;0.465836698858648;0.466436055019023;0.467035411179397;0.467634767339772;0.468234123500146;0.468833479660521;0.469432835820896;0.470032191981270;0.470631548141645;0.471230904302019;0.471830260462394;0.472429616622769;0.473028972783143;0.473628328943518;0.474227685103892;0.474827041264267;0.475426397424642;0.476025753585016;0.476625109745391;0.477224465905765;0.477823822066140;0.478423178226515;0.479022534386889;0.479621890547264;0.480221246707638;0.480820602868013;0.481419959028387;0.482019315188762;0.482618671349137;0.483218027509511;0.483817383669886;0.484416739830260;0.485016095990635;0.485615452151010;0.486214808311384;0.486814164471759;0.487413520632133;0.488012876792508;0.488612232952883;0.489211589113257;0.489810945273632;0.490410301434006;0.491009657594381;0.491609013754756;0.492208369915130;0.492807726075505;0.493407082235879;0.494006438396254;0.494605794556629;0.495205150717003;0.495804506877378;0.496403863037752;0.497003219198127;0.497602575358502;0.498201931518876;0.498801287679251;0.499400643839625;0.500000000000000];
                case "MRI-mip"
                    app.AlphamapPoly = images.roi.Polyline(app.UIAxes_AlphaMap,"Position",[9 0.000712491613668749*app.UIAxes_AlphaMap.YLim(2); ...
                        38 0.500128998968008*app.UIAxes_AlphaMap.YLim(2); ...
                        255 1*app.UIAxes_AlphaMap.YLim(2)]); 
                    % app.AlphamapPoly = [0;0;0;0;0;0;0;0;0;0.000712491613668749;0.0179626128265740;0.0352127340394794;0.0524628552523847;0.0697129764652900;0.0869630976781953;0.104213218891101;0.121463340104006;0.138713461316911;0.155963582529817;0.173213703742722;0.190463824955627;0.207713946168532;0.224964067381438;0.242214188594343;0.259464309807248;0.276714431020154;0.293964552233059;0.311214673445964;0.328464794658870;0.345714915871775;0.362965037084680;0.380215158297586;0.397465279510491;0.414715400723396;0.431965521936301;0.449215643149207;0.466465764362112;0.483715885575017;0.500128998968008;0.502432551968156;0.504736104968303;0.507039657968451;0.509343210968598;0.511646763968745;0.513950316968893;0.516253869969040;0.518557422969188;0.520860975969335;0.523164528969483;0.525468081969630;0.527771634969777;0.530075187969925;0.532378740970072;0.534682293970220;0.536985846970367;0.539289399970515;0.541592952970662;0.543896505970809;0.546200058970957;0.548503611971104;0.550807164971252;0.553110717971399;0.555414270971547;0.557717823971694;0.560021376971841;0.562324929971989;0.564628482972136;0.566932035972284;0.569235588972431;0.571539141972579;0.573842694972726;0.576146247972873;0.578449800973021;0.580753353973168;0.583056906973316;0.585360459973463;0.587664012973611;0.589967565973758;0.592271118973905;0.594574671974053;0.596878224974200;0.599181777974348;0.601485330974495;0.603788883974643;0.606092436974790;0.608395989974937;0.610699542975085;0.613003095975232;0.615306648975380;0.617610201975527;0.619913754975675;0.622217307975822;0.624520860975969;0.626824413976117;0.629127966976264;0.631431519976412;0.633735072976559;0.636038625976707;0.638342178976854;0.640645731977001;0.642949284977149;0.645252837977296;0.647556390977444;0.649859943977591;0.652163496977739;0.654467049977886;0.656770602978033;0.659074155978181;0.661377708978328;0.663681261978476;0.665984814978623;0.668288367978770;0.670591920978918;0.672895473979065;0.675199026979213;0.677502579979360;0.679806132979508;0.682109685979655;0.684413238979802;0.686716791979950;0.689020344980097;0.691323897980245;0.693627450980392;0.695931003980540;0.698234556980687;0.700538109980834;0.702841662980982;0.705145215981129;0.707448768981277;0.709752321981424;0.712055874981572;0.714359427981719;0.716662980981867;0.718966533982014;0.721270086982161;0.723573639982309;0.725877192982456;0.728180745982604;0.730484298982751;0.732787851982898;0.735091404983046;0.737394957983193;0.739698510983341;0.742002063983488;0.744305616983636;0.746609169983783;0.748912722983930;0.751216275984078;0.753519828984225;0.755823381984373;0.758126934984520;0.760430487984668;0.762734040984815;0.765037593984962;0.767341146985110;0.769644699985257;0.771948252985405;0.774251805985552;0.776555358985700;0.778858911985847;0.781162464985994;0.783466017986142;0.785769570986289;0.788073123986437;0.790376676986584;0.792680229986732;0.794983782986879;0.797287335987026;0.799590888987174;0.801894441987321;0.804197994987469;0.806501547987616;0.808805100987764;0.811108653987911;0.813412206988058;0.815715759988206;0.818019312988353;0.820322865988501;0.822626418988648;0.824929971988796;0.827233524988943;0.829537077989090;0.831840630989238;0.834144183989385;0.836447736989533;0.838751289989680;0.841054842989828;0.843358395989975;0.845661948990123;0.847965501990270;0.850269054990417;0.852572607990565;0.854876160990712;0.857179713990860;0.859483266991007;0.861786819991154;0.864090372991302;0.866393925991449;0.868697478991597;0.871001031991744;0.873304584991892;0.875608137992039;0.877911690992186;0.880215243992334;0.882518796992481;0.884822349992629;0.887125902992776;0.889429455992923;0.891733008993071;0.894036561993218;0.896340114993366;0.898643667993513;0.900947220993661;0.903250773993808;0.905554326993955;0.907857879994103;0.910161432994251;0.912464985994398;0.914768538994545;0.917072091994693;0.919375644994840;0.921679197994987;0.923982750995135;0.926286303995282;0.928589856995430;0.930893409995577;0.933196962995725;0.935500515995872;0.937804068996019;0.940107621996167;0.942411174996314;0.944714727996462;0.947018280996609;0.949321833996757;0.951625386996904;0.953928939997051;0.956232492997199;0.958536045997346;0.960839598997494;0.963143151997641;0.965446704997789;0.967750257997936;0.970053810998083;0.972357363998231;0.974660916998378;0.976964469998526;0.979268022998673;0.981571575998821;0.983875128998968;0.986178681999115;0.988482234999263;0.990785787999410;0.993089340999558;0.995392893999705;0.997696446999853;1];
            end
            
            app.AlphamapPoly.Deletable = false;
            ApplyAlphaMap(app);
            addlistener(app.AlphamapPoly,'MovingROI',@(o, e)ApplyAlphaMap(app, o, e));
            app.UIAxes_AlphaMap.Interactions = [];
        end

        % Value changed function: XEditField_Viewer
        function XEditField_ViewerValueChanged(app, event)
            value = app.XEditField_Viewer.Value;
            app.ViewerDimTriplet(1) = value;
            T = [app.ViewerDimTriplet(1) 0 0 0; 0 app.ViewerDimTriplet(2) 0 0; 0 0 app.ViewerDimTriplet(3) 0; 0 0 0 1];
            tform = affinetform3d(T);
            app.ViewerParentObject.Children.Transformation = tform;
        end

        % Value changed function: YEditField_Viewer
        function YEditField_ViewerValueChanged(app, event)
            value = app.YEditField_Viewer.Value;
            app.ViewerDimTriplet(2) = value;
            T = [app.ViewerDimTriplet(1) 0 0 0; 0 app.ViewerDimTriplet(2) 0 0; 0 0 app.ViewerDimTriplet(3) 0; 0 0 0 1];
            tform = affinetform3d(T);
            app.ViewerParentObject.Children.Transformation = tform;
        end

        % Value changed function: ZEditField_Viewer
        function ZEditField_ViewerValueChanged(app, event)
            value = app.ZEditField_Viewer.Value;
            app.ViewerDimTriplet(3) = value;
            T = [app.ViewerDimTriplet(1) 0 0 0; 0 app.ViewerDimTriplet(2) 0 0; 0 0 app.ViewerDimTriplet(3) 0; 0 0 0 1];
            tform = affinetform3d(T);
            app.ViewerParentObject.Children.Transformation = tform;
        end

        % Value changed function: SliceRangeLowSpinner_Viewer
        function SliceRangeLowSpinner_ViewerValueChanged(app, event)
            value = app.SliceRangeLowSpinner_Viewer.Value;
            
            % Update spinner limits
            maxBoundary = app.SliceRangeHighSpinner_Viewer.Limits(2);
            app.SliceRangeHighSpinner_Viewer.Limits = [value+1, maxBoundary];
            % Update 3D Viewer data based on number of dims
            switch numel(size(app.ViewerImageData))
                case 3
                    app.ViewerParentObject.Children.Data = app.ViewerImageData(:,:, app.SliceRangeLowSpinner_Viewer.Value:app.SliceRangeHighSpinner_Viewer.Value);
                case 4
                    app.ViewerParentObject.Children.Data = app.ViewerImageData(:,:, app.SliceRangeLowSpinner_Viewer.Value:app.SliceRangeHighSpinner_Viewer.Value, app.Dim4Spinner_Viewer.Value);
                case 5
                    app.ViewerParentObject.Children.Data = app.ViewerImageData(:,:, app.SliceRangeLowSpinner_Viewer.Value:app.SliceRangeHighSpinner_Viewer.Value, app.Dim4Spinner_Viewer.Value, app.Dim5Spinner_Viewer.Value);
            end 
        end

        % Value changed function: SliceRangeHighSpinner_Viewer
        function SliceRangeHighSpinner_ViewerValueChanged(app, event)
            value = app.SliceRangeHighSpinner_Viewer.Value;
            
            % Update spinner limits
            minBoundary = app.SliceRangeLowSpinner_Viewer.Limits(1);
            app.SliceRangeLowSpinner_Viewer.Limits = [minBoundary, value-1];
            % Update 3D Viewer data based on number of dims
            switch numel(size(app.ViewerImageData))
                case 3
                    app.ViewerParentObject.Children.Data = app.ViewerImageData(:,:, app.SliceRangeLowSpinner_Viewer.Value:app.SliceRangeHighSpinner_Viewer.Value);
                case 4
                    app.ViewerParentObject.Children.Data = app.ViewerImageData(:,:, app.SliceRangeLowSpinner_Viewer.Value:app.SliceRangeHighSpinner_Viewer.Value, app.Dim4Spinner_Viewer.Value);
                case 5
                    app.ViewerParentObject.Children.Data = app.ViewerImageData(:,:, app.SliceRangeLowSpinner_Viewer.Value:app.SliceRangeHighSpinner_Viewer.Value, app.Dim4Spinner_Viewer.Value, app.Dim5Spinner_Viewer.Value);
            end
        end

        % Value changed function: Dim4Spinner_Viewer
        function Dim4Spinner_ViewerValueChanged(app, event)
            
            % Update 3D Viewer data based on number of dims
            switch numel(size(app.ViewerImageData))
                case 4
                    app.ViewerParentObject.Children.Data = app.ViewerImageData(:,:, app.SliceRangeLowSpinner_Viewer.Value:app.SliceRangeHighSpinner_Viewer.Value, app.Dim4Spinner_Viewer.Value);
                case 5
                    app.ViewerParentObject.Children.Data = app.ViewerImageData(:,:, app.SliceRangeLowSpinner_Viewer.Value:app.SliceRangeHighSpinner_Viewer.Value, app.Dim4Spinner_Viewer.Value, app.Dim5Spinner_Viewer.Value);
            end 
        end

        % Value changed function: Dim5Spinner_Viewer
        function Dim5Spinner_ViewerValueChanged(app, event)
            
            % Update 3D Viewer data
            app.ViewerParentObject.Children.Data = app.ViewerImageData(:,:, app.SliceRangeLowSpinner_Viewer.Value:app.SliceRangeHighSpinner_Viewer.Value, app.Dim4Spinner_Viewer.Value, app.Dim5Spinner_Viewer.Value);
            
        end

        % Value changed function: OverlayButton
        function OverlayButtonValueChanged(app, event)
            value = app.OverlayButton.Value;
            
            switch value
                case 1
                    app.ProgressBar = uiprogressdlg(app.BrukKitAlphav0860UIFigure,'Title',"Please wait",...
                 'Message', "Selecting a volume to overlay in 3D Viewer...", 'Indeterminate','on');
                    drawnow
            
                    app.OverlayButton.Enable = 'off';

                    app.OverlayPickerWindow = OverlayPicker(app, app.DropDownItemsCombined, app.ExperimentPropertyTable, ...
                        app.SavedTable, app.ViewerImageDataDims);
                case 0
                    Select3DViewerDropDownValueChanged(app);
            end           
        end

        % Close request function: BrukKitAlphav0860UIFigure
        function BrukKitAlphav0860UIFigureCloseRequest(app, event)
            
            progress = uiprogressdlg(app.BrukKitAlphav0860UIFigure,'Title',"Shutting down",...
                             'Message', "Deleting temporary data...","Indeterminate","on");
            drawnow
    
            % Purge old temporary data
            try
                rmdir(app.WorkingFolder, "s");
            catch
            end
    
            close(progress);
    
            selection = uiconfirm(app.BrukKitAlphav0860UIFigure, "Thank you for using BrukKit! Please cite us as: <citation pending>", ...
                "","Options",{'Bye!'},"DefaultOption",1,"Icon","info");
    
            switch selection
                case 'Bye!'
                    delete(app.ROIVolumeSegmenterWindow);
                    delete(app.AtlasImporterWindow);
                    delete(app.RegistrationViewerWindow);       
                    delete(app.DSCSettingsWindow);
                    delete(app.OverlayPickerWindow);
                    delete(app);
                otherwise
                    return
            end
            
        end

        % Button pushed function: SavesceneimageButton
        function SavesceneimageButtonPushed(app, event)
            
        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Get the file path for locating images
            pathToMLAPP = fileparts(mfilename('fullpath'));

            % Create BrukKitAlphav0860UIFigure and hide until all components are created
            app.BrukKitAlphav0860UIFigure = uifigure('Visible', 'off');
            app.BrukKitAlphav0860UIFigure.Position = [100 100 1280 720];
            app.BrukKitAlphav0860UIFigure.Name = 'BrukKit Alpha v0.8.6.0';
            app.BrukKitAlphav0860UIFigure.Icon = 'D:\Users\rok.ister\Documents\GitHub\MRI-processing-tool\resources\brukkit_icon.jpeg';
            app.BrukKitAlphav0860UIFigure.CloseRequestFcn = createCallbackFcn(app, @BrukKitAlphav0860UIFigureCloseRequest, true);
            app.BrukKitAlphav0860UIFigure.KeyPressFcn = createCallbackFcn(app, @BrukKitAlphav0860UIFigureKeyPress, true);

            % Create TabGroup
            app.TabGroup = uitabgroup(app.BrukKitAlphav0860UIFigure);
            app.TabGroup.Position = [1 1 1280 720];

            % Create MainTab
            app.MainTab = uitab(app.TabGroup);
            app.MainTab.Title = 'Main';

            % Create UIAxes_Preview
            app.UIAxes_Preview = uiaxes(app.MainTab);
            app.UIAxes_Preview.Toolbar.Visible = 'off';
            app.UIAxes_Preview.XLimitMethod = 'tight';
            app.UIAxes_Preview.YLimitMethod = 'tight';
            app.UIAxes_Preview.XTick = [];
            app.UIAxes_Preview.XTickLabel = '';
            app.UIAxes_Preview.YTick = [];
            app.UIAxes_Preview.YTickLabel = '';
            app.UIAxes_Preview.Box = 'on';
            app.UIAxes_Preview.Position = [676 86 490 361];

            % Create PreviewLabel
            app.PreviewLabel = uilabel(app.MainTab);
            app.PreviewLabel.HorizontalAlignment = 'right';
            app.PreviewLabel.Position = [656 469 48 22];
            app.PreviewLabel.Text = 'Preview';

            % Create PreviewDropDown
            app.PreviewDropDown = uidropdown(app.MainTab);
            app.PreviewDropDown.Items = {'None'};
            app.PreviewDropDown.ValueChangedFcn = createCallbackFcn(app, @PreviewDropDownValueChanged, true);
            app.PreviewDropDown.Placeholder = 'None';
            app.PreviewDropDown.Position = [719 469 229 22];
            app.PreviewDropDown.Value = 'None';

            % Create Dim5Slider_PreviewLabel
            app.Dim5Slider_PreviewLabel = uilabel(app.MainTab);
            app.Dim5Slider_PreviewLabel.HorizontalAlignment = 'right';
            app.Dim5Slider_PreviewLabel.Position = [613 269 44 22];
            app.Dim5Slider_PreviewLabel.Text = 'Dim - 5';

            % Create Dim5Slider_Preview
            app.Dim5Slider_Preview = uislider(app.MainTab);
            app.Dim5Slider_Preview.MajorTicks = [];
            app.Dim5Slider_Preview.MajorTickLabels = {''};
            app.Dim5Slider_Preview.Orientation = 'vertical';
            app.Dim5Slider_Preview.ValueChangingFcn = createCallbackFcn(app, @Dim5Slider_PreviewValueChanging, true);
            app.Dim5Slider_Preview.MinorTicks = [];
            app.Dim5Slider_Preview.Enable = 'off';
            app.Dim5Slider_Preview.Position = [636 297 3 113];

            % Create Dim4Slider_PreviewLabel
            app.Dim4Slider_PreviewLabel = uilabel(app.MainTab);
            app.Dim4Slider_PreviewLabel.HorizontalAlignment = 'right';
            app.Dim4Slider_PreviewLabel.Position = [613 103 44 22];
            app.Dim4Slider_PreviewLabel.Text = 'Dim - 4';

            % Create Dim4Slider_Preview
            app.Dim4Slider_Preview = uislider(app.MainTab);
            app.Dim4Slider_Preview.MajorTicks = [];
            app.Dim4Slider_Preview.MajorTickLabels = {''};
            app.Dim4Slider_Preview.Orientation = 'vertical';
            app.Dim4Slider_Preview.ValueChangingFcn = createCallbackFcn(app, @Dim4Slider_PreviewValueChanging, true);
            app.Dim4Slider_Preview.MinorTicks = [];
            app.Dim4Slider_Preview.Enable = 'off';
            app.Dim4Slider_Preview.Position = [636 135 3 113];

            % Create SliceSpinner_Preview
            app.SliceSpinner_Preview = uispinner(app.MainTab);
            app.SliceSpinner_Preview.Limits = [1 100];
            app.SliceSpinner_Preview.ValueChangedFcn = createCallbackFcn(app, @SliceSpinner_PreviewValueChanged, true);
            app.SliceSpinner_Preview.HorizontalAlignment = 'center';
            app.SliceSpinner_Preview.Enable = 'off';
            app.SliceSpinner_Preview.Position = [923 41 53 22];
            app.SliceSpinner_Preview.Value = 1;

            % Create SliceLabel_Preview
            app.SliceLabel_Preview = uilabel(app.MainTab);
            app.SliceLabel_Preview.HorizontalAlignment = 'right';
            app.SliceLabel_Preview.Position = [668 42 31 22];
            app.SliceLabel_Preview.Text = 'Slice';

            % Create SliceSlider_Preview
            app.SliceSlider_Preview = uislider(app.MainTab);
            app.SliceSlider_Preview.Limits = [1 100];
            app.SliceSlider_Preview.MajorTicks = [];
            app.SliceSlider_Preview.MajorTickLabels = {};
            app.SliceSlider_Preview.ValueChangingFcn = createCallbackFcn(app, @SliceSlider_PreviewValueChanging, true);
            app.SliceSlider_Preview.MinorTicks = [];
            app.SliceSlider_Preview.Enable = 'off';
            app.SliceSlider_Preview.Position = [729 50 183 3];
            app.SliceSlider_Preview.Value = 1;

            % Create BrightnessSliderLabel_Preview
            app.BrightnessSliderLabel_Preview = uilabel(app.MainTab);
            app.BrightnessSliderLabel_Preview.HorizontalAlignment = 'center';
            app.BrightnessSliderLabel_Preview.Position = [1172 266 62 22];
            app.BrightnessSliderLabel_Preview.Text = 'Brightness';

            % Create BrightnessSlider_Preview
            app.BrightnessSlider_Preview = uislider(app.MainTab);
            app.BrightnessSlider_Preview.Limits = [-1 1];
            app.BrightnessSlider_Preview.MajorTicks = 0;
            app.BrightnessSlider_Preview.Orientation = 'vertical';
            app.BrightnessSlider_Preview.ValueChangingFcn = createCallbackFcn(app, @BrightnessSlider_PreviewValueChanging, true);
            app.BrightnessSlider_Preview.MinorTicks = [];
            app.BrightnessSlider_Preview.BusyAction = 'cancel';
            app.BrightnessSlider_Preview.Enable = 'off';
            app.BrightnessSlider_Preview.Position = [1200 297 3 113];

            % Create ContrastSliderLabel_Preview
            app.ContrastSliderLabel_Preview = uilabel(app.MainTab);
            app.ContrastSliderLabel_Preview.HorizontalAlignment = 'center';
            app.ContrastSliderLabel_Preview.Position = [1172 106 62 22];
            app.ContrastSliderLabel_Preview.Text = 'Contrast';

            % Create ContrastSlider_Preview
            app.ContrastSlider_Preview = uislider(app.MainTab);
            app.ContrastSlider_Preview.Limits = [-1 1];
            app.ContrastSlider_Preview.MajorTicks = 0;
            app.ContrastSlider_Preview.Orientation = 'vertical';
            app.ContrastSlider_Preview.ValueChangingFcn = createCallbackFcn(app, @ContrastSlider_PreviewValueChanging, true);
            app.ContrastSlider_Preview.MinorTicks = [];
            app.ContrastSlider_Preview.BusyAction = 'cancel';
            app.ContrastSlider_Preview.Enable = 'off';
            app.ContrastSlider_Preview.Position = [1200 137 3 113];

            % Create LoadPvDatasetsFileButton
            app.LoadPvDatasetsFileButton = uibutton(app.MainTab, 'push');
            app.LoadPvDatasetsFileButton.ButtonPushedFcn = createCallbackFcn(app, @LoadPvDatasetsFileButtonPushed, true);
            app.LoadPvDatasetsFileButton.Position = [370 614 142 22];
            app.LoadPvDatasetsFileButton.Text = 'Load PvDatasets File';

            % Create ArchiveEditField
            app.ArchiveEditField = uieditfield(app.MainTab, 'text');
            app.ArchiveEditField.Editable = 'off';
            app.ArchiveEditField.Position = [104 647 462 22];

            % Create UITable_Preview
            app.UITable_Preview = uitable(app.MainTab);
            app.UITable_Preview.ColumnName = {''; ''};
            app.UITable_Preview.RowName = {};
            app.UITable_Preview.ColumnEditable = true;
            app.UITable_Preview.CellEditCallback = createCallbackFcn(app, @UITable_PreviewCellEdit, true);
            app.UITable_Preview.Position = [44 44 526 491];

            % Create ResetEnvironmentButton
            app.ResetEnvironmentButton = uibutton(app.MainTab, 'push');
            app.ResetEnvironmentButton.ButtonPushedFcn = createCallbackFcn(app, @ResetEnvironmentButtonButtonPushed, true);
            app.ResetEnvironmentButton.Position = [311 564 132 22];
            app.ResetEnvironmentButton.Text = 'Reset Environment';

            % Create SubjectIDEditFieldLabel
            app.SubjectIDEditFieldLabel = uilabel(app.MainTab);
            app.SubjectIDEditFieldLabel.HorizontalAlignment = 'right';
            app.SubjectIDEditFieldLabel.Position = [636 652 61 22];
            app.SubjectIDEditFieldLabel.Text = 'Subject ID';

            % Create SubjectIDEditField
            app.SubjectIDEditField = uieditfield(app.MainTab, 'text');
            app.SubjectIDEditField.Editable = 'off';
            app.SubjectIDEditField.HorizontalAlignment = 'center';
            app.SubjectIDEditField.FontWeight = 'bold';
            app.SubjectIDEditField.Position = [712 652 191 22];

            % Create StudyIDEditFieldLabel
            app.StudyIDEditFieldLabel = uilabel(app.MainTab);
            app.StudyIDEditFieldLabel.HorizontalAlignment = 'right';
            app.StudyIDEditFieldLabel.Position = [953 652 52 22];
            app.StudyIDEditFieldLabel.Text = 'Study ID';

            % Create StudyIDEditField
            app.StudyIDEditField = uieditfield(app.MainTab, 'text');
            app.StudyIDEditField.Editable = 'off';
            app.StudyIDEditField.HorizontalAlignment = 'center';
            app.StudyIDEditField.FontWeight = 'bold';
            app.StudyIDEditField.Position = [1020 652 191 22];

            % Create SubjectCommentEditFieldLabel
            app.SubjectCommentEditFieldLabel = uilabel(app.MainTab);
            app.SubjectCommentEditFieldLabel.HorizontalAlignment = 'right';
            app.SubjectCommentEditFieldLabel.Position = [636 620 101 22];
            app.SubjectCommentEditFieldLabel.Text = 'Subject Comment';

            % Create SubjectCommentEditField
            app.SubjectCommentEditField = uieditfield(app.MainTab, 'text');
            app.SubjectCommentEditField.Editable = 'off';
            app.SubjectCommentEditField.Position = [752 620 151 22];

            % Create StudyCommentEditFieldLabel
            app.StudyCommentEditFieldLabel = uilabel(app.MainTab);
            app.StudyCommentEditFieldLabel.HorizontalAlignment = 'right';
            app.StudyCommentEditFieldLabel.Position = [953 620 92 22];
            app.StudyCommentEditFieldLabel.Text = 'Study Comment';

            % Create StudyCommentEditField
            app.StudyCommentEditField = uieditfield(app.MainTab, 'text');
            app.StudyCommentEditField.Editable = 'off';
            app.StudyCommentEditField.Position = [1060 620 151 22];

            % Create SubjectAgeEditFieldLabel
            app.SubjectAgeEditFieldLabel = uilabel(app.MainTab);
            app.SubjectAgeEditFieldLabel.HorizontalAlignment = 'right';
            app.SubjectAgeEditFieldLabel.Position = [636 588 70 22];
            app.SubjectAgeEditFieldLabel.Text = 'Subject Age';

            % Create SubjectAgeEditField
            app.SubjectAgeEditField = uieditfield(app.MainTab, 'text');
            app.SubjectAgeEditField.Editable = 'off';
            app.SubjectAgeEditField.HorizontalAlignment = 'right';
            app.SubjectAgeEditField.Position = [752 588 151 22];

            % Create SubjectAgeEditFieldLabel_Days
            app.SubjectAgeEditFieldLabel_Days = uilabel(app.MainTab);
            app.SubjectAgeEditFieldLabel_Days.Position = [907 588 33 22];
            app.SubjectAgeEditFieldLabel_Days.Text = 'days';

            % Create StudyStartTimeEditFieldLabel
            app.StudyStartTimeEditFieldLabel = uilabel(app.MainTab);
            app.StudyStartTimeEditFieldLabel.HorizontalAlignment = 'right';
            app.StudyStartTimeEditFieldLabel.Position = [953 588 94 22];
            app.StudyStartTimeEditFieldLabel.Text = 'Study Start Time';

            % Create StudyStartTimeEditField
            app.StudyStartTimeEditField = uieditfield(app.MainTab, 'text');
            app.StudyStartTimeEditField.Editable = 'off';
            app.StudyStartTimeEditField.HorizontalAlignment = 'right';
            app.StudyStartTimeEditField.Position = [1060 588 151 22];

            % Create StudyStartDateEditFieldLabel
            app.StudyStartDateEditFieldLabel = uilabel(app.MainTab);
            app.StudyStartDateEditFieldLabel.HorizontalAlignment = 'right';
            app.StudyStartDateEditFieldLabel.Position = [953 556 94 22];
            app.StudyStartDateEditFieldLabel.Text = 'Study Start Date';

            % Create StudyStartDateEditField
            app.StudyStartDateEditField = uieditfield(app.MainTab, 'text');
            app.StudyStartDateEditField.Editable = 'off';
            app.StudyStartDateEditField.HorizontalAlignment = 'right';
            app.StudyStartDateEditField.Position = [1060 556 151 22];

            % Create SubjectTypeEditFieldLabel
            app.SubjectTypeEditFieldLabel = uilabel(app.MainTab);
            app.SubjectTypeEditFieldLabel.HorizontalAlignment = 'right';
            app.SubjectTypeEditFieldLabel.Position = [636 556 75 22];
            app.SubjectTypeEditFieldLabel.Text = 'Subject Type';

            % Create SubjectTypeEditField
            app.SubjectTypeEditField = uieditfield(app.MainTab, 'text');
            app.SubjectTypeEditField.Editable = 'off';
            app.SubjectTypeEditField.Position = [752 556 151 22];

            % Create SexEditFieldLabel
            app.SexEditFieldLabel = uilabel(app.MainTab);
            app.SexEditFieldLabel.HorizontalAlignment = 'right';
            app.SexEditFieldLabel.Position = [636 524 26 22];
            app.SexEditFieldLabel.Text = 'Sex';

            % Create SexEditField
            app.SexEditField = uieditfield(app.MainTab, 'text');
            app.SexEditField.Editable = 'off';
            app.SexEditField.Position = [677 524 89 22];

            % Create WeightEditFieldLabel
            app.WeightEditFieldLabel = uilabel(app.MainTab);
            app.WeightEditFieldLabel.HorizontalAlignment = 'right';
            app.WeightEditFieldLabel.Position = [773 524 43 22];
            app.WeightEditFieldLabel.Text = 'Weight';

            % Create WeightEditField
            app.WeightEditField = uieditfield(app.MainTab, 'text');
            app.WeightEditField.Editable = 'off';
            app.WeightEditField.HorizontalAlignment = 'right';
            app.WeightEditField.Position = [826 524 76 22];

            % Create WeightEditFieldLabel_kg
            app.WeightEditFieldLabel_kg = uilabel(app.MainTab);
            app.WeightEditFieldLabel_kg.Position = [907 524 16 22];
            app.WeightEditFieldLabel_kg.Text = 'kg';

            % Create ArchiveLabel
            app.ArchiveLabel = uilabel(app.MainTab);
            app.ArchiveLabel.HorizontalAlignment = 'right';
            app.ArchiveLabel.Position = [50 647 46 22];
            app.ArchiveLabel.Text = 'Archive';

            % Create ColormapButtonGroup_Preview
            app.ColormapButtonGroup_Preview = uibuttongroup(app.MainTab);
            app.ColormapButtonGroup_Preview.SelectionChangedFcn = createCallbackFcn(app, @ColormapButtonGroup_PreviewSelectionChanged, true);
            app.ColormapButtonGroup_Preview.BorderType = 'none';
            app.ColormapButtonGroup_Preview.TitlePosition = 'centertop';
            app.ColormapButtonGroup_Preview.Title = 'Colormap';
            app.ColormapButtonGroup_Preview.Position = [1013 34 167 38];

            % Create GreyscaleButton_Preview
            app.GreyscaleButton_Preview = uiradiobutton(app.ColormapButtonGroup_Preview);
            app.GreyscaleButton_Preview.Enable = 'off';
            app.GreyscaleButton_Preview.Text = 'Greyscale';
            app.GreyscaleButton_Preview.Position = [94 -3 76 22];
            app.GreyscaleButton_Preview.Value = true;

            % Create TurboButton_Preview
            app.TurboButton_Preview = uiradiobutton(app.ColormapButtonGroup_Preview);
            app.TurboButton_Preview.Enable = 'off';
            app.TurboButton_Preview.Text = 'Turbo';
            app.TurboButton_Preview.Position = [2 -3 65 22];

            % Create ExportDataButton_Preview
            app.ExportDataButton_Preview = uibutton(app.MainTab, 'push');
            app.ExportDataButton_Preview.ButtonPushedFcn = createCallbackFcn(app, @ExportDataButton_PreviewPushed, true);
            app.ExportDataButton_Preview.Enable = 'off';
            app.ExportDataButton_Preview.Position = [972 469 102 22];
            app.ExportDataButton_Preview.Text = 'Export Data';

            % Create SaveDataButton_Preview
            app.SaveDataButton_Preview = uibutton(app.MainTab, 'push');
            app.SaveDataButton_Preview.ButtonPushedFcn = createCallbackFcn(app, @SaveDataButton_PreviewPushed, true);
            app.SaveDataButton_Preview.Enable = 'off';
            app.SaveDataButton_Preview.Position = [1083 469 102 22];
            app.SaveDataButton_Preview.Text = 'Save Data';

            % Create CreateBrukKitFolderButton
            app.CreateBrukKitFolderButton = uibutton(app.MainTab, 'push');
            app.CreateBrukKitFolderButton.ButtonPushedFcn = createCallbackFcn(app, @CreateBrukKitFolderButtonPushed, true);
            app.CreateBrukKitFolderButton.Enable = 'off';
            app.CreateBrukKitFolderButton.Tooltip = {'Creates a BrukKit folder used as a directory for all data/environment exports.'};
            app.CreateBrukKitFolderButton.Position = [954 523 130 23];
            app.CreateBrukKitFolderButton.Text = 'Create BrukKit Folder';

            % Create LoadBrukerStudyButton
            app.LoadBrukerStudyButton = uibutton(app.MainTab, 'push');
            app.LoadBrukerStudyButton.ButtonPushedFcn = createCallbackFcn(app, @LoadBrukerStudyButtonPushed, true);
            app.LoadBrukerStudyButton.Position = [238 614 126 22];
            app.LoadBrukerStudyButton.Text = 'Load Bruker Study';

            % Create LoadBrukKitFolderButton
            app.LoadBrukKitFolderButton = uibutton(app.MainTab, 'push');
            app.LoadBrukKitFolderButton.ButtonPushedFcn = createCallbackFcn(app, @LoadBrukKitFolderButtonPushed, true);
            app.LoadBrukKitFolderButton.Position = [103 614 129 22];
            app.LoadBrukKitFolderButton.Text = 'Load BrukKit Folder';

            % Create ExportEnvironmentButton
            app.ExportEnvironmentButton = uibutton(app.MainTab, 'push');
            app.ExportEnvironmentButton.ButtonPushedFcn = createCallbackFcn(app, @ExportEnvironmentButtonPushed, true);
            app.ExportEnvironmentButton.Enable = 'off';
            app.ExportEnvironmentButton.Position = [171 564 132 22];
            app.ExportEnvironmentButton.Text = 'Export Environment';

            % Create SegmenterTab
            app.SegmenterTab = uitab(app.TabGroup);
            app.SegmenterTab.Title = 'Segmenter';
            app.SegmenterTab.BackgroundColor = [0.9412 0.9412 0.9412];

            % Create UIAxes_Segmenter
            app.UIAxes_Segmenter = uiaxes(app.SegmenterTab);
            app.UIAxes_Segmenter.Toolbar.Visible = 'off';
            app.UIAxes_Segmenter.XLimitMethod = 'tight';
            app.UIAxes_Segmenter.YLimitMethod = 'tight';
            app.UIAxes_Segmenter.XTick = [];
            app.UIAxes_Segmenter.YTick = [];
            app.UIAxes_Segmenter.Box = 'on';
            app.UIAxes_Segmenter.Position = [5 66 903 627];

            % Create UIAxes_SegmenterHelperUp
            app.UIAxes_SegmenterHelperUp = uiaxes(app.SegmenterTab);
            app.UIAxes_SegmenterHelperUp.Toolbar.Visible = 'off';
            app.UIAxes_SegmenterHelperUp.XLimitMethod = 'tight';
            app.UIAxes_SegmenterHelperUp.YLimitMethod = 'tight';
            app.UIAxes_SegmenterHelperUp.XTick = [];
            app.UIAxes_SegmenterHelperUp.YTick = [];
            app.UIAxes_SegmenterHelperUp.Clipping = 'off';
            app.UIAxes_SegmenterHelperUp.Visible = 'off';
            app.UIAxes_SegmenterHelperUp.Position = [4 352 235 320];

            % Create UIAxes_SegmenterHelperDown
            app.UIAxes_SegmenterHelperDown = uiaxes(app.SegmenterTab);
            app.UIAxes_SegmenterHelperDown.Toolbar.Visible = 'off';
            app.UIAxes_SegmenterHelperDown.XLimitMethod = 'tight';
            app.UIAxes_SegmenterHelperDown.YLimitMethod = 'tight';
            app.UIAxes_SegmenterHelperDown.XTick = [];
            app.UIAxes_SegmenterHelperDown.YTick = [];
            app.UIAxes_SegmenterHelperDown.Clipping = 'off';
            app.UIAxes_SegmenterHelperDown.Visible = 'off';
            app.UIAxes_SegmenterHelperDown.Position = [4 66 235 320];

            % Create SelectExperimentToSegmentLabel
            app.SelectExperimentToSegmentLabel = uilabel(app.SegmenterTab);
            app.SelectExperimentToSegmentLabel.HorizontalAlignment = 'right';
            app.SelectExperimentToSegmentLabel.Position = [1035 654 170 22];
            app.SelectExperimentToSegmentLabel.Text = 'Select Experiment To Segment';

            % Create SegmentDropDown
            app.SegmentDropDown = uidropdown(app.SegmenterTab);
            app.SegmentDropDown.Items = {'None'};
            app.SegmentDropDown.ValueChangedFcn = createCallbackFcn(app, @SegmentDropDownValueChanged, true);
            app.SegmentDropDown.Placeholder = 'None';
            app.SegmentDropDown.Position = [1023 624 202 21];
            app.SegmentDropDown.Value = 'None';

            % Create SliceSpinner_Segmenter
            app.SliceSpinner_Segmenter = uispinner(app.SegmenterTab);
            app.SliceSpinner_Segmenter.ValueChangedFcn = createCallbackFcn(app, @SliceSpinner_SegmenterValueChanged, true);
            app.SliceSpinner_Segmenter.Enable = 'off';
            app.SliceSpinner_Segmenter.Position = [278 22 51 22];
            app.SliceSpinner_Segmenter.Value = 1;

            % Create SaveSegmentedDataButton
            app.SaveSegmentedDataButton = uibutton(app.SegmenterTab, 'push');
            app.SaveSegmentedDataButton.ButtonPushedFcn = createCallbackFcn(app, @SaveSegmentedDataButtonPushed, true);
            app.SaveSegmentedDataButton.Enable = 'off';
            app.SaveSegmentedDataButton.Position = [1052 58 144 22];
            app.SaveSegmentedDataButton.Text = 'Save Segmented Data';

            % Create ExportDataButton_Segmenter
            app.ExportDataButton_Segmenter = uibutton(app.SegmenterTab, 'push');
            app.ExportDataButton_Segmenter.ButtonPushedFcn = createCallbackFcn(app, @ExportDataButton_SegmenterPushed, true);
            app.ExportDataButton_Segmenter.Enable = 'off';
            app.ExportDataButton_Segmenter.Position = [1052 24 144 22];
            app.ExportDataButton_Segmenter.Text = 'Export Segmented Data';

            % Create Dim4Spinner_SegmenterLabel
            app.Dim4Spinner_SegmenterLabel = uilabel(app.SegmenterTab);
            app.Dim4Spinner_SegmenterLabel.HorizontalAlignment = 'right';
            app.Dim4Spinner_SegmenterLabel.Position = [342 22 44 22];
            app.Dim4Spinner_SegmenterLabel.Text = 'Dim - 4';

            % Create Dim4Spinner_Segmenter
            app.Dim4Spinner_Segmenter = uispinner(app.SegmenterTab);
            app.Dim4Spinner_Segmenter.ValueChangedFcn = createCallbackFcn(app, @Dim4Spinner_SegmenterValueChanged, true);
            app.Dim4Spinner_Segmenter.Enable = 'off';
            app.Dim4Spinner_Segmenter.Position = [397 22 51 22];
            app.Dim4Spinner_Segmenter.Value = 1;

            % Create Dim5Spinner_SegmenterLabel
            app.Dim5Spinner_SegmenterLabel = uilabel(app.SegmenterTab);
            app.Dim5Spinner_SegmenterLabel.HorizontalAlignment = 'right';
            app.Dim5Spinner_SegmenterLabel.Position = [462 22 44 22];
            app.Dim5Spinner_SegmenterLabel.Text = 'Dim - 5';

            % Create Dim5Spinner_Segmenter
            app.Dim5Spinner_Segmenter = uispinner(app.SegmenterTab);
            app.Dim5Spinner_Segmenter.ValueChangedFcn = createCallbackFcn(app, @Dim5Spinner_SegmenterValueChanged, true);
            app.Dim5Spinner_Segmenter.Enable = 'off';
            app.Dim5Spinner_Segmenter.Position = [518 22 51 22];
            app.Dim5Spinner_Segmenter.Value = 1;

            % Create SliceSliderLabel
            app.SliceSliderLabel = uilabel(app.SegmenterTab);
            app.SliceSliderLabel.HorizontalAlignment = 'right';
            app.SliceSliderLabel.Position = [23 23 32 22];
            app.SliceSliderLabel.Text = 'Slice';

            % Create SliceSlider_Segmenter
            app.SliceSlider_Segmenter = uislider(app.SegmenterTab);
            app.SliceSlider_Segmenter.Limits = [1 100];
            app.SliceSlider_Segmenter.MajorTicks = [];
            app.SliceSlider_Segmenter.MajorTickLabels = {};
            app.SliceSlider_Segmenter.ValueChangingFcn = createCallbackFcn(app, @SliceSlider_SegmenterValueChanging, true);
            app.SliceSlider_Segmenter.MinorTicks = [];
            app.SliceSlider_Segmenter.Enable = 'off';
            app.SliceSlider_Segmenter.Position = [84 31 183 3];
            app.SliceSlider_Segmenter.Value = 1;

            % Create BrightnessSliderLabel_Segmenter
            app.BrightnessSliderLabel_Segmenter = uilabel(app.SegmenterTab);
            app.BrightnessSliderLabel_Segmenter.HorizontalAlignment = 'center';
            app.BrightnessSliderLabel_Segmenter.Position = [918 401 62 22];
            app.BrightnessSliderLabel_Segmenter.Text = 'Brightness';

            % Create BrightnessSlider_Segmenter
            app.BrightnessSlider_Segmenter = uislider(app.SegmenterTab);
            app.BrightnessSlider_Segmenter.Limits = [-1 1];
            app.BrightnessSlider_Segmenter.MajorTicks = 0;
            app.BrightnessSlider_Segmenter.Orientation = 'vertical';
            app.BrightnessSlider_Segmenter.ValueChangingFcn = createCallbackFcn(app, @BrightnessSlider_SegmenterValueChanging, true);
            app.BrightnessSlider_Segmenter.MinorTicks = [];
            app.BrightnessSlider_Segmenter.BusyAction = 'cancel';
            app.BrightnessSlider_Segmenter.Enable = 'off';
            app.BrightnessSlider_Segmenter.Position = [947 431 3 186];

            % Create ContrastSliderLabel_Segmenter
            app.ContrastSliderLabel_Segmenter = uilabel(app.SegmenterTab);
            app.ContrastSliderLabel_Segmenter.HorizontalAlignment = 'center';
            app.ContrastSliderLabel_Segmenter.Position = [922 139 51 22];
            app.ContrastSliderLabel_Segmenter.Text = 'Contrast';

            % Create ColormapButtonGroup_Segmenter
            app.ColormapButtonGroup_Segmenter = uibuttongroup(app.SegmenterTab);
            app.ColormapButtonGroup_Segmenter.SelectionChangedFcn = createCallbackFcn(app, @ColormapButtonGroup_SegmenterSelectionChanged, true);
            app.ColormapButtonGroup_Segmenter.BorderType = 'none';
            app.ColormapButtonGroup_Segmenter.TitlePosition = 'centertop';
            app.ColormapButtonGroup_Segmenter.Title = 'Colormap';
            app.ColormapButtonGroup_Segmenter.Position = [596 15 167 38];

            % Create GreyscaleButton_Segmenter
            app.GreyscaleButton_Segmenter = uiradiobutton(app.ColormapButtonGroup_Segmenter);
            app.GreyscaleButton_Segmenter.Enable = 'off';
            app.GreyscaleButton_Segmenter.Text = 'Greyscale';
            app.GreyscaleButton_Segmenter.Position = [94 -3 76 22];
            app.GreyscaleButton_Segmenter.Value = true;

            % Create TurboButton_Segmenter
            app.TurboButton_Segmenter = uiradiobutton(app.ColormapButtonGroup_Segmenter);
            app.TurboButton_Segmenter.Enable = 'off';
            app.TurboButton_Segmenter.Text = 'Turbo';
            app.TurboButton_Segmenter.Position = [2 -3 65 22];

            % Create ContrastSlider_Segmenter
            app.ContrastSlider_Segmenter = uislider(app.SegmenterTab);
            app.ContrastSlider_Segmenter.Limits = [-1 1];
            app.ContrastSlider_Segmenter.MajorTicks = 0;
            app.ContrastSlider_Segmenter.Orientation = 'vertical';
            app.ContrastSlider_Segmenter.ValueChangingFcn = createCallbackFcn(app, @ContrastSlider_SegmenterValueChanging, true);
            app.ContrastSlider_Segmenter.MinorTicks = [];
            app.ContrastSlider_Segmenter.BusyAction = 'cancel';
            app.ContrastSlider_Segmenter.Enable = 'off';
            app.ContrastSlider_Segmenter.Position = [946 169 3 186];

            % Create CurrentsegmentationLabel
            app.CurrentsegmentationLabel = uilabel(app.SegmenterTab);
            app.CurrentsegmentationLabel.HorizontalAlignment = 'right';
            app.CurrentsegmentationLabel.Position = [1058 583 123 22];
            app.CurrentsegmentationLabel.Text = 'Current Segmentation';

            % Create CurrentSegmentationDropDown
            app.CurrentSegmentationDropDown = uidropdown(app.SegmenterTab);
            app.CurrentSegmentationDropDown.Items = {'Brain', 'Hemisphere', 'ROI'};
            app.CurrentSegmentationDropDown.ValueChangedFcn = createCallbackFcn(app, @CurrentSegmentationDropDownValueChanged, true);
            app.CurrentSegmentationDropDown.Enable = 'off';
            app.CurrentSegmentationDropDown.Placeholder = 'None';
            app.CurrentSegmentationDropDown.Position = [1023 553 202 21];
            app.CurrentSegmentationDropDown.Value = 'Brain';

            % Create SelectionToolsPanel
            app.SelectionToolsPanel = uipanel(app.SegmenterTab);
            app.SelectionToolsPanel.BorderType = 'none';
            app.SelectionToolsPanel.TitlePosition = 'centertop';
            app.SelectionToolsPanel.Title = 'Selection Tools';
            app.SelectionToolsPanel.Visible = 'off';
            app.SelectionToolsPanel.Position = [1050 82 149 140];

            % Create FreeButton_Add
            app.FreeButton_Add = uibutton(app.SelectionToolsPanel, 'push');
            app.FreeButton_Add.ButtonPushedFcn = createCallbackFcn(app, @FreeButton_AddPushed, true);
            app.FreeButton_Add.Position = [22 80 50 22];
            app.FreeButton_Add.Text = {'+ Free'; ''};

            % Create PolyButton_Add
            app.PolyButton_Add = uibutton(app.SelectionToolsPanel, 'push');
            app.PolyButton_Add.ButtonPushedFcn = createCallbackFcn(app, @PolyButton_AddPushed, true);
            app.PolyButton_Add.Position = [22 48 50 22];
            app.PolyButton_Add.Text = '+ Poly';

            % Create PolyButton_Remove
            app.PolyButton_Remove = uibutton(app.SelectionToolsPanel, 'push');
            app.PolyButton_Remove.ButtonPushedFcn = createCallbackFcn(app, @PolyButton_RemovePushed, true);
            app.PolyButton_Remove.Position = [81 48 50 22];
            app.PolyButton_Remove.Text = {'- Poly'; ''};

            % Create FreeButton_Remove
            app.FreeButton_Remove = uibutton(app.SelectionToolsPanel, 'push');
            app.FreeButton_Remove.ButtonPushedFcn = createCallbackFcn(app, @FreeButton_RemovePushed, true);
            app.FreeButton_Remove.Position = [81 80 50 22];
            app.FreeButton_Remove.Text = {'- Free'; ''};

            % Create ConfirmButton
            app.ConfirmButton = uibutton(app.SelectionToolsPanel, 'push');
            app.ConfirmButton.ButtonPushedFcn = createCallbackFcn(app, @ConfirmButtonPushed, true);
            app.ConfirmButton.Icon = fullfile(pathToMLAPP, 'resources', 'check icon.png');
            app.ConfirmButton.Position = [46 19 26 22];
            app.ConfirmButton.Text = '';

            % Create DeleteButton
            app.DeleteButton = uibutton(app.SelectionToolsPanel, 'push');
            app.DeleteButton.ButtonPushedFcn = createCallbackFcn(app, @DeleteButtonPushed, true);
            app.DeleteButton.Icon = fullfile(pathToMLAPP, 'resources', 'x icon.png');
            app.DeleteButton.Position = [81 19 27 22];
            app.DeleteButton.Text = '';

            % Create ROISegmentationToolsPanel
            app.ROISegmentationToolsPanel = uipanel(app.SegmenterTab);
            app.ROISegmentationToolsPanel.BorderType = 'none';
            app.ROISegmentationToolsPanel.TitlePosition = 'centertop';
            app.ROISegmentationToolsPanel.Title = 'ROI Segmentation Tools';
            app.ROISegmentationToolsPanel.Visible = 'off';
            app.ROISegmentationToolsPanel.Position = [998 221 253 319];

            % Create ROIListListBoxLabel
            app.ROIListListBoxLabel = uilabel(app.ROISegmentationToolsPanel);
            app.ROIListListBoxLabel.HorizontalAlignment = 'center';
            app.ROIListListBoxLabel.Position = [103 245 49 22];
            app.ROIListListBoxLabel.Text = 'ROI List';

            % Create ROIListListBox
            app.ROIListListBox = uilistbox(app.ROISegmentationToolsPanel);
            app.ROIListListBox.Items = {};
            app.ROIListListBox.ValueChangedFcn = createCallbackFcn(app, @ROIListListBoxValueChanged, true);
            app.ROIListListBox.Position = [35 157 188 86];
            app.ROIListListBox.Value = {};

            % Create AddROIButton
            app.AddROIButton = uibutton(app.ROISegmentationToolsPanel, 'push');
            app.AddROIButton.ButtonPushedFcn = createCallbackFcn(app, @AddROIButtonPushed, true);
            app.AddROIButton.Position = [24 74 100 22];
            app.AddROIButton.Text = 'Add ROI';

            % Create DeleteROIButton
            app.DeleteROIButton = uibutton(app.ROISegmentationToolsPanel, 'push');
            app.DeleteROIButton.ButtonPushedFcn = createCallbackFcn(app, @DeleteROIButtonPushed, true);
            app.DeleteROIButton.Position = [134 74 100 22];
            app.DeleteROIButton.Text = 'Delete ROI';

            % Create ResetROISliceButton
            app.ResetROISliceButton = uibutton(app.ROISegmentationToolsPanel, 'push');
            app.ResetROISliceButton.ButtonPushedFcn = createCallbackFcn(app, @ResetROISliceButtonPushed, true);
            app.ResetROISliceButton.Position = [77 43 101 22];
            app.ResetROISliceButton.Text = 'Reset ROI Slice';

            % Create ImageshownSwitchLabel_ROI
            app.ImageshownSwitchLabel_ROI = uilabel(app.ROISegmentationToolsPanel);
            app.ImageshownSwitchLabel_ROI.HorizontalAlignment = 'center';
            app.ImageshownSwitchLabel_ROI.Position = [90 101 77 22];
            app.ImageshownSwitchLabel_ROI.Text = {'Image shown'; ''};

            % Create ImageshownSwitch_ROI
            app.ImageshownSwitch_ROI = uiswitch(app.ROISegmentationToolsPanel, 'slider');
            app.ImageshownSwitch_ROI.Items = {'Overlay', 'Masked'};
            app.ImageshownSwitch_ROI.ValueChangedFcn = createCallbackFcn(app, @ImageshownSwitch_ROIValueChanged, true);
            app.ImageshownSwitch_ROI.Position = [105 130 45 20];
            app.ImageshownSwitch_ROI.Value = 'Overlay';

            % Create LoadExternalROIPackButton
            app.LoadExternalROIPackButton = uibutton(app.ROISegmentationToolsPanel, 'push');
            app.LoadExternalROIPackButton.ButtonPushedFcn = createCallbackFcn(app, @LoadExternalROIPackButtonPushed, true);
            app.LoadExternalROIPackButton.Position = [52 269 154 22];
            app.LoadExternalROIPackButton.Text = 'Load External ROI Pack';

            % Create VolROISegmentationToolsButton
            app.VolROISegmentationToolsButton = uibutton(app.ROISegmentationToolsPanel, 'push');
            app.VolROISegmentationToolsButton.ButtonPushedFcn = createCallbackFcn(app, @VolROISegmentationToolsButtonPushed, true);
            app.VolROISegmentationToolsButton.Position = [46 12 164 23];
            app.VolROISegmentationToolsButton.Text = '3D ROI Segmentation Tools';

            % Create HemisphereSegmentationToolsPanel
            app.HemisphereSegmentationToolsPanel = uipanel(app.SegmenterTab);
            app.HemisphereSegmentationToolsPanel.BorderType = 'none';
            app.HemisphereSegmentationToolsPanel.TitlePosition = 'centertop';
            app.HemisphereSegmentationToolsPanel.Title = 'Hemisphere Segmentation Tools';
            app.HemisphereSegmentationToolsPanel.Visible = 'off';
            app.HemisphereSegmentationToolsPanel.Position = [998 339 253 201];

            % Create ResetHemispheresButton
            app.ResetHemispheresButton = uibutton(app.HemisphereSegmentationToolsPanel, 'push');
            app.ResetHemispheresButton.ButtonPushedFcn = createCallbackFcn(app, @ResetHemispheresButtonPushed, true);
            app.ResetHemispheresButton.Position = [67 10 121 22];
            app.ResetHemispheresButton.Text = 'Reset Hemispheres';

            % Create HemisphereButtonGroup
            app.HemisphereButtonGroup = uibuttongroup(app.HemisphereSegmentationToolsPanel);
            app.HemisphereButtonGroup.BorderType = 'none';
            app.HemisphereButtonGroup.TitlePosition = 'centertop';
            app.HemisphereButtonGroup.Title = 'Hemisphere ';
            app.HemisphereButtonGroup.BackgroundColor = [0.9412 0.9412 0.9412];
            app.HemisphereButtonGroup.Position = [78 64 100 74];

            % Create LeftblueButton
            app.LeftblueButton = uiradiobutton(app.HemisphereButtonGroup);
            app.LeftblueButton.Text = 'Left - blue';
            app.LeftblueButton.Position = [11 29 75 22];
            app.LeftblueButton.Value = true;

            % Create RightredButton
            app.RightredButton = uiradiobutton(app.HemisphereButtonGroup);
            app.RightredButton.Text = 'Right - red';
            app.RightredButton.Position = [11 7 78 22];

            % Create LoadExternalHemisphereMaskButton
            app.LoadExternalHemisphereMaskButton = uibutton(app.HemisphereSegmentationToolsPanel, 'push');
            app.LoadExternalHemisphereMaskButton.ButtonPushedFcn = createCallbackFcn(app, @LoadExternalHemisphereMaskButtonPushed, true);
            app.LoadExternalHemisphereMaskButton.Position = [32 151 191 22];
            app.LoadExternalHemisphereMaskButton.Text = 'Load External Hemisphere Mask';

            % Create AutoCompleteHemispheresCheckBox
            app.AutoCompleteHemispheresCheckBox = uicheckbox(app.HemisphereSegmentationToolsPanel);
            app.AutoCompleteHemispheresCheckBox.Text = 'Auto-Complete Hemispheres';
            app.AutoCompleteHemispheresCheckBox.Position = [40 41 176 22];

            % Create BrainSegmentationToolsPanel
            app.BrainSegmentationToolsPanel = uipanel(app.SegmenterTab);
            app.BrainSegmentationToolsPanel.BorderType = 'none';
            app.BrainSegmentationToolsPanel.TitlePosition = 'centertop';
            app.BrainSegmentationToolsPanel.Title = 'Brain Segmentation Tools';
            app.BrainSegmentationToolsPanel.Visible = 'off';
            app.BrainSegmentationToolsPanel.Position = [998 231 253 309];

            % Create DiskradiusSpinnerLabel
            app.DiskradiusSpinnerLabel = uilabel(app.BrainSegmentationToolsPanel);
            app.DiskradiusSpinnerLabel.HorizontalAlignment = 'right';
            app.DiskradiusSpinnerLabel.Position = [164 88 65 22];
            app.DiskradiusSpinnerLabel.Text = {'Disk radius'; ''};

            % Create DiskradiusSpinner
            app.DiskradiusSpinner = uispinner(app.BrainSegmentationToolsPanel);
            app.DiskradiusSpinner.Limits = [1 100];
            app.DiskradiusSpinner.Position = [168 55 58 22];
            app.DiskradiusSpinner.Value = 3;

            % Create OpenMaskButton
            app.OpenMaskButton = uibutton(app.BrainSegmentationToolsPanel, 'push');
            app.OpenMaskButton.ButtonPushedFcn = createCallbackFcn(app, @OpenMaskButtonPushed, true);
            app.OpenMaskButton.WordWrap = 'on';
            app.OpenMaskButton.Position = [24 86 99 22];
            app.OpenMaskButton.Text = {'Open Mask'; ''};

            % Create CloseMaskButton
            app.CloseMaskButton = uibutton(app.BrainSegmentationToolsPanel, 'push');
            app.CloseMaskButton.ButtonPushedFcn = createCallbackFcn(app, @CloseMaskButtonPushed, true);
            app.CloseMaskButton.WordWrap = 'on';
            app.CloseMaskButton.Position = [24 55 99 22];
            app.CloseMaskButton.Text = {'Close Mask'; ''};

            % Create MorphologyLabel
            app.MorphologyLabel = uilabel(app.BrainSegmentationToolsPanel);
            app.MorphologyLabel.HorizontalAlignment = 'center';
            app.MorphologyLabel.Position = [95 117 68 15];
            app.MorphologyLabel.Text = {'Morphology'; ''};

            % Create InitialSelectionButton
            app.InitialSelectionButton = uibutton(app.BrainSegmentationToolsPanel, 'push');
            app.InitialSelectionButton.ButtonPushedFcn = createCallbackFcn(app, @InitialSelectionButtonPushed, true);
            app.InitialSelectionButton.Position = [24 175 100 22];
            app.InitialSelectionButton.Text = {'Initial Selection'; ''};

            % Create AutoClusterButton
            app.AutoClusterButton = uibutton(app.BrainSegmentationToolsPanel, 'push');
            app.AutoClusterButton.ButtonPushedFcn = createCallbackFcn(app, @AutoClusterButtonPushed, true);
            app.AutoClusterButton.WordWrap = 'on';
            app.AutoClusterButton.Enable = 'off';
            app.AutoClusterButton.Position = [134 175 100 22];
            app.AutoClusterButton.Text = 'Auto Cluster';

            % Create LoadExternalBrainMaskButton
            app.LoadExternalBrainMaskButton = uibutton(app.BrainSegmentationToolsPanel, 'push');
            app.LoadExternalBrainMaskButton.ButtonPushedFcn = createCallbackFcn(app, @LoadExternalBrainMaskButtonPushed, true);
            app.LoadExternalBrainMaskButton.Position = [52 259 154 22];
            app.LoadExternalBrainMaskButton.Text = 'Load External Brain Mask';

            % Create ImageshownSwitchLabel
            app.ImageshownSwitchLabel = uilabel(app.BrainSegmentationToolsPanel);
            app.ImageshownSwitchLabel.HorizontalAlignment = 'center';
            app.ImageshownSwitchLabel.Position = [93 232 77 22];
            app.ImageshownSwitchLabel.Text = {'Image shown'; ''};

            % Create ImageshownSwitch_Brain
            app.ImageshownSwitch_Brain = uiswitch(app.BrainSegmentationToolsPanel, 'slider');
            app.ImageshownSwitch_Brain.Items = {'Overlay', 'Masked'};
            app.ImageshownSwitch_Brain.ValueChangedFcn = createCallbackFcn(app, @ImageshownSwitch_BrainValueChanged, true);
            app.ImageshownSwitch_Brain.Position = [106 212 45 20];
            app.ImageshownSwitch_Brain.Value = 'Overlay';

            % Create ResetSliceButton
            app.ResetSliceButton = uibutton(app.BrainSegmentationToolsPanel, 'push');
            app.ResetSliceButton.ButtonPushedFcn = createCallbackFcn(app, @ResetSliceButtonPushed, true);
            app.ResetSliceButton.Position = [24 21 100 22];
            app.ResetSliceButton.Text = 'Reset Slice';

            % Create ApplyMaskButton
            app.ApplyMaskButton = uibutton(app.BrainSegmentationToolsPanel, 'push');
            app.ApplyMaskButton.ButtonPushedFcn = createCallbackFcn(app, @ApplyMaskButtonPushed, true);
            app.ApplyMaskButton.Position = [134 21 100 22];
            app.ApplyMaskButton.Text = 'Apply Mask';

            % Create VolumeSwitch
            app.VolumeSwitch = uiswitch(app.BrainSegmentationToolsPanel, 'slider');
            app.VolumeSwitch.Items = {'2D', '3D'};
            app.VolumeSwitch.ValueChangedFcn = createCallbackFcn(app, @VolumeSwitchValueChanged, true);
            app.VolumeSwitch.Position = [107 145 45 20];
            app.VolumeSwitch.Value = '2D';

            % Create PerspectiveViewButton
            app.PerspectiveViewButton = uibutton(app.SegmenterTab, 'state');
            app.PerspectiveViewButton.ValueChangedFcn = createCallbackFcn(app, @PerspectiveViewButtonValueChanged, true);
            app.PerspectiveViewButton.Enable = 'off';
            app.PerspectiveViewButton.Text = 'Perspective View';
            app.PerspectiveViewButton.Position = [783 21 107 23];

            % Create VolumetryTab
            app.VolumetryTab = uitab(app.TabGroup);
            app.VolumetryTab.Title = 'Volumetry';
            app.VolumetryTab.ButtonDownFcn = createCallbackFcn(app, @VolumetryTabButtonDown, true);

            % Create BrainPanel
            app.BrainPanel = uipanel(app.VolumetryTab);
            app.BrainPanel.BorderType = 'none';
            app.BrainPanel.TitlePosition = 'centertop';
            app.BrainPanel.Title = 'Brain';
            app.BrainPanel.ButtonDownFcn = createCallbackFcn(app, @BrainPanelButtonDown, true);
            app.BrainPanel.Position = [26 38 383 525];

            % Create UITable_VolumetryBrain
            app.UITable_VolumetryBrain = uitable(app.BrainPanel);
            app.UITable_VolumetryBrain.ColumnName = {'Slice Number'; 'Slice Area'};
            app.UITable_VolumetryBrain.RowName = {};
            app.UITable_VolumetryBrain.CellSelectionCallback = createCallbackFcn(app, @UITable_VolumetryBrainCellSelection, true);
            app.UITable_VolumetryBrain.Multiselect = 'off';
            app.UITable_VolumetryBrain.Position = [41 5 304 190];

            % Create VolumeEditFieldLabel_Brain
            app.VolumeEditFieldLabel_Brain = uilabel(app.BrainPanel);
            app.VolumeEditFieldLabel_Brain.HorizontalAlignment = 'center';
            app.VolumeEditFieldLabel_Brain.Position = [169 414 46 22];
            app.VolumeEditFieldLabel_Brain.Text = 'Volume';

            % Create VolumeEditField_Brain
            app.VolumeEditField_Brain = uieditfield(app.BrainPanel, 'numeric');
            app.VolumeEditField_Brain.Position = [148 390 88 22];

            % Create SDEditFieldLabel_Brain
            app.SDEditFieldLabel_Brain = uilabel(app.BrainPanel);
            app.SDEditFieldLabel_Brain.HorizontalAlignment = 'center';
            app.SDEditFieldLabel_Brain.Position = [229 354 18 22];
            app.SDEditFieldLabel_Brain.Text = 'SD';

            % Create SDEditField_Brain
            app.SDEditField_Brain = uieditfield(app.BrainPanel, 'numeric');
            app.SDEditField_Brain.Position = [209 330 59 22];

            % Create MeanEditFieldLabel_Brain
            app.MeanEditFieldLabel_Brain = uilabel(app.BrainPanel);
            app.MeanEditFieldLabel_Brain.HorizontalAlignment = 'center';
            app.MeanEditFieldLabel_Brain.Position = [130 354 36 22];
            app.MeanEditFieldLabel_Brain.Text = 'Mean';

            % Create MeanEditField_Brain
            app.MeanEditField_Brain = uieditfield(app.BrainPanel, 'numeric');
            app.MeanEditField_Brain.Position = [118 330 59 22];

            % Create LabelPlusMinus_Brain
            app.LabelPlusMinus_Brain = uilabel(app.BrainPanel);
            app.LabelPlusMinus_Brain.Interpreter = 'latex';
            app.LabelPlusMinus_Brain.HorizontalAlignment = 'center';
            app.LabelPlusMinus_Brain.Position = [178 328 29 24];
            app.LabelPlusMinus_Brain.Text = '±';

            % Create IQREditFieldLabel_Brain
            app.IQREditFieldLabel_Brain = uilabel(app.BrainPanel);
            app.IQREditFieldLabel_Brain.HorizontalAlignment = 'center';
            app.IQREditFieldLabel_Brain.Position = [226 307 27 22];
            app.IQREditFieldLabel_Brain.Text = 'IQR';

            % Create IQRLowerEditField_Brain
            app.IQRLowerEditField_Brain = uieditfield(app.BrainPanel, 'numeric');
            app.IQRLowerEditField_Brain.Position = [208 283 27 22];

            % Create MedianEditFieldLabel_Brain
            app.MedianEditFieldLabel_Brain = uilabel(app.BrainPanel);
            app.MedianEditFieldLabel_Brain.HorizontalAlignment = 'center';
            app.MedianEditFieldLabel_Brain.Position = [126 307 45 22];
            app.MedianEditFieldLabel_Brain.Text = 'Median';

            % Create MedianEditField_Brain
            app.MedianEditField_Brain = uieditfield(app.BrainPanel, 'numeric');
            app.MedianEditField_Brain.Position = [119 283 59 22];

            % Create MaxEditFieldLabel_Brain
            app.MaxEditFieldLabel_Brain = uilabel(app.BrainPanel);
            app.MaxEditFieldLabel_Brain.HorizontalAlignment = 'center';
            app.MaxEditFieldLabel_Brain.Position = [225 260 28 22];
            app.MaxEditFieldLabel_Brain.Text = 'Max';

            % Create MaxEditField_Brain
            app.MaxEditField_Brain = uieditfield(app.BrainPanel, 'numeric');
            app.MaxEditField_Brain.Position = [207 236 59 22];

            % Create MinEditFieldLabel_Brain
            app.MinEditFieldLabel_Brain = uilabel(app.BrainPanel);
            app.MinEditFieldLabel_Brain.HorizontalAlignment = 'center';
            app.MinEditFieldLabel_Brain.Position = [137 260 25 22];
            app.MinEditFieldLabel_Brain.Text = 'Min';

            % Create MinEditField_Brain
            app.MinEditField_Brain = uieditfield(app.BrainPanel, 'numeric');
            app.MinEditField_Brain.Position = [120 236 59 22];

            % Create IQRUpperEditField_Brain
            app.IQRUpperEditField_Brain = uieditfield(app.BrainPanel, 'numeric');
            app.IQRUpperEditField_Brain.Position = [240 283 27 22];

            % Create HemispherePanel
            app.HemispherePanel = uipanel(app.VolumetryTab);
            app.HemispherePanel.BorderType = 'none';
            app.HemispherePanel.TitlePosition = 'centertop';
            app.HemispherePanel.Title = 'Hemisphere';
            app.HemispherePanel.ButtonDownFcn = createCallbackFcn(app, @HemispherePanelButtonDown, true);
            app.HemispherePanel.Position = [449 38 383 525];

            % Create UITable_VolumetryHemisphere
            app.UITable_VolumetryHemisphere = uitable(app.HemispherePanel);
            app.UITable_VolumetryHemisphere.ColumnName = {'Slice Number'; 'Slice Area'};
            app.UITable_VolumetryHemisphere.RowName = {};
            app.UITable_VolumetryHemisphere.CellSelectionCallback = createCallbackFcn(app, @UITable_VolumetryHemisphereCellSelection, true);
            app.UITable_VolumetryHemisphere.Position = [41 5 304 190];

            % Create VolumeEditFieldLabel_Hemisphere
            app.VolumeEditFieldLabel_Hemisphere = uilabel(app.HemispherePanel);
            app.VolumeEditFieldLabel_Hemisphere.HorizontalAlignment = 'center';
            app.VolumeEditFieldLabel_Hemisphere.Position = [169 410 46 22];
            app.VolumeEditFieldLabel_Hemisphere.Text = 'Volume';

            % Create VolumeEditField_Hemisphere
            app.VolumeEditField_Hemisphere = uieditfield(app.HemispherePanel, 'numeric');
            app.VolumeEditField_Hemisphere.Position = [148 386 88 22];

            % Create LabelPlusMinus_Hemisphere
            app.LabelPlusMinus_Hemisphere = uilabel(app.HemispherePanel);
            app.LabelPlusMinus_Hemisphere.Interpreter = 'latex';
            app.LabelPlusMinus_Hemisphere.HorizontalAlignment = 'center';
            app.LabelPlusMinus_Hemisphere.Position = [178 324 29 24];
            app.LabelPlusMinus_Hemisphere.Text = '±';

            % Create SDEditFieldLabel_Hemisphere
            app.SDEditFieldLabel_Hemisphere = uilabel(app.HemispherePanel);
            app.SDEditFieldLabel_Hemisphere.HorizontalAlignment = 'center';
            app.SDEditFieldLabel_Hemisphere.Position = [228 350 18 22];
            app.SDEditFieldLabel_Hemisphere.Text = 'SD';

            % Create SDEditField_Hemisphere
            app.SDEditField_Hemisphere = uieditfield(app.HemispherePanel, 'numeric');
            app.SDEditField_Hemisphere.Position = [207 326 59 22];

            % Create MeanEditFieldLabel_Hemisphere
            app.MeanEditFieldLabel_Hemisphere = uilabel(app.HemispherePanel);
            app.MeanEditFieldLabel_Hemisphere.HorizontalAlignment = 'center';
            app.MeanEditFieldLabel_Hemisphere.Position = [131 350 36 22];
            app.MeanEditFieldLabel_Hemisphere.Text = 'Mean';

            % Create MeanEditField_Hemisphere
            app.MeanEditField_Hemisphere = uieditfield(app.HemispherePanel, 'numeric');
            app.MeanEditField_Hemisphere.Position = [120 326 59 22];

            % Create MaxEditFieldLabel_Hemisphere
            app.MaxEditFieldLabel_Hemisphere = uilabel(app.HemispherePanel);
            app.MaxEditFieldLabel_Hemisphere.HorizontalAlignment = 'center';
            app.MaxEditFieldLabel_Hemisphere.Position = [223 256 28 22];
            app.MaxEditFieldLabel_Hemisphere.Text = 'Max';

            % Create MaxEditField_Hemisphere
            app.MaxEditField_Hemisphere = uieditfield(app.HemispherePanel, 'numeric');
            app.MaxEditField_Hemisphere.Position = [207 232 59 22];

            % Create MinEditFieldLabel_Hemisphere
            app.MinEditFieldLabel_Hemisphere = uilabel(app.HemispherePanel);
            app.MinEditFieldLabel_Hemisphere.HorizontalAlignment = 'center';
            app.MinEditFieldLabel_Hemisphere.Position = [137 256 25 22];
            app.MinEditFieldLabel_Hemisphere.Text = 'Min';

            % Create MinEditField_Hemisphere
            app.MinEditField_Hemisphere = uieditfield(app.HemispherePanel, 'numeric');
            app.MinEditField_Hemisphere.Position = [120 232 59 22];

            % Create SelectHemisphereDropDownLabel
            app.SelectHemisphereDropDownLabel = uilabel(app.HemispherePanel);
            app.SelectHemisphereDropDownLabel.HorizontalAlignment = 'center';
            app.SelectHemisphereDropDownLabel.Position = [122 459 143 22];
            app.SelectHemisphereDropDownLabel.Text = 'Select Hemisphere';

            % Create SelectHemisphereDropDown
            app.SelectHemisphereDropDown = uidropdown(app.HemispherePanel);
            app.SelectHemisphereDropDown.Items = {'Left', 'Right'};
            app.SelectHemisphereDropDown.ValueChangedFcn = createCallbackFcn(app, @SelectHemisphereDropDownValueChanged, true);
            app.SelectHemisphereDropDown.Enable = 'off';
            app.SelectHemisphereDropDown.Placeholder = 'None';
            app.SelectHemisphereDropDown.ClickedFcn = createCallbackFcn(app, @SelectHemisphereDropDownClicked, true);
            app.SelectHemisphereDropDown.Position = [101 435 182 21];
            app.SelectHemisphereDropDown.Value = 'Left';

            % Create MedianEditFieldLabel_Hemisphere
            app.MedianEditFieldLabel_Hemisphere = uilabel(app.HemispherePanel);
            app.MedianEditFieldLabel_Hemisphere.HorizontalAlignment = 'center';
            app.MedianEditFieldLabel_Hemisphere.Position = [125 303 45 22];
            app.MedianEditFieldLabel_Hemisphere.Text = 'Median';

            % Create MedianEditField_Hemisphere
            app.MedianEditField_Hemisphere = uieditfield(app.HemispherePanel, 'numeric');
            app.MedianEditField_Hemisphere.Position = [118 279 59 22];

            % Create IQREditFieldLabel_Hemisphere
            app.IQREditFieldLabel_Hemisphere = uilabel(app.HemispherePanel);
            app.IQREditFieldLabel_Hemisphere.HorizontalAlignment = 'center';
            app.IQREditFieldLabel_Hemisphere.Position = [225 303 27 22];
            app.IQREditFieldLabel_Hemisphere.Text = 'IQR';

            % Create IQRLowerEditField_Hemisphere
            app.IQRLowerEditField_Hemisphere = uieditfield(app.HemispherePanel, 'numeric');
            app.IQRLowerEditField_Hemisphere.Position = [207 279 27 22];

            % Create IQRUpperEditField_Hemisphere
            app.IQRUpperEditField_Hemisphere = uieditfield(app.HemispherePanel, 'numeric');
            app.IQRUpperEditField_Hemisphere.Position = [239 279 27 22];

            % Create ROIPanel_Volumetry
            app.ROIPanel_Volumetry = uipanel(app.VolumetryTab);
            app.ROIPanel_Volumetry.BorderType = 'none';
            app.ROIPanel_Volumetry.TitlePosition = 'centertop';
            app.ROIPanel_Volumetry.Title = 'ROI';
            app.ROIPanel_Volumetry.ButtonDownFcn = createCallbackFcn(app, @ROIPanel_VolumetryButtonDown, true);
            app.ROIPanel_Volumetry.Position = [872 38 383 525];

            % Create UITable_VolumetryROI
            app.UITable_VolumetryROI = uitable(app.ROIPanel_Volumetry);
            app.UITable_VolumetryROI.ColumnName = {'Slice Number'; 'Slice Area'};
            app.UITable_VolumetryROI.RowName = {};
            app.UITable_VolumetryROI.CellSelectionCallback = createCallbackFcn(app, @UITable_VolumetryROICellSelection, true);
            app.UITable_VolumetryROI.Position = [41 5 304 190];

            % Create VolumeEditFieldLabel_ROI
            app.VolumeEditFieldLabel_ROI = uilabel(app.ROIPanel_Volumetry);
            app.VolumeEditFieldLabel_ROI.HorizontalAlignment = 'center';
            app.VolumeEditFieldLabel_ROI.Position = [172 410 46 22];
            app.VolumeEditFieldLabel_ROI.Text = 'Volume';

            % Create VolumeEditField_ROI
            app.VolumeEditField_ROI = uieditfield(app.ROIPanel_Volumetry, 'numeric');
            app.VolumeEditField_ROI.Position = [151 386 88 22];

            % Create LabelPlusMinus_ROI
            app.LabelPlusMinus_ROI = uilabel(app.ROIPanel_Volumetry);
            app.LabelPlusMinus_ROI.Interpreter = 'latex';
            app.LabelPlusMinus_ROI.HorizontalAlignment = 'center';
            app.LabelPlusMinus_ROI.Position = [181 324 29 24];
            app.LabelPlusMinus_ROI.Text = '±';

            % Create SDEditFieldLabel_ROI
            app.SDEditFieldLabel_ROI = uilabel(app.ROIPanel_Volumetry);
            app.SDEditFieldLabel_ROI.HorizontalAlignment = 'center';
            app.SDEditFieldLabel_ROI.Position = [231 350 18 22];
            app.SDEditFieldLabel_ROI.Text = 'SD';

            % Create SDEditField_ROI
            app.SDEditField_ROI = uieditfield(app.ROIPanel_Volumetry, 'numeric');
            app.SDEditField_ROI.Position = [210 326 59 22];

            % Create MeanEditFieldLabel_ROI
            app.MeanEditFieldLabel_ROI = uilabel(app.ROIPanel_Volumetry);
            app.MeanEditFieldLabel_ROI.HorizontalAlignment = 'center';
            app.MeanEditFieldLabel_ROI.Position = [133 350 36 22];
            app.MeanEditFieldLabel_ROI.Text = 'Mean';

            % Create MeanEditField_ROI
            app.MeanEditField_ROI = uieditfield(app.ROIPanel_Volumetry, 'numeric');
            app.MeanEditField_ROI.Position = [121 326 59 22];

            % Create MaxEditFieldLabel_ROI
            app.MaxEditFieldLabel_ROI = uilabel(app.ROIPanel_Volumetry);
            app.MaxEditFieldLabel_ROI.HorizontalAlignment = 'center';
            app.MaxEditFieldLabel_ROI.Position = [226 256 28 22];
            app.MaxEditFieldLabel_ROI.Text = 'Max';

            % Create MaxEditField_ROI
            app.MaxEditField_ROI = uieditfield(app.ROIPanel_Volumetry, 'numeric');
            app.MaxEditField_ROI.Position = [210 232 59 22];

            % Create MinEditFieldLabel_ROI
            app.MinEditFieldLabel_ROI = uilabel(app.ROIPanel_Volumetry);
            app.MinEditFieldLabel_ROI.HorizontalAlignment = 'center';
            app.MinEditFieldLabel_ROI.Position = [138 256 25 22];
            app.MinEditFieldLabel_ROI.Text = 'Min';

            % Create MinEditField_ROI
            app.MinEditField_ROI = uieditfield(app.ROIPanel_Volumetry, 'numeric');
            app.MinEditField_ROI.Position = [121 232 59 22];

            % Create SelectROIDropDownLabel
            app.SelectROIDropDownLabel = uilabel(app.ROIPanel_Volumetry);
            app.SelectROIDropDownLabel.HorizontalAlignment = 'center';
            app.SelectROIDropDownLabel.Position = [122 459 143 22];
            app.SelectROIDropDownLabel.Text = 'Select ROI';

            % Create SelectROIDropDown
            app.SelectROIDropDown = uidropdown(app.ROIPanel_Volumetry);
            app.SelectROIDropDown.Items = {};
            app.SelectROIDropDown.ValueChangedFcn = createCallbackFcn(app, @SelectROIDropDownValueChanged, true);
            app.SelectROIDropDown.Enable = 'off';
            app.SelectROIDropDown.Placeholder = 'None';
            app.SelectROIDropDown.ClickedFcn = createCallbackFcn(app, @SelectROIDropDownClicked, true);
            app.SelectROIDropDown.Position = [101 435 182 21];
            app.SelectROIDropDown.Value = {};

            % Create ApplyEdemaCorrectionCheckBox
            app.ApplyEdemaCorrectionCheckBox = uicheckbox(app.ROIPanel_Volumetry);
            app.ApplyEdemaCorrectionCheckBox.ValueChangedFcn = createCallbackFcn(app, @ApplyEdemaCorrectionCheckBoxValueChanged, true);
            app.ApplyEdemaCorrectionCheckBox.Enable = 'off';
            app.ApplyEdemaCorrectionCheckBox.Text = 'Apply Edema Correction';
            app.ApplyEdemaCorrectionCheckBox.Position = [122 202 152 22];

            % Create MedianEditFieldLabel_ROI
            app.MedianEditFieldLabel_ROI = uilabel(app.ROIPanel_Volumetry);
            app.MedianEditFieldLabel_ROI.HorizontalAlignment = 'center';
            app.MedianEditFieldLabel_ROI.Position = [128 303 45 22];
            app.MedianEditFieldLabel_ROI.Text = 'Median';

            % Create MedianEditField_ROI
            app.MedianEditField_ROI = uieditfield(app.ROIPanel_Volumetry, 'numeric');
            app.MedianEditField_ROI.Position = [121 279 59 22];

            % Create IQREditFieldLabel_ROI
            app.IQREditFieldLabel_ROI = uilabel(app.ROIPanel_Volumetry);
            app.IQREditFieldLabel_ROI.HorizontalAlignment = 'center';
            app.IQREditFieldLabel_ROI.Position = [228 303 27 22];
            app.IQREditFieldLabel_ROI.Text = 'IQR';

            % Create IQRLowerEditField_ROI
            app.IQRLowerEditField_ROI = uieditfield(app.ROIPanel_Volumetry, 'numeric');
            app.IQRLowerEditField_ROI.Position = [210 279 27 22];

            % Create IQRUpperEditField_ROI
            app.IQRUpperEditField_ROI = uieditfield(app.ROIPanel_Volumetry, 'numeric');
            app.IQRUpperEditField_ROI.Position = [242 279 27 22];

            % Create SelectExperimentForVolumetryLabel
            app.SelectExperimentForVolumetryLabel = uilabel(app.VolumetryTab);
            app.SelectExperimentForVolumetryLabel.HorizontalAlignment = 'right';
            app.SelectExperimentForVolumetryLabel.Position = [518 654 245 22];
            app.SelectExperimentForVolumetryLabel.Text = 'Select Experiment For Volumetry Calculation';

            % Create SelectVolumetryDropDown
            app.SelectVolumetryDropDown = uidropdown(app.VolumetryTab);
            app.SelectVolumetryDropDown.Items = {'None'};
            app.SelectVolumetryDropDown.ValueChangedFcn = createCallbackFcn(app, @SelectVolumetryDropDownValueChanged, true);
            app.SelectVolumetryDropDown.Placeholder = 'None';
            app.SelectVolumetryDropDown.ClickedFcn = createCallbackFcn(app, @SelectVolumetryDropDownClicked, true);
            app.SelectVolumetryDropDown.Position = [461 624 360 21];
            app.SelectVolumetryDropDown.Value = 'None';

            % Create UnitsLabel
            app.UnitsLabel = uilabel(app.VolumetryTab);
            app.UnitsLabel.Position = [522 586 39 26];
            app.UnitsLabel.Text = 'Units:';

            % Create AreaLabel
            app.AreaLabel = uilabel(app.VolumetryTab);
            app.AreaLabel.Position = [573 586 39 26];
            app.AreaLabel.Text = 'Area';

            % Create VolumeLabel
            app.VolumeLabel = uilabel(app.VolumetryTab);
            app.VolumeLabel.Position = [673 586 46 26];
            app.VolumeLabel.Text = 'Volume';

            % Create AreaUnitLabel
            app.AreaUnitLabel = uilabel(app.VolumetryTab);
            app.AreaUnitLabel.FontWeight = 'bold';
            app.AreaUnitLabel.Position = [615 586 39 26];
            app.AreaUnitLabel.Text = '';

            % Create VolumeUnitLabel
            app.VolumeUnitLabel = uilabel(app.VolumetryTab);
            app.VolumeUnitLabel.FontWeight = 'bold';
            app.VolumeUnitLabel.Position = [721 586 39 26];
            app.VolumeUnitLabel.Text = '';

            % Create ExportDataButton_Volumetry
            app.ExportDataButton_Volumetry = uibutton(app.VolumetryTab, 'push');
            app.ExportDataButton_Volumetry.ButtonPushedFcn = createCallbackFcn(app, @ExportDataButton_VolumetryPushed, true);
            app.ExportDataButton_Volumetry.Enable = 'off';
            app.ExportDataButton_Volumetry.Position = [847 623 136 22];
            app.ExportDataButton_Volumetry.Text = 'Export Volumetry Data';

            % Create UIAxes_Volumetry_Container
            app.UIAxes_Volumetry_Container = uipanel(app.VolumetryTab);
            app.UIAxes_Volumetry_Container.BorderColor = [1 1 1];
            app.UIAxes_Volumetry_Container.BorderWidth = 5;
            app.UIAxes_Volumetry_Container.Visible = 'off';
            app.UIAxes_Volumetry_Container.BackgroundColor = [0.9412 0.9412 0.9412];
            app.UIAxes_Volumetry_Container.Position = [5 493 310 195];

            % Create UIAxes_Volumetry
            app.UIAxes_Volumetry = uiaxes(app.UIAxes_Volumetry_Container);
            app.UIAxes_Volumetry.Toolbar.Visible = 'off';
            app.UIAxes_Volumetry.XLim = [-Inf Inf];
            app.UIAxes_Volumetry.YLim = [-Inf Inf];
            app.UIAxes_Volumetry.GridLineStyle = 'none';
            app.UIAxes_Volumetry.XTick = [];
            app.UIAxes_Volumetry.YTick = [];
            app.UIAxes_Volumetry.ZTick = [];
            app.UIAxes_Volumetry.Visible = 'off';
            app.UIAxes_Volumetry.Position = [0 0 300 185];

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
            app.UIAxes_Registration.Box = 'on';
            app.UIAxes_Registration.Position = [5 66 903 627];

            % Create SaveRegisteredDataButton
            app.SaveRegisteredDataButton = uibutton(app.RegistrationTab, 'push');
            app.SaveRegisteredDataButton.ButtonPushedFcn = createCallbackFcn(app, @SaveRegisteredDataButtonPushed, true);
            app.SaveRegisteredDataButton.Enable = 'off';
            app.SaveRegisteredDataButton.Position = [1021 56 140 22];
            app.SaveRegisteredDataButton.Text = 'Save Registered Data';

            % Create ExportDataButton_Registration
            app.ExportDataButton_Registration = uibutton(app.RegistrationTab, 'push');
            app.ExportDataButton_Registration.ButtonPushedFcn = createCallbackFcn(app, @ExportDataButton_RegistrationPushed, true);
            app.ExportDataButton_Registration.Enable = 'off';
            app.ExportDataButton_Registration.Position = [1021 24 140 22];
            app.ExportDataButton_Registration.Text = 'Export Registered Data';

            % Create ColormapButtonGroup_Registration
            app.ColormapButtonGroup_Registration = uibuttongroup(app.RegistrationTab);
            app.ColormapButtonGroup_Registration.SelectionChangedFcn = createCallbackFcn(app, @ColormapButtonGroup_RegistrationSelectionChanged, true);
            app.ColormapButtonGroup_Registration.BorderType = 'none';
            app.ColormapButtonGroup_Registration.TitlePosition = 'centertop';
            app.ColormapButtonGroup_Registration.Title = 'Colormap';
            app.ColormapButtonGroup_Registration.Position = [466 17 167 38];

            % Create GreyscaleButton_Registration
            app.GreyscaleButton_Registration = uiradiobutton(app.ColormapButtonGroup_Registration);
            app.GreyscaleButton_Registration.Enable = 'off';
            app.GreyscaleButton_Registration.Text = 'Greyscale';
            app.GreyscaleButton_Registration.Position = [94 -3 76 22];
            app.GreyscaleButton_Registration.Value = true;

            % Create TurboButton_Registration
            app.TurboButton_Registration = uiradiobutton(app.ColormapButtonGroup_Registration);
            app.TurboButton_Registration.Enable = 'off';
            app.TurboButton_Registration.Text = 'Turbo';
            app.TurboButton_Registration.Position = [2 -3 65 22];

            % Create SliceSpinner_Registration
            app.SliceSpinner_Registration = uispinner(app.RegistrationTab);
            app.SliceSpinner_Registration.ValueChangedFcn = createCallbackFcn(app, @SliceSpinner_RegistrationValueChanged, true);
            app.SliceSpinner_Registration.Enable = 'off';
            app.SliceSpinner_Registration.Position = [391 24 51 22];
            app.SliceSpinner_Registration.Value = 1;

            % Create SliceSliderLabel_Registration
            app.SliceSliderLabel_Registration = uilabel(app.RegistrationTab);
            app.SliceSliderLabel_Registration.HorizontalAlignment = 'right';
            app.SliceSliderLabel_Registration.Position = [136 25 32 22];
            app.SliceSliderLabel_Registration.Text = 'Slice';

            % Create SliceSlider_Registration
            app.SliceSlider_Registration = uislider(app.RegistrationTab);
            app.SliceSlider_Registration.Limits = [1 100];
            app.SliceSlider_Registration.MajorTicks = [];
            app.SliceSlider_Registration.MajorTickLabels = {};
            app.SliceSlider_Registration.ValueChangingFcn = createCallbackFcn(app, @SliceSlider_RegistrationValueChanging, true);
            app.SliceSlider_Registration.MinorTicks = [];
            app.SliceSlider_Registration.Enable = 'off';
            app.SliceSlider_Registration.Position = [197 33 183 3];
            app.SliceSlider_Registration.Value = 1;

            % Create ChooseRegistrationTypeDropDownLabel
            app.ChooseRegistrationTypeDropDownLabel = uilabel(app.RegistrationTab);
            app.ChooseRegistrationTypeDropDownLabel.HorizontalAlignment = 'center';
            app.ChooseRegistrationTypeDropDownLabel.Position = [1021 642 143 22];
            app.ChooseRegistrationTypeDropDownLabel.Text = 'Choose Registration Type';

            % Create ChooseRegistrationTypeDropDown
            app.ChooseRegistrationTypeDropDown = uidropdown(app.RegistrationTab);
            app.ChooseRegistrationTypeDropDown.Items = {'Standard', 'Reference Atlas', 'Time-Series Alignment'};
            app.ChooseRegistrationTypeDropDown.ValueChangedFcn = createCallbackFcn(app, @ChooseRegistrationTypeDropDownValueChanged, true);
            app.ChooseRegistrationTypeDropDown.Tooltip = {''};
            app.ChooseRegistrationTypeDropDown.Position = [981 614 222 22];
            app.ChooseRegistrationTypeDropDown.Value = 'Standard';

            % Create TimeSeriesAlignmentPanel
            app.TimeSeriesAlignmentPanel = uipanel(app.RegistrationTab);
            app.TimeSeriesAlignmentPanel.BorderType = 'none';
            app.TimeSeriesAlignmentPanel.TitlePosition = 'centertop';
            app.TimeSeriesAlignmentPanel.Visible = 'off';
            app.TimeSeriesAlignmentPanel.Position = [917 94 349 500];

            % Create SelectTimeAlignmentLabel
            app.SelectTimeAlignmentLabel = uilabel(app.TimeSeriesAlignmentPanel);
            app.SelectTimeAlignmentLabel.HorizontalAlignment = 'center';
            app.SelectTimeAlignmentLabel.Position = [85 475 181 22];
            app.SelectTimeAlignmentLabel.Text = 'Select Image Data For Alignment';

            % Create SelectTimeAlignmentDropDown
            app.SelectTimeAlignmentDropDown = uidropdown(app.TimeSeriesAlignmentPanel);
            app.SelectTimeAlignmentDropDown.Items = {'None'};
            app.SelectTimeAlignmentDropDown.ValueChangedFcn = createCallbackFcn(app, @SelectTimeAlignmentDropDownValueChanged, true);
            app.SelectTimeAlignmentDropDown.Tooltip = {''};
            app.SelectTimeAlignmentDropDown.Placeholder = 'None';
            app.SelectTimeAlignmentDropDown.Position = [44 444 264 21];
            app.SelectTimeAlignmentDropDown.Value = 'None';

            % Create AlignDataButton
            app.AlignDataButton = uibutton(app.TimeSeriesAlignmentPanel, 'push');
            app.AlignDataButton.ButtonPushedFcn = createCallbackFcn(app, @AlignDataButtonPushed, true);
            app.AlignDataButton.Enable = 'off';
            app.AlignDataButton.Position = [126 279 100 23];
            app.AlignDataButton.Text = 'Align Data';

            % Create Dim4Spinner_TimeAlignmentReferenceLabel
            app.Dim4Spinner_TimeAlignmentReferenceLabel = uilabel(app.TimeSeriesAlignmentPanel);
            app.Dim4Spinner_TimeAlignmentReferenceLabel.HorizontalAlignment = 'right';
            app.Dim4Spinner_TimeAlignmentReferenceLabel.Position = [121 361 47 22];
            app.Dim4Spinner_TimeAlignmentReferenceLabel.Text = 'Dim - 4 ';

            % Create Dim4Spinner_TimeAlignmentReference
            app.Dim4Spinner_TimeAlignmentReference = uispinner(app.TimeSeriesAlignmentPanel);
            app.Dim4Spinner_TimeAlignmentReference.Enable = 'off';
            app.Dim4Spinner_TimeAlignmentReference.Position = [179 361 51 22];
            app.Dim4Spinner_TimeAlignmentReference.Value = 1;

            % Create Dim5Spinner_TimeAlignmentReferenceLabel
            app.Dim5Spinner_TimeAlignmentReferenceLabel = uilabel(app.TimeSeriesAlignmentPanel);
            app.Dim5Spinner_TimeAlignmentReferenceLabel.HorizontalAlignment = 'right';
            app.Dim5Spinner_TimeAlignmentReferenceLabel.Position = [122 323 44 22];
            app.Dim5Spinner_TimeAlignmentReferenceLabel.Text = 'Dim - 5';

            % Create Dim5Spinner_TimeAlignmentReference
            app.Dim5Spinner_TimeAlignmentReference = uispinner(app.TimeSeriesAlignmentPanel);
            app.Dim5Spinner_TimeAlignmentReference.Enable = 'off';
            app.Dim5Spinner_TimeAlignmentReference.Position = [178 323 51 22];
            app.Dim5Spinner_TimeAlignmentReference.Value = 1;

            % Create ReferenceDataPointLabel
            app.ReferenceDataPointLabel = uilabel(app.TimeSeriesAlignmentPanel);
            app.ReferenceDataPointLabel.HorizontalAlignment = 'center';
            app.ReferenceDataPointLabel.Position = [111 395 129 29];
            app.ReferenceDataPointLabel.Text = 'Reference Data Point';

            % Create AdditionalDimensionControlsPanel
            app.AdditionalDimensionControlsPanel = uipanel(app.TimeSeriesAlignmentPanel);
            app.AdditionalDimensionControlsPanel.BorderType = 'none';
            app.AdditionalDimensionControlsPanel.TitlePosition = 'centertop';
            app.AdditionalDimensionControlsPanel.Title = 'Additional Dimension Controls';
            app.AdditionalDimensionControlsPanel.Position = [33 130 286 118];

            % Create Dim4Spinner_TimeAlignmentControl
            app.Dim4Spinner_TimeAlignmentControl = uispinner(app.AdditionalDimensionControlsPanel);
            app.Dim4Spinner_TimeAlignmentControl.ValueChangedFcn = createCallbackFcn(app, @Dim4Spinner_TimeAlignmentControlValueChanged, true);
            app.Dim4Spinner_TimeAlignmentControl.Enable = 'off';
            app.Dim4Spinner_TimeAlignmentControl.Position = [219 58 51 22];
            app.Dim4Spinner_TimeAlignmentControl.Value = 1;

            % Create Dim4SliderLabel_TimeAlignmentControl
            app.Dim4SliderLabel_TimeAlignmentControl = uilabel(app.AdditionalDimensionControlsPanel);
            app.Dim4SliderLabel_TimeAlignmentControl.HorizontalAlignment = 'right';
            app.Dim4SliderLabel_TimeAlignmentControl.Position = [17 59 44 22];
            app.Dim4SliderLabel_TimeAlignmentControl.Text = 'Dim - 4';

            % Create Dim4Slider_TimeAlignmentControl
            app.Dim4Slider_TimeAlignmentControl = uislider(app.AdditionalDimensionControlsPanel);
            app.Dim4Slider_TimeAlignmentControl.Limits = [1 100];
            app.Dim4Slider_TimeAlignmentControl.MajorTicks = [];
            app.Dim4Slider_TimeAlignmentControl.MajorTickLabels = {};
            app.Dim4Slider_TimeAlignmentControl.ValueChangingFcn = createCallbackFcn(app, @Dim4Slider_TimeAlignmentControlValueChanging, true);
            app.Dim4Slider_TimeAlignmentControl.MinorTicks = [];
            app.Dim4Slider_TimeAlignmentControl.Enable = 'off';
            app.Dim4Slider_TimeAlignmentControl.Position = [81 67 124 3];
            app.Dim4Slider_TimeAlignmentControl.Value = 1;

            % Create Dim5Spinner_TimeAlignmentControl
            app.Dim5Spinner_TimeAlignmentControl = uispinner(app.AdditionalDimensionControlsPanel);
            app.Dim5Spinner_TimeAlignmentControl.ValueChangedFcn = createCallbackFcn(app, @Dim5Spinner_TimeAlignmentControlValueChanged, true);
            app.Dim5Spinner_TimeAlignmentControl.Enable = 'off';
            app.Dim5Spinner_TimeAlignmentControl.Position = [219 16 51 22];
            app.Dim5Spinner_TimeAlignmentControl.Value = 1;

            % Create Dim5SliderLabel_TimeAlignmentControl
            app.Dim5SliderLabel_TimeAlignmentControl = uilabel(app.AdditionalDimensionControlsPanel);
            app.Dim5SliderLabel_TimeAlignmentControl.HorizontalAlignment = 'right';
            app.Dim5SliderLabel_TimeAlignmentControl.Position = [17 17 44 22];
            app.Dim5SliderLabel_TimeAlignmentControl.Text = 'Dim - 5';

            % Create Dim5Slider_TimeAlignmentControl
            app.Dim5Slider_TimeAlignmentControl = uislider(app.AdditionalDimensionControlsPanel);
            app.Dim5Slider_TimeAlignmentControl.Limits = [1 100];
            app.Dim5Slider_TimeAlignmentControl.MajorTicks = [];
            app.Dim5Slider_TimeAlignmentControl.MajorTickLabels = {};
            app.Dim5Slider_TimeAlignmentControl.ValueChangingFcn = createCallbackFcn(app, @Dim5Slider_TimeAlignmentControlValueChanging, true);
            app.Dim5Slider_TimeAlignmentControl.MinorTicks = [];
            app.Dim5Slider_TimeAlignmentControl.Enable = 'off';
            app.Dim5Slider_TimeAlignmentControl.Position = [81 25 124 3];
            app.Dim5Slider_TimeAlignmentControl.Value = 1;

            % Create StandardAtlasRegistrationPanel
            app.StandardAtlasRegistrationPanel = uipanel(app.RegistrationTab);
            app.StandardAtlasRegistrationPanel.BorderType = 'none';
            app.StandardAtlasRegistrationPanel.TitlePosition = 'centertop';
            app.StandardAtlasRegistrationPanel.Position = [917 94 349 500];

            % Create RegisterButton
            app.RegisterButton = uibutton(app.StandardAtlasRegistrationPanel, 'push');
            app.RegisterButton.ButtonPushedFcn = createCallbackFcn(app, @RegisterButtonPushed, true);
            app.RegisterButton.Position = [126 14 100 22];
            app.RegisterButton.Text = 'Register';

            % Create ManualinstructioninputCheckBox
            app.ManualinstructioninputCheckBox = uicheckbox(app.StandardAtlasRegistrationPanel);
            app.ManualinstructioninputCheckBox.ValueChangedFcn = createCallbackFcn(app, @ManualinstructioninputCheckBoxValueChanged, true);
            app.ManualinstructioninputCheckBox.Text = 'Manual instruction input';
            app.ManualinstructioninputCheckBox.Position = [102 52 149 22];

            % Create RegistrationViewerButton
            app.RegistrationViewerButton = uibutton(app.StandardAtlasRegistrationPanel, 'push');
            app.RegistrationViewerButton.ButtonPushedFcn = createCallbackFcn(app, @RegistrationViewerButtonPushed, true);
            app.RegistrationViewerButton.Position = [106 222 140 22];
            app.RegistrationViewerButton.Text = 'Registration Viewer';

            % Create RegistrationInstructionsTextAreaLabel
            app.RegistrationInstructionsTextAreaLabel = uilabel(app.StandardAtlasRegistrationPanel);
            app.RegistrationInstructionsTextAreaLabel.HorizontalAlignment = 'center';
            app.RegistrationInstructionsTextAreaLabel.Position = [109 187 134 22];
            app.RegistrationInstructionsTextAreaLabel.Text = 'Registration Instructions';

            % Create RegistrationInstructionsTextArea
            app.RegistrationInstructionsTextArea = uitextarea(app.StandardAtlasRegistrationPanel);
            app.RegistrationInstructionsTextArea.Editable = 'off';
            app.RegistrationInstructionsTextArea.Position = [16 88 320 92];

            % Create SelectmovingLabel
            app.SelectmovingLabel = uilabel(app.StandardAtlasRegistrationPanel);
            app.SelectmovingLabel.HorizontalAlignment = 'right';
            app.SelectmovingLabel.Position = [103 475 146 22];
            app.SelectmovingLabel.Text = 'Select Moving Image Data';

            % Create SelectmovingDropDown
            app.SelectmovingDropDown = uidropdown(app.StandardAtlasRegistrationPanel);
            app.SelectmovingDropDown.Items = {'None'};
            app.SelectmovingDropDown.ValueChangedFcn = createCallbackFcn(app, @SelectmovingDropDownValueChanged, true);
            app.SelectmovingDropDown.Tooltip = {''};
            app.SelectmovingDropDown.Placeholder = 'None';
            app.SelectmovingDropDown.Position = [44 444 264 21];
            app.SelectmovingDropDown.Value = 'None';

            % Create SelectfixedLabel
            app.SelectfixedLabel = uilabel(app.StandardAtlasRegistrationPanel);
            app.SelectfixedLabel.HorizontalAlignment = 'right';
            app.SelectfixedLabel.Position = [108 400 137 22];
            app.SelectfixedLabel.Text = 'Select Fixed Image Data';

            % Create SelectfixedDropDown
            app.SelectfixedDropDown = uidropdown(app.StandardAtlasRegistrationPanel);
            app.SelectfixedDropDown.Items = {'None'};
            app.SelectfixedDropDown.ValueChangedFcn = createCallbackFcn(app, @SelectfixedDropDownValueChanged, true);
            app.SelectfixedDropDown.Placeholder = 'None';
            app.SelectfixedDropDown.Position = [44 366 264 21];
            app.SelectfixedDropDown.Value = 'None';

            % Create UsedifferentparametermapCheckBox
            app.UsedifferentparametermapCheckBox = uicheckbox(app.StandardAtlasRegistrationPanel);
            app.UsedifferentparametermapCheckBox.ValueChangedFcn = createCallbackFcn(app, @UsedifferentparametermapCheckBoxValueChanged, true);
            app.UsedifferentparametermapCheckBox.Text = 'Use different parameter map';
            app.UsedifferentparametermapCheckBox.Position = [92 322 175 22];

            % Create SelectparameterLabel
            app.SelectparameterLabel = uilabel(app.StandardAtlasRegistrationPanel);
            app.SelectparameterLabel.HorizontalAlignment = 'center';
            app.SelectparameterLabel.Position = [94 296 164 22];
            app.SelectparameterLabel.Text = 'Select Parameter Image Data';

            % Create SelectparameterDropDown
            app.SelectparameterDropDown = uidropdown(app.StandardAtlasRegistrationPanel);
            app.SelectparameterDropDown.Items = {'None'};
            app.SelectparameterDropDown.ValueChangedFcn = createCallbackFcn(app, @SelectparameterDropDownValueChanged, true);
            app.SelectparameterDropDown.Enable = 'off';
            app.SelectparameterDropDown.Placeholder = 'None';
            app.SelectparameterDropDown.Position = [44 267 264 21];
            app.SelectparameterDropDown.Value = 'None';

            % Create ImportReferenceAtlasButton
            app.ImportReferenceAtlasButton = uibutton(app.StandardAtlasRegistrationPanel, 'push');
            app.ImportReferenceAtlasButton.ButtonPushedFcn = createCallbackFcn(app, @ImportReferenceAtlasButtonPushed, true);
            app.ImportReferenceAtlasButton.Visible = 'off';
            app.ImportReferenceAtlasButton.Position = [108 398 137 23];
            app.ImportReferenceAtlasButton.Text = 'Import Reference Atlas';

            % Create SelectAtlasDropDown
            app.SelectAtlasDropDown = uidropdown(app.StandardAtlasRegistrationPanel);
            app.SelectAtlasDropDown.Items = {'None'};
            app.SelectAtlasDropDown.ValueChangedFcn = createCallbackFcn(app, @SelectAtlasDropDownValueChanged, true);
            app.SelectAtlasDropDown.Visible = 'off';
            app.SelectAtlasDropDown.Placeholder = 'None';
            app.SelectAtlasDropDown.Position = [44 366 264 21];
            app.SelectAtlasDropDown.Value = 'None';

            % Create ImageshownSwitch_Registration
            app.ImageshownSwitch_Registration = uiswitch(app.RegistrationTab, 'slider');
            app.ImageshownSwitch_Registration.Items = {'Before', 'After'};
            app.ImageshownSwitch_Registration.ValueChangedFcn = createCallbackFcn(app, @ImageshownSwitch_RegistrationValueChanged, true);
            app.ImageshownSwitch_Registration.Enable = 'off';
            app.ImageshownSwitch_Registration.Position = [700 26 45 20];
            app.ImageshownSwitch_Registration.Value = 'After';

            % Create ParameterMapsTab
            app.ParameterMapsTab = uitab(app.TabGroup);
            app.ParameterMapsTab.Title = 'Parameter Maps';

            % Create UIAxes_PreMap
            app.UIAxes_PreMap = uiaxes(app.ParameterMapsTab);
            app.UIAxes_PreMap.Toolbar.Visible = 'off';
            app.UIAxes_PreMap.XLimitMethod = 'tight';
            app.UIAxes_PreMap.YLimitMethod = 'tight';
            app.UIAxes_PreMap.XTick = [];
            app.UIAxes_PreMap.XTickLabel = '';
            app.UIAxes_PreMap.YTick = [];
            app.UIAxes_PreMap.YTickLabel = '';
            app.UIAxes_PreMap.Box = 'on';
            app.UIAxes_PreMap.Position = [41 134 467 425];

            % Create UIAxes_PostMap
            app.UIAxes_PostMap = uiaxes(app.ParameterMapsTab);
            app.UIAxes_PostMap.Toolbar.Visible = 'off';
            app.UIAxes_PostMap.XLimitMethod = 'tight';
            app.UIAxes_PostMap.YLimitMethod = 'tight';
            app.UIAxes_PostMap.XTick = [];
            app.UIAxes_PostMap.XTickLabel = '';
            app.UIAxes_PostMap.YTick = [];
            app.UIAxes_PostMap.YTickLabel = '';
            app.UIAxes_PostMap.Box = 'on';
            app.UIAxes_PostMap.Position = [728 134 467 425];

            % Create SliceSpinner_PreMap
            app.SliceSpinner_PreMap = uispinner(app.ParameterMapsTab);
            app.SliceSpinner_PreMap.ValueChangedFcn = createCallbackFcn(app, @SliceSpinner_PreMapValueChanged, true);
            app.SliceSpinner_PreMap.Enable = 'off';
            app.SliceSpinner_PreMap.Position = [393 97 57 22];
            app.SliceSpinner_PreMap.Value = 1;

            % Create SelectDSCvolumetricdataformapcalculationLabel
            app.SelectDSCvolumetricdataformapcalculationLabel = uilabel(app.ParameterMapsTab);
            app.SelectDSCvolumetricdataformapcalculationLabel.HorizontalAlignment = 'right';
            app.SelectDSCvolumetricdataformapcalculationLabel.Position = [162 598 216 22];
            app.SelectDSCvolumetricdataformapcalculationLabel.Text = 'Select Image Data For Map Calculation';

            % Create SelectPreMapDropDown
            app.SelectPreMapDropDown = uidropdown(app.ParameterMapsTab);
            app.SelectPreMapDropDown.Items = {'None'};
            app.SelectPreMapDropDown.ValueChangedFcn = createCallbackFcn(app, @SelectPreMapDropDownValueChanged, true);
            app.SelectPreMapDropDown.Placeholder = 'None';
            app.SelectPreMapDropDown.Position = [133 574 284 21];
            app.SelectPreMapDropDown.Value = 'None';

            % Create SliceLabel_ParameterMaps_PreMap
            app.SliceLabel_ParameterMaps_PreMap = uilabel(app.ParameterMapsTab);
            app.SliceLabel_ParameterMaps_PreMap.HorizontalAlignment = 'right';
            app.SliceLabel_ParameterMaps_PreMap.Position = [100 97 31 22];
            app.SliceLabel_ParameterMaps_PreMap.Text = 'Slice';

            % Create SliceSlider_PreMap
            app.SliceSlider_PreMap = uislider(app.ParameterMapsTab);
            app.SliceSlider_PreMap.Limits = [1 100];
            app.SliceSlider_PreMap.MajorTicks = [];
            app.SliceSlider_PreMap.MajorTickLabels = {};
            app.SliceSlider_PreMap.ValueChangingFcn = createCallbackFcn(app, @SliceSlider_PreMapValueChanging, true);
            app.SliceSlider_PreMap.MinorTicks = [];
            app.SliceSlider_PreMap.Enable = 'off';
            app.SliceSlider_PreMap.Position = [152 106 221 3];
            app.SliceSlider_PreMap.Value = 1;

            % Create Dim4Spinner_Label_ParameterMaps
            app.Dim4Spinner_Label_ParameterMaps = uilabel(app.ParameterMapsTab);
            app.Dim4Spinner_Label_ParameterMaps.HorizontalAlignment = 'right';
            app.Dim4Spinner_Label_ParameterMaps.Position = [157 49 44 22];
            app.Dim4Spinner_Label_ParameterMaps.Text = 'Dim - 4';

            % Create Dim4Spinner_PreMap
            app.Dim4Spinner_PreMap = uispinner(app.ParameterMapsTab);
            app.Dim4Spinner_PreMap.ValueChangedFcn = createCallbackFcn(app, @Dim4Spinner_PreMapValueChanged, true);
            app.Dim4Spinner_PreMap.Enable = 'off';
            app.Dim4Spinner_PreMap.Position = [212 49 50 22];
            app.Dim4Spinner_PreMap.Value = 1;

            % Create Dim5Spinner_Label_ParameterMaps
            app.Dim5Spinner_Label_ParameterMaps = uilabel(app.ParameterMapsTab);
            app.Dim5Spinner_Label_ParameterMaps.HorizontalAlignment = 'right';
            app.Dim5Spinner_Label_ParameterMaps.Position = [286 49 44 22];
            app.Dim5Spinner_Label_ParameterMaps.Text = 'Dim - 5';

            % Create Dim5Spinner_PreMap
            app.Dim5Spinner_PreMap = uispinner(app.ParameterMapsTab);
            app.Dim5Spinner_PreMap.ValueChangedFcn = createCallbackFcn(app, @Dim5Spinner_PreMapValueChanged, true);
            app.Dim5Spinner_PreMap.Enable = 'off';
            app.Dim5Spinner_PreMap.Position = [342 49 51 22];
            app.Dim5Spinner_PreMap.Value = 1;

            % Create ChooseMapTypeDropDownLabel
            app.ChooseMapTypeDropDownLabel = uilabel(app.ParameterMapsTab);
            app.ChooseMapTypeDropDownLabel.HorizontalAlignment = 'center';
            app.ChooseMapTypeDropDownLabel.Position = [569 649 102 22];
            app.ChooseMapTypeDropDownLabel.Text = 'Choose Map Type';

            % Create ChooseMapTypeDropDown
            app.ChooseMapTypeDropDown = uidropdown(app.ParameterMapsTab);
            app.ChooseMapTypeDropDown.Items = {'DSC', 'T1', 'T2', 'pASL'};
            app.ChooseMapTypeDropDown.ValueChangedFcn = createCallbackFcn(app, @ChooseMapTypeDropDownValueChanged, true);
            app.ChooseMapTypeDropDown.Tooltip = {''};
            app.ChooseMapTypeDropDown.Position = [507 621 222 22];
            app.ChooseMapTypeDropDown.Value = 'DSC';

            % Create BrightnessSliderLabel_ParameterMaps
            app.BrightnessSliderLabel_ParameterMaps = uilabel(app.ParameterMapsTab);
            app.BrightnessSliderLabel_ParameterMaps.HorizontalAlignment = 'center';
            app.BrightnessSliderLabel_ParameterMaps.Position = [1196 352 62 22];
            app.BrightnessSliderLabel_ParameterMaps.Text = 'Brightness';

            % Create BrightnessSlider_PostMap
            app.BrightnessSlider_PostMap = uislider(app.ParameterMapsTab);
            app.BrightnessSlider_PostMap.Limits = [-1 1];
            app.BrightnessSlider_PostMap.MajorTicks = 0;
            app.BrightnessSlider_PostMap.Orientation = 'vertical';
            app.BrightnessSlider_PostMap.ValueChangingFcn = createCallbackFcn(app, @BrightnessSlider_PostMapValueChanging, true);
            app.BrightnessSlider_PostMap.MinorTicks = [];
            app.BrightnessSlider_PostMap.BusyAction = 'cancel';
            app.BrightnessSlider_PostMap.Enable = 'off';
            app.BrightnessSlider_PostMap.Position = [1225 382 3 150];

            % Create ContrastSliderLabel_ParameterMaps
            app.ContrastSliderLabel_ParameterMaps = uilabel(app.ParameterMapsTab);
            app.ContrastSliderLabel_ParameterMaps.HorizontalAlignment = 'center';
            app.ContrastSliderLabel_ParameterMaps.Position = [1200 154 51 22];
            app.ContrastSliderLabel_ParameterMaps.Text = 'Contrast';

            % Create ContrastSlider_PostMap
            app.ContrastSlider_PostMap = uislider(app.ParameterMapsTab);
            app.ContrastSlider_PostMap.Limits = [-1 1];
            app.ContrastSlider_PostMap.MajorTicks = 0;
            app.ContrastSlider_PostMap.Orientation = 'vertical';
            app.ContrastSlider_PostMap.ValueChangingFcn = createCallbackFcn(app, @ContrastSlider_PostMapValueChanging, true);
            app.ContrastSlider_PostMap.MinorTicks = [];
            app.ContrastSlider_PostMap.BusyAction = 'cancel';
            app.ContrastSlider_PostMap.Enable = 'off';
            app.ContrastSlider_PostMap.Position = [1224 184 3 150];

            % Create ColormapButtonGroup_PostMap
            app.ColormapButtonGroup_PostMap = uibuttongroup(app.ParameterMapsTab);
            app.ColormapButtonGroup_PostMap.SelectionChangedFcn = createCallbackFcn(app, @ColormapButtonGroup_PostMapSelectionChanged, true);
            app.ColormapButtonGroup_PostMap.BorderType = 'none';
            app.ColormapButtonGroup_PostMap.TitlePosition = 'centertop';
            app.ColormapButtonGroup_PostMap.Title = 'Colormap';
            app.ColormapButtonGroup_PostMap.Position = [878 45 168 38];

            % Create GreyscaleButton_PostMap
            app.GreyscaleButton_PostMap = uiradiobutton(app.ColormapButtonGroup_PostMap);
            app.GreyscaleButton_PostMap.Enable = 'off';
            app.GreyscaleButton_PostMap.Text = 'Greyscale';
            app.GreyscaleButton_PostMap.Position = [94 -3 76 22];
            app.GreyscaleButton_PostMap.Value = true;

            % Create TurboButton_PostMap
            app.TurboButton_PostMap = uiradiobutton(app.ColormapButtonGroup_PostMap);
            app.TurboButton_PostMap.Enable = 'off';
            app.TurboButton_PostMap.Text = 'Turbo';
            app.TurboButton_PostMap.Position = [2 -3 65 22];

            % Create DSCMappingOptionsPanel
            app.DSCMappingOptionsPanel = uipanel(app.ParameterMapsTab);
            app.DSCMappingOptionsPanel.BorderType = 'none';
            app.DSCMappingOptionsPanel.TitlePosition = 'centertop';
            app.DSCMappingOptionsPanel.Title = 'DSC Mapping Options';
            app.DSCMappingOptionsPanel.Position = [518 170 200 378];

            % Create CalculateDSCmapsButton
            app.CalculateDSCmapsButton = uibutton(app.DSCMappingOptionsPanel, 'push');
            app.CalculateDSCmapsButton.ButtonPushedFcn = createCallbackFcn(app, @CalculateDSCmapsButtonPushed, true);
            app.CalculateDSCmapsButton.Position = [38 226 128 22];
            app.CalculateDSCmapsButton.Text = 'Calculate DSC maps';

            % Create MethodButtonGroup
            app.MethodButtonGroup = uibuttongroup(app.DSCMappingOptionsPanel);
            app.MethodButtonGroup.BorderType = 'none';
            app.MethodButtonGroup.TitlePosition = 'centertop';
            app.MethodButtonGroup.Title = 'Method';
            app.MethodButtonGroup.Position = [53 17 100 112];

            % Create SVDButton
            app.SVDButton = uiradiobutton(app.MethodButtonGroup);
            app.SVDButton.Text = 'SVD';
            app.SVDButton.Position = [22 65 52 22];
            app.SVDButton.Value = true;

            % Create cSVDButton
            app.cSVDButton = uiradiobutton(app.MethodButtonGroup);
            app.cSVDButton.Text = 'cSVD';
            app.cSVDButton.Position = [22 38 52 22];

            % Create oSVDButton
            app.oSVDButton = uiradiobutton(app.MethodButtonGroup);
            app.oSVDButton.Text = 'oSVD';
            app.oSVDButton.Position = [22 11 52 22];

            % Create AdvancedSettingsButton
            app.AdvancedSettingsButton = uibutton(app.DSCMappingOptionsPanel, 'push');
            app.AdvancedSettingsButton.ButtonPushedFcn = createCallbackFcn(app, @AdvancedSettingsButtonPushed, true);
            app.AdvancedSettingsButton.Position = [38 259 128 22];
            app.AdvancedSettingsButton.Text = 'Advanced Settings';

            % Create DSCMapDropDownLabel
            app.DSCMapDropDownLabel = uilabel(app.DSCMappingOptionsPanel);
            app.DSCMapDropDownLabel.HorizontalAlignment = 'center';
            app.DSCMapDropDownLabel.Position = [51 172 101 22];
            app.DSCMapDropDownLabel.Text = 'DSC Map';

            % Create DSCMapDropDown
            app.DSCMapDropDown = uidropdown(app.DSCMappingOptionsPanel);
            app.DSCMapDropDown.Items = {'CBF', 'CBV', 'MTT'};
            app.DSCMapDropDown.ValueChangedFcn = createCallbackFcn(app, @DSCMapDropDownValueChanged, true);
            app.DSCMapDropDown.Enable = 'off';
            app.DSCMapDropDown.Position = [72 143 61 23];
            app.DSCMapDropDown.Value = 'CBF';

            % Create AIFExtractionSliceSpinnerLabel
            app.AIFExtractionSliceSpinnerLabel = uilabel(app.DSCMappingOptionsPanel);
            app.AIFExtractionSliceSpinnerLabel.HorizontalAlignment = 'right';
            app.AIFExtractionSliceSpinnerLabel.Position = [37 324 131 22];
            app.AIFExtractionSliceSpinnerLabel.Text = 'Slice For AIF Extraction';

            % Create AIFExtractionSliceSpinner
            app.AIFExtractionSliceSpinner = uispinner(app.DSCMappingOptionsPanel);
            app.AIFExtractionSliceSpinner.HorizontalAlignment = 'center';
            app.AIFExtractionSliceSpinner.Position = [77 296 51 22];
            app.AIFExtractionSliceSpinner.Value = 1;

            % Create SliceSpinner_PostMap
            app.SliceSpinner_PostMap = uispinner(app.ParameterMapsTab);
            app.SliceSpinner_PostMap.ValueChangedFcn = createCallbackFcn(app, @SliceSpinner_PostMapValueChanged, true);
            app.SliceSpinner_PostMap.HorizontalAlignment = 'center';
            app.SliceSpinner_PostMap.Enable = 'off';
            app.SliceSpinner_PostMap.Position = [1080 97 57 22];
            app.SliceSpinner_PostMap.Value = 1;

            % Create SliceLabel_ParameterMaps_PostMap
            app.SliceLabel_ParameterMaps_PostMap = uilabel(app.ParameterMapsTab);
            app.SliceLabel_ParameterMaps_PostMap.HorizontalAlignment = 'right';
            app.SliceLabel_ParameterMaps_PostMap.Position = [787 97 31 22];
            app.SliceLabel_ParameterMaps_PostMap.Text = 'Slice';

            % Create SliceSlider_PostMap
            app.SliceSlider_PostMap = uislider(app.ParameterMapsTab);
            app.SliceSlider_PostMap.Limits = [1 100];
            app.SliceSlider_PostMap.MajorTicks = [];
            app.SliceSlider_PostMap.MajorTickLabels = {};
            app.SliceSlider_PostMap.ValueChangingFcn = createCallbackFcn(app, @SliceSlider_PostMapValueChanging, true);
            app.SliceSlider_PostMap.MinorTicks = [];
            app.SliceSlider_PostMap.Enable = 'off';
            app.SliceSlider_PostMap.Position = [839 106 221 3];
            app.SliceSlider_PostMap.Value = 1;

            % Create SaveDataButton_Map
            app.SaveDataButton_Map = uibutton(app.ParameterMapsTab, 'push');
            app.SaveDataButton_Map.ButtonPushedFcn = createCallbackFcn(app, @SaveDataButton_MapPushed, true);
            app.SaveDataButton_Map.Enable = 'off';
            app.SaveDataButton_Map.Position = [975 582 129 22];
            app.SaveDataButton_Map.Text = 'Save Parameter Map';

            % Create ExportDataButton_Map
            app.ExportDataButton_Map = uibutton(app.ParameterMapsTab, 'push');
            app.ExportDataButton_Map.ButtonPushedFcn = createCallbackFcn(app, @ExportDataButton_MapPushed, true);
            app.ExportDataButton_Map.Enable = 'off';
            app.ExportDataButton_Map.Position = [820 582 136 22];
            app.ExportDataButton_Map.Text = 'Export Parameter Map';

            % Create OptimizationOptionsPanel
            app.OptimizationOptionsPanel = uipanel(app.ParameterMapsTab);
            app.OptimizationOptionsPanel.BorderType = 'none';
            app.OptimizationOptionsPanel.TitlePosition = 'centertop';
            app.OptimizationOptionsPanel.Title = 'Optimization Options';
            app.OptimizationOptionsPanel.Visible = 'off';
            app.OptimizationOptionsPanel.Position = [518 24 200 242];

            % Create fxToleranceEditFieldLabel
            app.fxToleranceEditFieldLabel = uilabel(app.OptimizationOptionsPanel);
            app.fxToleranceEditFieldLabel.HorizontalAlignment = 'right';
            app.fxToleranceEditFieldLabel.Position = [7 194 125 22];
            app.fxToleranceEditFieldLabel.Text = 'f(x) Tolerance';

            % Create fxToleranceEditField
            app.fxToleranceEditField = uieditfield(app.OptimizationOptionsPanel, 'numeric');
            app.fxToleranceEditField.ValueDisplayFormat = '%1.1e';
            app.fxToleranceEditField.Position = [138 194 56 22];
            app.fxToleranceEditField.Value = 0.001;

            % Create OptimalityToleranceEditFieldLabel
            app.OptimalityToleranceEditFieldLabel = uilabel(app.OptimizationOptionsPanel);
            app.OptimalityToleranceEditFieldLabel.HorizontalAlignment = 'right';
            app.OptimalityToleranceEditFieldLabel.Position = [7 164 125 22];
            app.OptimalityToleranceEditFieldLabel.Text = 'Optimality Tolerance';

            % Create OptimalityToleranceEditField
            app.OptimalityToleranceEditField = uieditfield(app.OptimizationOptionsPanel, 'numeric');
            app.OptimalityToleranceEditField.ValueDisplayFormat = '%1.1e';
            app.OptimalityToleranceEditField.Position = [138 165 56 22];
            app.OptimalityToleranceEditField.Value = 0.001;

            % Create StepToleranceEditFieldLabel
            app.StepToleranceEditFieldLabel = uilabel(app.OptimizationOptionsPanel);
            app.StepToleranceEditFieldLabel.HorizontalAlignment = 'right';
            app.StepToleranceEditFieldLabel.Position = [7 132 125 22];
            app.StepToleranceEditFieldLabel.Text = 'Step Tolerance';

            % Create StepToleranceEditField
            app.StepToleranceEditField = uieditfield(app.OptimizationOptionsPanel, 'numeric');
            app.StepToleranceEditField.ValueDisplayFormat = '%1.1e';
            app.StepToleranceEditField.Position = [138 134 56 22];
            app.StepToleranceEditField.Value = 0.001;

            % Create dfStepSizeEditFieldLabel
            app.dfStepSizeEditFieldLabel = uilabel(app.OptimizationOptionsPanel);
            app.dfStepSizeEditFieldLabel.HorizontalAlignment = 'right';
            app.dfStepSizeEditFieldLabel.Position = [7 101 125 22];
            app.dfStepSizeEditFieldLabel.Text = 'd(f) Step Size';

            % Create dfStepSizeEditField
            app.dfStepSizeEditField = uieditfield(app.OptimizationOptionsPanel, 'numeric');
            app.dfStepSizeEditField.ValueDisplayFormat = '%1.1e';
            app.dfStepSizeEditField.Position = [138 102 56 22];
            app.dfStepSizeEditField.Value = 0.0001;

            % Create MaxNrofEvaluationsEditFieldLabel
            app.MaxNrofEvaluationsEditFieldLabel = uilabel(app.OptimizationOptionsPanel);
            app.MaxNrofEvaluationsEditFieldLabel.HorizontalAlignment = 'right';
            app.MaxNrofEvaluationsEditFieldLabel.Position = [6 71 126 22];
            app.MaxNrofEvaluationsEditFieldLabel.Text = 'Max Nr. of Evaluations';

            % Create MaxNrofEvaluationsEditField
            app.MaxNrofEvaluationsEditField = uieditfield(app.OptimizationOptionsPanel, 'numeric');
            app.MaxNrofEvaluationsEditField.ValueDisplayFormat = '%1.1e';
            app.MaxNrofEvaluationsEditField.Position = [138 72 56 22];
            app.MaxNrofEvaluationsEditField.Value = 10;

            % Create MaxNrofIterationsEditFieldLabel
            app.MaxNrofIterationsEditFieldLabel = uilabel(app.OptimizationOptionsPanel);
            app.MaxNrofIterationsEditFieldLabel.HorizontalAlignment = 'right';
            app.MaxNrofIterationsEditFieldLabel.Position = [8 41 123 22];
            app.MaxNrofIterationsEditFieldLabel.Text = 'Max Nr. of Iterations';

            % Create MaxNrofIterationsEditField
            app.MaxNrofIterationsEditField = uieditfield(app.OptimizationOptionsPanel, 'numeric');
            app.MaxNrofIterationsEditField.ValueDisplayFormat = '%1.1e';
            app.MaxNrofIterationsEditField.Position = [138 41 56 22];
            app.MaxNrofIterationsEditField.Value = 10;

            % Create ResettodefaultsButton
            app.ResettodefaultsButton = uibutton(app.OptimizationOptionsPanel, 'push');
            app.ResettodefaultsButton.ButtonPushedFcn = createCallbackFcn(app, @ResettodefaultsButtonPushed, true);
            app.ResettodefaultsButton.Position = [48 9 106 22];
            app.ResettodefaultsButton.Text = 'Reset to defaults';

            % Create T2OptionsPanel
            app.T2OptionsPanel = uipanel(app.ParameterMapsTab);
            app.T2OptionsPanel.BorderType = 'none';
            app.T2OptionsPanel.TitlePosition = 'centertop';
            app.T2OptionsPanel.Title = 'T2 Mapping Options';
            app.T2OptionsPanel.Visible = 'off';
            app.T2OptionsPanel.Position = [518 375 200 173];

            % Create TEvaluesLabel
            app.TEvaluesLabel = uilabel(app.T2OptionsPanel);
            app.TEvaluesLabel.HorizontalAlignment = 'center';
            app.TEvaluesLabel.Position = [71 121 59 22];
            app.TEvaluesLabel.Text = 'TE Values';

            % Create TEvaluesText
            app.TEvaluesText = uitextarea(app.T2OptionsPanel);
            app.TEvaluesText.Position = [26 53 150 60];

            % Create CalculateT2MapButton
            app.CalculateT2MapButton = uibutton(app.T2OptionsPanel, 'push');
            app.CalculateT2MapButton.ButtonPushedFcn = createCallbackFcn(app, @CalculateT2MapButtonPushed, true);
            app.CalculateT2MapButton.Position = [46 15 109 22];
            app.CalculateT2MapButton.Text = 'Calculate T2 Map';

            % Create T1OptionsPanel
            app.T1OptionsPanel = uipanel(app.ParameterMapsTab);
            app.T1OptionsPanel.BorderType = 'none';
            app.T1OptionsPanel.TitlePosition = 'centertop';
            app.T1OptionsPanel.Title = 'T1 Mapping Options';
            app.T1OptionsPanel.Visible = 'off';
            app.T1OptionsPanel.Position = [518 280 200 268];

            % Create TRvaluesLabel
            app.TRvaluesLabel = uilabel(app.T1OptionsPanel);
            app.TRvaluesLabel.HorizontalAlignment = 'center';
            app.TRvaluesLabel.Position = [71 216 60 22];
            app.TRvaluesLabel.Text = 'TR Values';

            % Create TRvaluesText
            app.TRvaluesText = uitextarea(app.T1OptionsPanel);
            app.TRvaluesText.Position = [26 148 150 60];

            % Create CalculateT1MapButton
            app.CalculateT1MapButton = uibutton(app.T1OptionsPanel, 'push');
            app.CalculateT1MapButton.ButtonPushedFcn = createCallbackFcn(app, @CalculateT1MapButtonPushed, true);
            app.CalculateT1MapButton.Position = [48 14 109 22];
            app.CalculateT1MapButton.Text = 'Calculate T1 Map';

            % Create TIvaluesLabel
            app.TIvaluesLabel = uilabel(app.T1OptionsPanel);
            app.TIvaluesLabel.HorizontalAlignment = 'center';
            app.TIvaluesLabel.Position = [74 117 54 22];
            app.TIvaluesLabel.Text = 'TI Values';

            % Create TIvaluesText
            app.TIvaluesText = uitextarea(app.T1OptionsPanel);
            app.TIvaluesText.Position = [26 49 150 60];

            % Create FAIRpASLMappingoptionsPanel
            app.FAIRpASLMappingoptionsPanel = uipanel(app.ParameterMapsTab);
            app.FAIRpASLMappingoptionsPanel.BorderType = 'none';
            app.FAIRpASLMappingoptionsPanel.TitlePosition = 'centertop';
            app.FAIRpASLMappingoptionsPanel.Title = 'FAIR pASL Mapping options';
            app.FAIRpASLMappingoptionsPanel.Visible = 'off';
            app.FAIRpASLMappingoptionsPanel.Position = [518 370 200 178];

            % Create BloodT1sEditFieldLabel
            app.BloodT1sEditFieldLabel = uilabel(app.FAIRpASLMappingoptionsPanel);
            app.BloodT1sEditFieldLabel.HorizontalAlignment = 'right';
            app.BloodT1sEditFieldLabel.Position = [28 47 71 22];
            app.BloodT1sEditFieldLabel.Text = 'Blood T1 (s)';

            % Create BloodT1sEditField
            app.BloodT1sEditField = uieditfield(app.FAIRpASLMappingoptionsPanel, 'numeric');
            app.BloodT1sEditField.Position = [111 47 60 22];
            app.BloodT1sEditField.Value = 2.4;

            % Create ExperimentorderButtonGroup
            app.ExperimentorderButtonGroup = uibuttongroup(app.FAIRpASLMappingoptionsPanel);
            app.ExperimentorderButtonGroup.BorderType = 'none';
            app.ExperimentorderButtonGroup.TitlePosition = 'centertop';
            app.ExperimentorderButtonGroup.Title = 'Experiment order';
            app.ExperimentorderButtonGroup.Position = [28 75 143 79];

            % Create SliceSelectiveFirstButton
            app.SliceSelectiveFirstButton = uiradiobutton(app.ExperimentorderButtonGroup);
            app.SliceSelectiveFirstButton.Text = 'Slice Selective First';
            app.SliceSelectiveFirstButton.Position = [11 34 127 22];
            app.SliceSelectiveFirstButton.Value = true;

            % Create NonSelectiveFirstButton
            app.NonSelectiveFirstButton = uiradiobutton(app.ExperimentorderButtonGroup);
            app.NonSelectiveFirstButton.Text = 'Non-Selective First';
            app.NonSelectiveFirstButton.Position = [11 12 123 22];

            % Create CalculatepASLMapButton
            app.CalculatepASLMapButton = uibutton(app.FAIRpASLMappingoptionsPanel, 'push');
            app.CalculatepASLMapButton.ButtonPushedFcn = createCallbackFcn(app, @CalculatepASLMapButtonPushed, true);
            app.CalculatepASLMapButton.Position = [38 13 124 23];
            app.CalculatepASLMapButton.Text = 'Calculate pASL Map';

            % Create DViewerTab
            app.DViewerTab = uitab(app.TabGroup);
            app.DViewerTab.Title = '3D Viewer';

            % Create UIAxes_AlphaMap
            app.UIAxes_AlphaMap = uiaxes(app.DViewerTab);
            app.UIAxes_AlphaMap.GridLineStyle = 'none';
            app.UIAxes_AlphaMap.MinorGridLineStyle = 'none';
            app.UIAxes_AlphaMap.XTick = [];
            app.UIAxes_AlphaMap.YTick = [];
            app.UIAxes_AlphaMap.ZTick = [];
            app.UIAxes_AlphaMap.Box = 'on';
            app.UIAxes_AlphaMap.Position = [974 34 263 218];

            % Create ViewerPanel
            app.ViewerPanel = uipanel(app.DViewerTab);
            app.ViewerPanel.BorderType = 'none';
            app.ViewerPanel.TitlePosition = 'centertop';
            app.ViewerPanel.Title = 'Viewer';
            app.ViewerPanel.BackgroundColor = [1 1 1];
            app.ViewerPanel.Position = [23 70 903 608];

            % Create Select3DViewerLabel
            app.Select3DViewerLabel = uilabel(app.DViewerTab);
            app.Select3DViewerLabel.HorizontalAlignment = 'right';
            app.Select3DViewerLabel.Position = [1031 653 147 22];
            app.Select3DViewerLabel.Text = 'Select Experiment To View';

            % Create Select3DViewerDropDown
            app.Select3DViewerDropDown = uidropdown(app.DViewerTab);
            app.Select3DViewerDropDown.Items = {'None'};
            app.Select3DViewerDropDown.ValueChangedFcn = createCallbackFcn(app, @Select3DViewerDropDownValueChanged, true);
            app.Select3DViewerDropDown.Placeholder = 'None';
            app.Select3DViewerDropDown.Position = [971 623 268 21];
            app.Select3DViewerDropDown.Value = 'None';

            % Create RenderingStyleDropDownLabel
            app.RenderingStyleDropDownLabel = uilabel(app.DViewerTab);
            app.RenderingStyleDropDownLabel.HorizontalAlignment = 'center';
            app.RenderingStyleDropDownLabel.Position = [1060 474 90 22];
            app.RenderingStyleDropDownLabel.Text = 'Rendering Style';

            % Create RenderingStyleDropDown
            app.RenderingStyleDropDown = uidropdown(app.DViewerTab);
            app.RenderingStyleDropDown.Items = {'Volume Rendering', 'Maximum Intensity Projection', 'Minimum Intensity Projection', 'Slice Planes', 'Gradient Opacity', 'Isosurface'};
            app.RenderingStyleDropDown.ValueChangedFcn = createCallbackFcn(app, @RenderingStyleDropDownValueChanged, true);
            app.RenderingStyleDropDown.Enable = 'off';
            app.RenderingStyleDropDown.Tooltip = {''};
            app.RenderingStyleDropDown.Position = [1007 446 196 22];
            app.RenderingStyleDropDown.Value = 'Volume Rendering';

            % Create ColormapDropDownLabel_Viewer
            app.ColormapDropDownLabel_Viewer = uilabel(app.DViewerTab);
            app.ColormapDropDownLabel_Viewer.HorizontalAlignment = 'center';
            app.ColormapDropDownLabel_Viewer.Position = [1077 404 57 22];
            app.ColormapDropDownLabel_Viewer.Text = 'Colormap';

            % Create ColormapDropDown_Viewer
            app.ColormapDropDown_Viewer = uidropdown(app.DViewerTab);
            app.ColormapDropDown_Viewer.Items = {'Greyscale', 'Turbo', 'Hot', 'Jet', 'Parula', 'Sky', 'Cool', 'Copper', 'Bone'};
            app.ColormapDropDown_Viewer.ValueChangedFcn = createCallbackFcn(app, @ColormapDropDown_ViewerValueChanged, true);
            app.ColormapDropDown_Viewer.Enable = 'off';
            app.ColormapDropDown_Viewer.Tooltip = {''};
            app.ColormapDropDown_Viewer.Position = [1007 376 196 22];
            app.ColormapDropDown_Viewer.Value = 'Greyscale';

            % Create AlphamapDropDownLabel_Viewer
            app.AlphamapDropDownLabel_Viewer = uilabel(app.DViewerTab);
            app.AlphamapDropDownLabel_Viewer.HorizontalAlignment = 'center';
            app.AlphamapDropDownLabel_Viewer.Position = [1076 296 59 22];
            app.AlphamapDropDownLabel_Viewer.Text = 'Alphamap';

            % Create AlphamapDropDown_Viewer
            app.AlphamapDropDown_Viewer = uidropdown(app.DViewerTab);
            app.AlphamapDropDown_Viewer.Items = {'Linear', 'MRI', 'MRI-mip'};
            app.AlphamapDropDown_Viewer.ValueChangedFcn = createCallbackFcn(app, @AlphamapDropDown_ViewerValueChanged, true);
            app.AlphamapDropDown_Viewer.Enable = 'off';
            app.AlphamapDropDown_Viewer.Tooltip = {''};
            app.AlphamapDropDown_Viewer.Position = [1007 268 196 22];
            app.AlphamapDropDown_Viewer.Value = 'Linear';

            % Create ColormapImage_Viewer
            app.ColormapImage_Viewer = uiimage(app.DViewerTab);
            app.ColormapImage_Viewer.Visible = 'off';
            app.ColormapImage_Viewer.Position = [983 345 244 21];

            % Create Dim5Spinner_ViewerLabel
            app.Dim5Spinner_ViewerLabel = uilabel(app.DViewerTab);
            app.Dim5Spinner_ViewerLabel.HorizontalAlignment = 'right';
            app.Dim5Spinner_ViewerLabel.Position = [497 32 44 22];
            app.Dim5Spinner_ViewerLabel.Text = 'Dim - 5';

            % Create Dim5Spinner_Viewer
            app.Dim5Spinner_Viewer = uispinner(app.DViewerTab);
            app.Dim5Spinner_Viewer.ValueChangedFcn = createCallbackFcn(app, @Dim5Spinner_ViewerValueChanged, true);
            app.Dim5Spinner_Viewer.Enable = 'off';
            app.Dim5Spinner_Viewer.Position = [553 32 51 22];
            app.Dim5Spinner_Viewer.Value = 1;

            % Create Dim4Spinner_ViewerLabel
            app.Dim4Spinner_ViewerLabel = uilabel(app.DViewerTab);
            app.Dim4Spinner_ViewerLabel.HorizontalAlignment = 'right';
            app.Dim4Spinner_ViewerLabel.Position = [368 32 44 22];
            app.Dim4Spinner_ViewerLabel.Text = 'Dim - 4';

            % Create Dim4Spinner_Viewer
            app.Dim4Spinner_Viewer = uispinner(app.DViewerTab);
            app.Dim4Spinner_Viewer.ValueChangedFcn = createCallbackFcn(app, @Dim4Spinner_ViewerValueChanged, true);
            app.Dim4Spinner_Viewer.Enable = 'off';
            app.Dim4Spinner_Viewer.Position = [423 32 51 22];
            app.Dim4Spinner_Viewer.Value = 1;

            % Create DisplayedSliceRangeLabel
            app.DisplayedSliceRangeLabel = uilabel(app.DViewerTab);
            app.DisplayedSliceRangeLabel.HorizontalAlignment = 'center';
            app.DisplayedSliceRangeLabel.Position = [63 32 126 22];
            app.DisplayedSliceRangeLabel.Text = 'Displayed Slice Range';

            % Create SliceRangeLowSpinner_Viewer
            app.SliceRangeLowSpinner_Viewer = uispinner(app.DViewerTab);
            app.SliceRangeLowSpinner_Viewer.ValueChangedFcn = createCallbackFcn(app, @SliceRangeLowSpinner_ViewerValueChanged, true);
            app.SliceRangeLowSpinner_Viewer.Enable = 'off';
            app.SliceRangeLowSpinner_Viewer.Position = [199 32 51 22];
            app.SliceRangeLowSpinner_Viewer.Value = 1;

            % Create SliceRangeHighSpinner_Viewer
            app.SliceRangeHighSpinner_Viewer = uispinner(app.DViewerTab);
            app.SliceRangeHighSpinner_Viewer.ValueChangedFcn = createCallbackFcn(app, @SliceRangeHighSpinner_ViewerValueChanged, true);
            app.SliceRangeHighSpinner_Viewer.Enable = 'off';
            app.SliceRangeHighSpinner_Viewer.Position = [285 32 51 22];
            app.SliceRangeHighSpinner_Viewer.Value = 1;

            % Create DashLabel
            app.DashLabel = uilabel(app.DViewerTab);
            app.DashLabel.HorizontalAlignment = 'center';
            app.DashLabel.FontWeight = 'bold';
            app.DashLabel.Position = [256 31 19 25];
            app.DashLabel.Text = '-';

            % Create OverlayButton
            app.OverlayButton = uibutton(app.DViewerTab, 'state');
            app.OverlayButton.ValueChangedFcn = createCallbackFcn(app, @OverlayButtonValueChanged, true);
            app.OverlayButton.Enable = 'off';
            app.OverlayButton.Text = 'Overlay';
            app.OverlayButton.Position = [638 32 100 23];

            % Create DataDimensionsPanel
            app.DataDimensionsPanel = uipanel(app.DViewerTab);
            app.DataDimensionsPanel.BorderType = 'none';
            app.DataDimensionsPanel.TitlePosition = 'centertop';
            app.DataDimensionsPanel.Title = 'Data Dimensions';
            app.DataDimensionsPanel.Position = [995 519 221 80];

            % Create YEditFieldLabel_Viewer
            app.YEditFieldLabel_Viewer = uilabel(app.DataDimensionsPanel);
            app.YEditFieldLabel_Viewer.HorizontalAlignment = 'center';
            app.YEditFieldLabel_Viewer.Position = [102 32 25 22];
            app.YEditFieldLabel_Viewer.Text = 'Y';

            % Create YEditField_Viewer
            app.YEditField_Viewer = uieditfield(app.DataDimensionsPanel, 'numeric');
            app.YEditField_Viewer.ValueChangedFcn = createCallbackFcn(app, @YEditField_ViewerValueChanged, true);
            app.YEditField_Viewer.Position = [84 8 59 22];

            % Create XEditFieldLabel_Viewer
            app.XEditFieldLabel_Viewer = uilabel(app.DataDimensionsPanel);
            app.XEditFieldLabel_Viewer.HorizontalAlignment = 'center';
            app.XEditFieldLabel_Viewer.Position = [24 33 25 22];
            app.XEditFieldLabel_Viewer.Text = 'X';

            % Create XEditField_Viewer
            app.XEditField_Viewer = uieditfield(app.DataDimensionsPanel, 'numeric');
            app.XEditField_Viewer.ValueChangedFcn = createCallbackFcn(app, @XEditField_ViewerValueChanged, true);
            app.XEditField_Viewer.Position = [6 9 59 22];

            % Create ZEditFieldLabel_Viewer
            app.ZEditFieldLabel_Viewer = uilabel(app.DataDimensionsPanel);
            app.ZEditFieldLabel_Viewer.HorizontalAlignment = 'center';
            app.ZEditFieldLabel_Viewer.Position = [176 33 25 22];
            app.ZEditFieldLabel_Viewer.Text = 'Z';

            % Create ZEditField_Viewer
            app.ZEditField_Viewer = uieditfield(app.DataDimensionsPanel, 'numeric');
            app.ZEditField_Viewer.ValueChangedFcn = createCallbackFcn(app, @ZEditField_ViewerValueChanged, true);
            app.ZEditField_Viewer.Position = [158 9 59 22];

            % Create SavesceneimageButton
            app.SavesceneimageButton = uibutton(app.DViewerTab, 'push');
            app.SavesceneimageButton.ButtonPushedFcn = createCallbackFcn(app, @SavesceneimageButtonPushed, true);
            app.SavesceneimageButton.Enable = 'off';
            app.SavesceneimageButton.Position = [772 32 114 23];
            app.SavesceneimageButton.Text = 'Save scene image';

            % Create ContextMenu_Preview
            app.ContextMenu_Preview = uicontextmenu(app.BrukKitAlphav0860UIFigure);

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
            app.ContextMenu_Segmenter = uicontextmenu(app.BrukKitAlphav0860UIFigure);

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

            % Create ContextMenu_PreMap
            app.ContextMenu_PreMap = uicontextmenu(app.BrukKitAlphav0860UIFigure);

            % Create RotateMenu_PreMap
            app.RotateMenu_PreMap = uimenu(app.ContextMenu_PreMap);
            app.RotateMenu_PreMap.MenuSelectedFcn = createCallbackFcn(app, @RotateMenu_PreMapSelected, true);
            app.RotateMenu_PreMap.Text = 'Rotate';

            % Create FlipVerticallyMenu_PreMap
            app.FlipVerticallyMenu_PreMap = uimenu(app.ContextMenu_PreMap);
            app.FlipVerticallyMenu_PreMap.MenuSelectedFcn = createCallbackFcn(app, @FlipVerticallyMenu_PreMapSelected, true);
            app.FlipVerticallyMenu_PreMap.Text = 'Flip Vertically';

            % Create FlipHorizontallyMenu_PreMap
            app.FlipHorizontallyMenu_PreMap = uimenu(app.ContextMenu_PreMap);
            app.FlipHorizontallyMenu_PreMap.MenuSelectedFcn = createCallbackFcn(app, @FlipHorizontallyMenu_PreMapSelected, true);
            app.FlipHorizontallyMenu_PreMap.Text = 'Flip Horizontally';

            % Create ResetViewMenu_PreMap
            app.ResetViewMenu_PreMap = uimenu(app.ContextMenu_PreMap);
            app.ResetViewMenu_PreMap.MenuSelectedFcn = createCallbackFcn(app, @ResetViewMenu_PreMapSelected, true);
            app.ResetViewMenu_PreMap.Text = 'Reset View';

            % Create PermuteDimensionsMenu_PreMap
            app.PermuteDimensionsMenu_PreMap = uimenu(app.ContextMenu_PreMap);
            app.PermuteDimensionsMenu_PreMap.Text = 'Permute Dimensions';

            % Create PermuteMenu_3_4_PreMap
            app.PermuteMenu_3_4_PreMap = uimenu(app.PermuteDimensionsMenu_PreMap);
            app.PermuteMenu_3_4_PreMap.MenuSelectedFcn = createCallbackFcn(app, @PermuteMenu_3_4_PreMapSelected, true);
            app.PermuteMenu_3_4_PreMap.Text = '3-4';

            % Create PermuteMenu_3_5_PreMap
            app.PermuteMenu_3_5_PreMap = uimenu(app.PermuteDimensionsMenu_PreMap);
            app.PermuteMenu_3_5_PreMap.MenuSelectedFcn = createCallbackFcn(app, @PermuteMenu_3_5_PreMapSelected, true);
            app.PermuteMenu_3_5_PreMap.Text = '3-5';

            % Create PermuteMenu_4_5_PreMap
            app.PermuteMenu_4_5_PreMap = uimenu(app.PermuteDimensionsMenu_PreMap);
            app.PermuteMenu_4_5_PreMap.MenuSelectedFcn = createCallbackFcn(app, @PermuteMenu_4_5_PreMapSelected, true);
            app.PermuteMenu_4_5_PreMap.Text = '4-5';

            % Create ContextMenuEdema
            app.ContextMenuEdema = uicontextmenu(app.BrukKitAlphav0860UIFigure);

            % Create HemisphereScalingFactorMenu
            app.HemisphereScalingFactorMenu = uimenu(app.ContextMenuEdema);
            app.HemisphereScalingFactorMenu.MenuSelectedFcn = createCallbackFcn(app, @HemisphereScalingFactorMenuSelected, true);
            app.HemisphereScalingFactorMenu.Tooltip = {'ROI = ROI*(Contralateral/Ipsilateral)'};
            app.HemisphereScalingFactorMenu.Checked = 'on';
            app.HemisphereScalingFactorMenu.Text = 'Hemisphere Scaling Factor';

            % Create BelayevScalingFactorMenu
            app.BelayevScalingFactorMenu = uimenu(app.ContextMenuEdema);
            app.BelayevScalingFactorMenu.MenuSelectedFcn = createCallbackFcn(app, @BelayevScalingFactorMenuSelected, true);
            app.BelayevScalingFactorMenu.Tooltip = {'ROI = ROI*[1-(Ipsilateral-Contralateral)/Contralateral]'};
            app.BelayevScalingFactorMenu.Text = 'Belayev Scaling Factor';

            % Create GerrietsCompressionFactorMenu
            app.GerrietsCompressionFactorMenu = uimenu(app.ContextMenuEdema);
            app.GerrietsCompressionFactorMenu.MenuSelectedFcn = createCallbackFcn(app, @GerrietsCompressionFactorMenuSelected, true);
            app.GerrietsCompressionFactorMenu.Tooltip = {'Check documentation for detailed formula.'};
            app.GerrietsCompressionFactorMenu.Text = 'Gerriets Compression Factor';
            
            % Assign app.ContextMenuEdema
            app.ApplyEdemaCorrectionCheckBox.ContextMenu = app.ContextMenuEdema;

            % Create ContextMenu_PostMap
            app.ContextMenu_PostMap = uicontextmenu(app.BrukKitAlphav0860UIFigure);

            % Create RotateMenu_PostMap
            app.RotateMenu_PostMap = uimenu(app.ContextMenu_PostMap);
            app.RotateMenu_PostMap.MenuSelectedFcn = createCallbackFcn(app, @RotateMenu_PostMapSelected, true);
            app.RotateMenu_PostMap.Text = 'Rotate';

            % Create FlipVerticallyMenu_PostMap
            app.FlipVerticallyMenu_PostMap = uimenu(app.ContextMenu_PostMap);
            app.FlipVerticallyMenu_PostMap.MenuSelectedFcn = createCallbackFcn(app, @FlipVerticallyMenu_PostMapSelected, true);
            app.FlipVerticallyMenu_PostMap.Text = 'Flip Vertically';

            % Create FlipHorizontallyMenu_PostMap
            app.FlipHorizontallyMenu_PostMap = uimenu(app.ContextMenu_PostMap);
            app.FlipHorizontallyMenu_PostMap.MenuSelectedFcn = createCallbackFcn(app, @FlipHorizontallyMenu_PostMapSelected, true);
            app.FlipHorizontallyMenu_PostMap.Text = 'Flip Horizontally';

            % Create ResetViewMenu_PostMap
            app.ResetViewMenu_PostMap = uimenu(app.ContextMenu_PostMap);
            app.ResetViewMenu_PostMap.MenuSelectedFcn = createCallbackFcn(app, @ResetViewMenu_PostMapSelected, true);
            app.ResetViewMenu_PostMap.Text = 'Reset View';

            % Create ContextMenu_Registration
            app.ContextMenu_Registration = uicontextmenu(app.BrukKitAlphav0860UIFigure);

            % Create ResetViewMenu_Registration
            app.ResetViewMenu_Registration = uimenu(app.ContextMenu_Registration);
            app.ResetViewMenu_Registration.MenuSelectedFcn = createCallbackFcn(app, @ResetViewMenu_RegistrationSelected, true);
            app.ResetViewMenu_Registration.Text = 'Reset View';

            % Create ContextMenu_RegistrationInstructions
            app.ContextMenu_RegistrationInstructions = uicontextmenu(app.BrukKitAlphav0860UIFigure);

            % Create ResetInstructionsMenu
            app.ResetInstructionsMenu = uimenu(app.ContextMenu_RegistrationInstructions);
            app.ResetInstructionsMenu.MenuSelectedFcn = createCallbackFcn(app, @ResetInstructionsMenuSelected, true);
            app.ResetInstructionsMenu.Text = 'Reset Instructions';
            
            % Assign app.ContextMenu_RegistrationInstructions
            app.RegistrationInstructionsTextArea.ContextMenu = app.ContextMenu_RegistrationInstructions;

            % Show the figure after all components are created
            app.BrukKitAlphav0860UIFigure.Visible = 'on';
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
                registerApp(app, app.BrukKitAlphav0860UIFigure)

                % Execute the startup function
                runStartupFcn(app, @StartUpFcn)
            else

                % Focus the running singleton app
                figure(runningApp.BrukKitAlphav0860UIFigure)

                app = runningApp;
            end

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.BrukKitAlphav0860UIFigure)
        end
    end
end