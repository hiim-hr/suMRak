classdef DSCSettings_exported < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        UIFigure                       matlab.ui.Figure
        ApplySettingsButton            matlab.ui.control.Button
        ResetToDefaultButton           matlab.ui.control.Button
        ConcentrationPanel             matlab.ui.container.Panel
        rEditField                     matlab.ui.control.NumericEditField
        rEditFieldLabel                matlab.ui.control.Label
        aEditField                     matlab.ui.control.NumericEditField
        aEditFieldLabel                matlab.ui.control.Label
        bEditField                     matlab.ui.control.NumericEditField
        bEditFieldLabel                matlab.ui.control.Label
        ConcentrationCorrectionCheckBox  matlab.ui.control.CheckBox
        ProportionalityConstantsPanel  matlab.ui.container.Panel
        KhEditField                    matlab.ui.control.NumericEditField
        KhEditFieldLabel               matlab.ui.control.Label
        RhoEditField                   matlab.ui.control.NumericEditField
        RhoEditFieldLabel              matlab.ui.control.Label
        KvoiEditField                  matlab.ui.control.NumericEditField
        KvoiEditFieldLabel             matlab.ui.control.Label
        DeconvolutionPanel             matlab.ui.container.Panel
        oSVDCounterEditField           matlab.ui.control.NumericEditField
        oSVDCounterEditFieldLabel      matlab.ui.control.Label
        oSVDThresholdEditField         matlab.ui.control.NumericEditField
        oSVDThresholdEditFieldLabel    matlab.ui.control.Label
        cSVDThresholdEditField         matlab.ui.control.NumericEditField
        cSVDThresholdEditFieldLabel    matlab.ui.control.Label
        SVDThresholdEditField          matlab.ui.control.NumericEditField
        SVDThresholdEditFieldLabel     matlab.ui.control.Label
        SaveoSVDResidualsCheckBox      matlab.ui.control.CheckBox
        SavecSVDResidualsCheckBox      matlab.ui.control.CheckBox
        SaveSVDResidualsCheckBox       matlab.ui.control.CheckBox
        S0Panel                        matlab.ui.container.Panel
        S0MaxVoxNrEditField            matlab.ui.control.NumericEditField
        S0MaxVoxNrEditFieldLabel       matlab.ui.control.Label
        S0ThresholdEditField           matlab.ui.control.NumericEditField
        S0ThresholdEditFieldLabel      matlab.ui.control.Label
        S0MinVoxNrEditField            matlab.ui.control.NumericEditField
        S0MinVoxNrEditFieldLabel       matlab.ui.control.Label
        AIFPanel                       matlab.ui.container.Panel
        ClusterThresholdPeakTTPEditField  matlab.ui.control.NumericEditField
        ClusterThresholdPeakTTPEditFieldLabel  matlab.ui.control.Label
        VoxelDiscardFractionRegularityEditField  matlab.ui.control.NumericEditField
        VoxelDiscardFractionRegularityEditFieldLabel  matlab.ui.control.Label
        VoxelDiscardFractionTTPEditField  matlab.ui.control.NumericEditField
        VoxelDiscardFractionTTPEditFieldLabel  matlab.ui.control.Label
        VoxelDiscardFractionAUCEditField  matlab.ui.control.NumericEditField
        VoxelDiscardFractionAUCEditFieldLabel  matlab.ui.control.Label
        AIFMaxVoxNrEditField           matlab.ui.control.NumericEditField
        AIFMaxVoxNrEditFieldLabel      matlab.ui.control.Label
        AIFMinVoxNrEditField           matlab.ui.control.NumericEditField
        AIFMinVoxNrEditFieldLabel      matlab.ui.control.Label
        AIFROIMinorSemiaxisEditField   matlab.ui.control.NumericEditField
        AIFROIMinorSemiaxisEditFieldLabel  matlab.ui.control.Label
        AIFROIMajorSemiaxisEditField   matlab.ui.control.NumericEditField
        AIFROIMajorSemiaxisEditFieldLabel  matlab.ui.control.Label
        AIFRecirculationCorrectionCheckBox  matlab.ui.control.CheckBox
        EnableAIFCheckBox              matlab.ui.control.CheckBox
        MaskNrVoxelsEditField          matlab.ui.control.NumericEditField
        MaskNrVoxelsEditFieldLabel     matlab.ui.control.Label
        ImageValueButtonGroup          matlab.ui.container.ButtonGroup
        ConcentrationButton            matlab.ui.control.RadioButton
        SignalButton                   matlab.ui.control.RadioButton
    end

    
    properties (Access = private)
        BrukKit % Main BrukKit interface
    end  

    % Callbacks that handle component events
    methods (Access = private)

        % Code that executes after component creation
        function startupFcn(app, caller, loadedOptions)
            % Store BrukKit
            app.BrukKit = caller;
            
            % Set label values to loaded option values
            % Image
            if loadedOptions.conc == 1
                app.ConcentrationButton.Value = 1;
            else
                app.ConcentrationButton.Value = 0;
            end
            % Mask
            app.MaskNrVoxelsEditField.Value = loadedOptions.mask.npixel;
            % S0
            app.S0ThresholdEditField.Value = loadedOptions.S0.thresh;
            app.S0MinVoxNrEditField.Value = loadedOptions.S0.nSamplesMin;
            app.S0MaxVoxNrEditField.Value = loadedOptions.S0.nSamplesMax;
            % AIF
            app.EnableAIFCheckBox.Value = loadedOptions.aif.enable;
            app.AIFROIMinorSemiaxisEditField.Value = loadedOptions.aif.semiasseMinore;
            app.AIFROIMajorSemiaxisEditField.Value = loadedOptions.aif.semiasseMaggiore;
            app.AIFMinVoxNrEditField.Value = loadedOptions.aif.nVoxelMin;
            app.AIFMaxVoxNrEditField.Value = loadedOptions.aif.nVoxelMax;
            app.AIFRecirculationCorrectionCheckBox.Value = loadedOptions.aif.ricircolo;
            app.VoxelDiscardFractionAUCEditField.Value = loadedOptions.aif.pArea;
            app.VoxelDiscardFractionTTPEditField.Value = loadedOptions.aif.pTTP;
            app.VoxelDiscardFractionRegularityEditField.Value = loadedOptions.aif.pReg;
            app.ClusterThresholdPeakTTPEditField.Value = loadedOptions.aif.diffPicco;
            % Proportionality constants
            app.KhEditField.Value = loadedOptions.par.kh;
            app.RhoEditField.Value = loadedOptions.par.rho;
            app.KvoiEditField.Value = loadedOptions.par.kvoi;
            % Concentration
            app.ConcentrationCorrectionCheckBox.Value = loadedOptions.qr.enable;
            app.aEditField.Value = loadedOptions.qr.a;
            app.bEditField.Value = loadedOptions.qr.b;
            app.rEditField.Value = loadedOptions.qr.r;
            % Deconvolution
            app.SVDThresholdEditField.Value = loadedOptions.deconv.SVD.threshold;
            app.cSVDThresholdEditField.Value = loadedOptions.deconv.cSVD.threshold;
            app.oSVDThresholdEditField.Value = loadedOptions.deconv.oSVD.OIthres;
            app.oSVDCounterEditField.Value = loadedOptions.deconv.oSVD.OIcounter;
            app.SaveSVDResidualsCheckBox.Value = loadedOptions.deconv.SVD.residual;
            app.SavecSVDResidualsCheckBox.Value = loadedOptions.deconv.cSVD.residual;
            app.SaveoSVDResidualsCheckBox.Value = loadedOptions.deconv.oSVD.residual;

            movegui(app.UIFigure, 'center');
        end

        % Button pushed function: ResetToDefaultButton
        function ResetToDefaultButtonPushed(app, event)
            % Set label values to default option values
            % Image
            app.ConcentrationButton.Value = 0;
            % Mask
            app.MaskNrVoxelsEditField.Value = 300;
            % S0
            app.S0ThresholdEditField.Value = 0.05;
            app.S0MinVoxNrEditField.Value = 3;
            app.S0MaxVoxNrEditField.Value = 12;
            % AIF
            app.EnableAIFCheckBox.Value = 1;
            app.AIFROIMinorSemiaxisEditField.Value = 0.15;
            app.AIFROIMajorSemiaxisEditField.Value = 0.35;
            app.AIFMinVoxNrEditField.Value = 4;
            app.AIFMaxVoxNrEditField.Value = 6;
            app.AIFRecirculationCorrectionCheckBox.Value = 1;
            app.VoxelDiscardFractionAUCEditField.Value = 0.4;
            app.VoxelDiscardFractionTTPEditField.Value = 0.4;
            app.VoxelDiscardFractionRegularityEditField.Value = 0.05;
            app.ClusterThresholdPeakTTPEditField.Value = 0.04;
            % Proportionality constants
            app.KhEditField.Value = 1;
            app.RhoEditField.Value = 1;
            app.KvoiEditField.Value = 1;
            % Concentration
            app.ConcentrationCorrectionCheckBox.Value = 0;
            app.aEditField.Value = 0.0076;
            app.bEditField.Value = 0.00057;
            app.rEditField.Value = 0.044;
            % Deconvolution
            app.SVDThresholdEditField.Value = 0.2;
            app.cSVDThresholdEditField.Value = 0.1;
            app.oSVDThresholdEditField.Value = 0.035;
            app.oSVDCounterEditField.Value = 1;
            app.SaveSVDResidualsCheckBox.Value = 1;
            app.SavecSVDResidualsCheckBox.Value = 1;
            app.SaveoSVDResidualsCheckBox.Value = 1;
        end

        % Button pushed function: ApplySettingsButton
        function ApplySettingsButtonPushed(app, event)
            % Update BrukKit options to new advanced options
            % Image
            if app.ConcentrationButton.Value == 1
                app.BrukKit.DSCOptions.conc = 1; 
            else
                app.BrukKit.DSCOptions.conc = 0;
            end
            % Mask
            app.BrukKit.DSCOptions.mask.npixel = app.MaskNrVoxelsEditField.Value;
            % S0
            app.BrukKit.DSCOptions.S0.thresh = app.S0ThresholdEditField.Value;
            app.BrukKit.DSCOptions.S0.nSamplesMin = app.S0MinVoxNrEditField.Value;
            app.BrukKit.DSCOptions.S0.nSamplesMax = app.S0MaxVoxNrEditField.Value;
            % AIF
            app.BrukKit.DSCOptions.aif.enable = app.EnableAIFCheckBox.Value;
            app.BrukKit.DSCOptions.aif.semiasseMinore = app.AIFROIMinorSemiaxisEditField.Value;
            app.BrukKit.DSCOptions.aif.semiasseMaggiore = app.AIFROIMajorSemiaxisEditField.Value;
            app.BrukKit.DSCOptions.aif.nVoxelMin = app.AIFMinVoxNrEditField.Value;
            app.BrukKit.DSCOptions.aif.nVoxelMax = app.AIFMaxVoxNrEditField.Value;
            app.BrukKit.DSCOptions.aif.ricircolo = app.AIFRecirculationCorrectionCheckBox.Value;
            app.BrukKit.DSCOptions.aif.pArea = app.VoxelDiscardFractionAUCEditField.Value;
            app.BrukKit.DSCOptions.aif.pTTP = app.VoxelDiscardFractionTTPEditField.Value;
            app.BrukKit.DSCOptions.aif.pReg = app.VoxelDiscardFractionRegularityEditField.Value;
            app.BrukKit.DSCOptions.aif.diffPicco = app.ClusterThresholdPeakTTPEditField.Value;
            % Proportionality constants
            app.BrukKit.DSCOptions.par.kh = app.KhEditField.Value;
            app.BrukKit.DSCOptions.par.rho = app.RhoEditField.Value;
            app.BrukKit.DSCOptions.par.kvoi = app.KvoiEditField.Value;
            % Concentration
            app.BrukKit.DSCOptions.qr.enable = app.ConcentrationCorrectionCheckBox.Value;
            app.BrukKit.DSCOptions.qr.a = app.aEditField.Value;
            app.BrukKit.DSCOptions.qr.b = app.bEditField.Value;
            app.BrukKit.DSCOptions.qr.r = app.rEditField.Value;
            % Deconvolution
            app.BrukKit.DSCOptions.deconv.SVD.threshold = app.SVDThresholdEditField.Value;
            app.BrukKit.DSCOptions.deconv.cSVD.threshold = app.cSVDThresholdEditField.Value;
            app.BrukKit.DSCOptions.deconv.oSVD.OIthres = app.oSVDThresholdEditField.Value;
            app.BrukKit.DSCOptions.deconv.oSVD.OIcounter = app.oSVDCounterEditField.Value;
            app.BrukKit.DSCOptions.deconv.SVD.residual = app.SaveSVDResidualsCheckBox.Value;
            app.BrukKit.DSCOptions.deconv.cSVD.residual = app.SavecSVDResidualsCheckBox.Value;
            app.BrukKit.DSCOptions.deconv.oSVD.residual = app.SaveoSVDResidualsCheckBox.Value;
            
            % Turn on settings button, delete app
            app.BrukKit.AdvancedSettingsButton.Enable = 'on';
            close(app.BrukKit.ProgressBar)
            delete(app) 
        end

        % Close request function: UIFigure
        function UIFigureCloseRequest(app, event)

            % Turn on settings button, delete app
            app.BrukKit.AdvancedSettingsButton.Enable = 'on';
            close(app.BrukKit.ProgressBar)
            delete(app) 
        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create UIFigure and hide until all components are created
            app.UIFigure = uifigure('Visible', 'off');
            app.UIFigure.Position = [100 100 569 720];
            app.UIFigure.Name = 'MATLAB App';
            app.UIFigure.CloseRequestFcn = createCallbackFcn(app, @UIFigureCloseRequest, true);

            % Create ImageValueButtonGroup
            app.ImageValueButtonGroup = uibuttongroup(app.UIFigure);
            app.ImageValueButtonGroup.BorderType = 'none';
            app.ImageValueButtonGroup.TitlePosition = 'centertop';
            app.ImageValueButtonGroup.Title = 'Image Value';
            app.ImageValueButtonGroup.Position = [61 661 169 46];

            % Create SignalButton
            app.SignalButton = uiradiobutton(app.ImageValueButtonGroup);
            app.SignalButton.Text = 'Signal';
            app.SignalButton.Position = [11 2 58 22];
            app.SignalButton.Value = true;

            % Create ConcentrationButton
            app.ConcentrationButton = uiradiobutton(app.ImageValueButtonGroup);
            app.ConcentrationButton.Text = 'Concentration';
            app.ConcentrationButton.Position = [71 3 97 22];

            % Create MaskNrVoxelsEditFieldLabel
            app.MaskNrVoxelsEditFieldLabel = uilabel(app.UIFigure);
            app.MaskNrVoxelsEditFieldLabel.HorizontalAlignment = 'right';
            app.MaskNrVoxelsEditFieldLabel.Position = [60 621 91 22];
            app.MaskNrVoxelsEditFieldLabel.Text = 'Mask Nr. Voxels';

            % Create MaskNrVoxelsEditField
            app.MaskNrVoxelsEditField = uieditfield(app.UIFigure, 'numeric');
            app.MaskNrVoxelsEditField.Position = [166 621 65 22];

            % Create AIFPanel
            app.AIFPanel = uipanel(app.UIFigure);
            app.AIFPanel.BorderType = 'none';
            app.AIFPanel.TitlePosition = 'centertop';
            app.AIFPanel.Title = 'AIF';
            app.AIFPanel.Position = [260 211 283 357];

            % Create EnableAIFCheckBox
            app.EnableAIFCheckBox = uicheckbox(app.AIFPanel);
            app.EnableAIFCheckBox.Text = 'Enable AIF';
            app.EnableAIFCheckBox.Position = [100 302 81 22];

            % Create AIFRecirculationCorrectionCheckBox
            app.AIFRecirculationCorrectionCheckBox = uicheckbox(app.AIFPanel);
            app.AIFRecirculationCorrectionCheckBox.Text = 'AIF Recirculation Correction';
            app.AIFRecirculationCorrectionCheckBox.Position = [56 143 172 22];

            % Create AIFROIMajorSemiaxisEditFieldLabel
            app.AIFROIMajorSemiaxisEditFieldLabel = uilabel(app.AIFPanel);
            app.AIFROIMajorSemiaxisEditFieldLabel.HorizontalAlignment = 'right';
            app.AIFROIMajorSemiaxisEditFieldLabel.Position = [37 242 134 22];
            app.AIFROIMajorSemiaxisEditFieldLabel.Text = 'AIF ROI Major Semiaxis';

            % Create AIFROIMajorSemiaxisEditField
            app.AIFROIMajorSemiaxisEditField = uieditfield(app.AIFPanel, 'numeric');
            app.AIFROIMajorSemiaxisEditField.Position = [185 242 53 22];

            % Create AIFROIMinorSemiaxisEditFieldLabel
            app.AIFROIMinorSemiaxisEditFieldLabel = uilabel(app.AIFPanel);
            app.AIFROIMinorSemiaxisEditFieldLabel.Position = [43 275 134 22];
            app.AIFROIMinorSemiaxisEditFieldLabel.Text = 'AIF ROI Minor Semiaxis';

            % Create AIFROIMinorSemiaxisEditField
            app.AIFROIMinorSemiaxisEditField = uieditfield(app.AIFPanel, 'numeric');
            app.AIFROIMinorSemiaxisEditField.Position = [185 275 53 22];

            % Create AIFMinVoxNrEditFieldLabel
            app.AIFMinVoxNrEditFieldLabel = uilabel(app.AIFPanel);
            app.AIFMinVoxNrEditFieldLabel.Position = [59 209 99 22];
            app.AIFMinVoxNrEditFieldLabel.Text = 'AIF Min. Vox. Nr.';

            % Create AIFMinVoxNrEditField
            app.AIFMinVoxNrEditField = uieditfield(app.AIFPanel, 'numeric');
            app.AIFMinVoxNrEditField.Position = [173 209 53 22];

            % Create AIFMaxVoxNrEditFieldLabel
            app.AIFMaxVoxNrEditFieldLabel = uilabel(app.AIFPanel);
            app.AIFMaxVoxNrEditFieldLabel.Position = [59 176 99 22];
            app.AIFMaxVoxNrEditFieldLabel.Text = 'AIF Max. Vox. Nr.';

            % Create AIFMaxVoxNrEditField
            app.AIFMaxVoxNrEditField = uieditfield(app.AIFPanel, 'numeric');
            app.AIFMaxVoxNrEditField.Position = [173 176 53 22];

            % Create VoxelDiscardFractionAUCEditFieldLabel
            app.VoxelDiscardFractionAUCEditFieldLabel = uilabel(app.AIFPanel);
            app.VoxelDiscardFractionAUCEditFieldLabel.Position = [13 107 192 22];
            app.VoxelDiscardFractionAUCEditFieldLabel.Text = 'Voxel Discard Fraction (AUC)';

            % Create VoxelDiscardFractionAUCEditField
            app.VoxelDiscardFractionAUCEditField = uieditfield(app.AIFPanel, 'numeric');
            app.VoxelDiscardFractionAUCEditField.Position = [220 107 53 22];

            % Create VoxelDiscardFractionTTPEditFieldLabel
            app.VoxelDiscardFractionTTPEditFieldLabel = uilabel(app.AIFPanel);
            app.VoxelDiscardFractionTTPEditFieldLabel.Position = [13 75 192 22];
            app.VoxelDiscardFractionTTPEditFieldLabel.Text = 'Voxel Discard Fraction (TTP)';

            % Create VoxelDiscardFractionTTPEditField
            app.VoxelDiscardFractionTTPEditField = uieditfield(app.AIFPanel, 'numeric');
            app.VoxelDiscardFractionTTPEditField.Position = [220 75 53 22];

            % Create VoxelDiscardFractionRegularityEditFieldLabel
            app.VoxelDiscardFractionRegularityEditFieldLabel = uilabel(app.AIFPanel);
            app.VoxelDiscardFractionRegularityEditFieldLabel.Position = [13 44 192 22];
            app.VoxelDiscardFractionRegularityEditFieldLabel.Text = 'Voxel Discard Fraction (Regularity)';

            % Create VoxelDiscardFractionRegularityEditField
            app.VoxelDiscardFractionRegularityEditField = uieditfield(app.AIFPanel, 'numeric');
            app.VoxelDiscardFractionRegularityEditField.Position = [220 44 53 22];

            % Create ClusterThresholdPeakTTPEditFieldLabel
            app.ClusterThresholdPeakTTPEditFieldLabel = uilabel(app.AIFPanel);
            app.ClusterThresholdPeakTTPEditFieldLabel.Position = [13 13 192 22];
            app.ClusterThresholdPeakTTPEditFieldLabel.Text = 'Cluster Threshold (Peak/TTP)';

            % Create ClusterThresholdPeakTTPEditField
            app.ClusterThresholdPeakTTPEditField = uieditfield(app.AIFPanel, 'numeric');
            app.ClusterThresholdPeakTTPEditField.Position = [220 13 53 22];

            % Create S0Panel
            app.S0Panel = uipanel(app.UIFigure);
            app.S0Panel.BorderType = 'none';
            app.S0Panel.TitlePosition = 'centertop';
            app.S0Panel.Title = 'S0';
            app.S0Panel.Position = [294 576 214 131];

            % Create S0MinVoxNrEditFieldLabel
            app.S0MinVoxNrEditFieldLabel = uilabel(app.S0Panel);
            app.S0MinVoxNrEditFieldLabel.Position = [28 46 95 22];
            app.S0MinVoxNrEditFieldLabel.Text = 'S0 Min. Vox. Nr.';

            % Create S0MinVoxNrEditField
            app.S0MinVoxNrEditField = uieditfield(app.S0Panel, 'numeric');
            app.S0MinVoxNrEditField.Position = [131 46 53 22];

            % Create S0ThresholdEditFieldLabel
            app.S0ThresholdEditFieldLabel = uilabel(app.S0Panel);
            app.S0ThresholdEditFieldLabel.Position = [28 79 95 22];
            app.S0ThresholdEditFieldLabel.Text = 'S0 Threshold';

            % Create S0ThresholdEditField
            app.S0ThresholdEditField = uieditfield(app.S0Panel, 'numeric');
            app.S0ThresholdEditField.Position = [131 79 53 22];

            % Create S0MaxVoxNrEditFieldLabel
            app.S0MaxVoxNrEditFieldLabel = uilabel(app.S0Panel);
            app.S0MaxVoxNrEditFieldLabel.Position = [28 13 95 22];
            app.S0MaxVoxNrEditFieldLabel.Text = 'S0 Max. Vox. Nr.';

            % Create S0MaxVoxNrEditField
            app.S0MaxVoxNrEditField = uieditfield(app.S0Panel, 'numeric');
            app.S0MaxVoxNrEditField.Position = [131 13 53 22];

            % Create DeconvolutionPanel
            app.DeconvolutionPanel = uipanel(app.UIFigure);
            app.DeconvolutionPanel.TitlePosition = 'centertop';
            app.DeconvolutionPanel.Title = 'Deconvolution';
            app.DeconvolutionPanel.Position = [91 48 386 149];

            % Create SaveSVDResidualsCheckBox
            app.SaveSVDResidualsCheckBox = uicheckbox(app.DeconvolutionPanel);
            app.SaveSVDResidualsCheckBox.Text = 'Save SVD Residuals';
            app.SaveSVDResidualsCheckBox.Position = [221 78 133 22];

            % Create SavecSVDResidualsCheckBox
            app.SavecSVDResidualsCheckBox = uicheckbox(app.DeconvolutionPanel);
            app.SavecSVDResidualsCheckBox.Text = 'Save cSVD Residuals';
            app.SavecSVDResidualsCheckBox.Position = [221 53 139 22];

            % Create SaveoSVDResidualsCheckBox
            app.SaveoSVDResidualsCheckBox = uicheckbox(app.DeconvolutionPanel);
            app.SaveoSVDResidualsCheckBox.Text = 'Save oSVD Residuals';
            app.SaveoSVDResidualsCheckBox.Position = [221 28 140 22];

            % Create SVDThresholdEditFieldLabel
            app.SVDThresholdEditFieldLabel = uilabel(app.DeconvolutionPanel);
            app.SVDThresholdEditFieldLabel.Position = [41 92 93 22];
            app.SVDThresholdEditFieldLabel.Text = 'SVD Threshold';

            % Create SVDThresholdEditField
            app.SVDThresholdEditField = uieditfield(app.DeconvolutionPanel, 'numeric');
            app.SVDThresholdEditField.Position = [150 91 53 22];

            % Create cSVDThresholdEditFieldLabel
            app.cSVDThresholdEditFieldLabel = uilabel(app.DeconvolutionPanel);
            app.cSVDThresholdEditFieldLabel.Position = [41 66 93 22];
            app.cSVDThresholdEditFieldLabel.Text = 'cSVD Threshold';

            % Create cSVDThresholdEditField
            app.cSVDThresholdEditField = uieditfield(app.DeconvolutionPanel, 'numeric');
            app.cSVDThresholdEditField.Position = [150 66 53 22];

            % Create oSVDThresholdEditFieldLabel
            app.oSVDThresholdEditFieldLabel = uilabel(app.DeconvolutionPanel);
            app.oSVDThresholdEditFieldLabel.Position = [41 41 93 22];
            app.oSVDThresholdEditFieldLabel.Text = 'oSVD Threshold';

            % Create oSVDThresholdEditField
            app.oSVDThresholdEditField = uieditfield(app.DeconvolutionPanel, 'numeric');
            app.oSVDThresholdEditField.Position = [150 41 53 22];

            % Create oSVDCounterEditFieldLabel
            app.oSVDCounterEditFieldLabel = uilabel(app.DeconvolutionPanel);
            app.oSVDCounterEditFieldLabel.Position = [41 16 93 22];
            app.oSVDCounterEditFieldLabel.Text = 'oSVD Counter';

            % Create oSVDCounterEditField
            app.oSVDCounterEditField = uieditfield(app.DeconvolutionPanel, 'numeric');
            app.oSVDCounterEditField.Position = [150 16 53 22];

            % Create ProportionalityConstantsPanel
            app.ProportionalityConstantsPanel = uipanel(app.UIFigure);
            app.ProportionalityConstantsPanel.BorderType = 'none';
            app.ProportionalityConstantsPanel.TitlePosition = 'centertop';
            app.ProportionalityConstantsPanel.Title = 'Proportionality Constants';
            app.ProportionalityConstantsPanel.Position = [40 440 197 128];

            % Create KvoiEditFieldLabel
            app.KvoiEditFieldLabel = uilabel(app.ProportionalityConstantsPanel);
            app.KvoiEditFieldLabel.Position = [52 13 27 22];
            app.KvoiEditFieldLabel.Text = 'Kvoi';

            % Create KvoiEditField
            app.KvoiEditField = uieditfield(app.ProportionalityConstantsPanel, 'numeric');
            app.KvoiEditField.Position = [94 13 53 22];

            % Create RhoEditFieldLabel
            app.RhoEditFieldLabel = uilabel(app.ProportionalityConstantsPanel);
            app.RhoEditFieldLabel.Position = [52 42 27 22];
            app.RhoEditFieldLabel.Text = 'Rho';

            % Create RhoEditField
            app.RhoEditField = uieditfield(app.ProportionalityConstantsPanel, 'numeric');
            app.RhoEditField.Position = [94 42 53 22];

            % Create KhEditFieldLabel
            app.KhEditFieldLabel = uilabel(app.ProportionalityConstantsPanel);
            app.KhEditFieldLabel.Position = [52 71 27 22];
            app.KhEditFieldLabel.Text = 'Kh';

            % Create KhEditField
            app.KhEditField = uieditfield(app.ProportionalityConstantsPanel, 'numeric');
            app.KhEditField.Position = [94 71 53 22];

            % Create ConcentrationPanel
            app.ConcentrationPanel = uipanel(app.UIFigure);
            app.ConcentrationPanel.BorderType = 'none';
            app.ConcentrationPanel.TitlePosition = 'centertop';
            app.ConcentrationPanel.Title = 'Concentration';
            app.ConcentrationPanel.Position = [39 223 197 166];

            % Create ConcentrationCorrectionCheckBox
            app.ConcentrationCorrectionCheckBox = uicheckbox(app.ConcentrationPanel);
            app.ConcentrationCorrectionCheckBox.Text = 'Concentration Correction';
            app.ConcentrationCorrectionCheckBox.Position = [21 112 155 22];

            % Create bEditFieldLabel
            app.bEditFieldLabel = uilabel(app.ConcentrationPanel);
            app.bEditFieldLabel.Position = [56 49 25 22];
            app.bEditFieldLabel.Text = 'b';

            % Create bEditField
            app.bEditField = uieditfield(app.ConcentrationPanel, 'numeric');
            app.bEditField.Position = [90 49 53 22];

            % Create aEditFieldLabel
            app.aEditFieldLabel = uilabel(app.ConcentrationPanel);
            app.aEditFieldLabel.Position = [56 82 25 22];
            app.aEditFieldLabel.Text = 'a';

            % Create aEditField
            app.aEditField = uieditfield(app.ConcentrationPanel, 'numeric');
            app.aEditField.Position = [90 82 53 22];

            % Create rEditFieldLabel
            app.rEditFieldLabel = uilabel(app.ConcentrationPanel);
            app.rEditFieldLabel.Position = [56 17 25 22];
            app.rEditFieldLabel.Text = 'r';

            % Create rEditField
            app.rEditField = uieditfield(app.ConcentrationPanel, 'numeric');
            app.rEditField.Position = [90 17 53 22];

            % Create ResetToDefaultButton
            app.ResetToDefaultButton = uibutton(app.UIFigure, 'push');
            app.ResetToDefaultButton.ButtonPushedFcn = createCallbackFcn(app, @ResetToDefaultButtonPushed, true);
            app.ResetToDefaultButton.Position = [152 10 128 22];
            app.ResetToDefaultButton.Text = 'Reset To Default';

            % Create ApplySettingsButton
            app.ApplySettingsButton = uibutton(app.UIFigure, 'push');
            app.ApplySettingsButton.ButtonPushedFcn = createCallbackFcn(app, @ApplySettingsButtonPushed, true);
            app.ApplySettingsButton.Position = [291 10 128 22];
            app.ApplySettingsButton.Text = 'Apply Settings';

            % Show the figure after all components are created
            app.UIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = DSCSettings_exported(varargin)

            % Create UIFigure and components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.UIFigure)

            % Execute the startup function
            runStartupFcn(app, @(app)startupFcn(app, varargin{:}))

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