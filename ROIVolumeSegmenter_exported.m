classdef ROIVolumeSegmenter_exported < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        UIFigure                       matlab.ui.Figure
        DSuperpixelsOptionsPanel       matlab.ui.container.Panel
        ShowAllSuperpixelsButton       matlab.ui.control.Button
        NumberofIterationsEditField    matlab.ui.control.NumericEditField
        NumberofIterationsEditFieldLabel  matlab.ui.control.Label
        CompactnessEditField           matlab.ui.control.NumericEditField
        CompactnessEditFieldLabel      matlab.ui.control.Label
        SelectAlgorithmButtonGroup     matlab.ui.container.ButtonGroup
        slicButton                     matlab.ui.control.RadioButton
        slic0Button                    matlab.ui.control.RadioButton
        NumberofSuperpixelsEditField   matlab.ui.control.NumericEditField
        NumberofSuperpixelsEditFieldLabel  matlab.ui.control.Label
        RunModelButton                 matlab.ui.control.Button
        SelectROIListBox               matlab.ui.control.ListBox
        SelectROIListBoxLabel          matlab.ui.control.Label
        ChooseMethodDropDown           matlab.ui.control.DropDown
        ChooseMethodDropDownLabel      matlab.ui.control.Label
        SaveandreturntoBrukkitButton   matlab.ui.control.Button
        ViewerPanel                    matlab.ui.container.Panel
        ActiveContourOptionsPanel      matlab.ui.container.Panel
        SelectModelButtonGroup         matlab.ui.container.ButtonGroup
        edgeButton                     matlab.ui.control.RadioButton
        ChanVeseButton                 matlab.ui.control.RadioButton
        ContractionbiasEditField       matlab.ui.control.NumericEditField
        ContractionbiasEditFieldLabel  matlab.ui.control.Label
        SmoothfactorEditField          matlab.ui.control.NumericEditField
        SmoothfactorEditFieldLabel     matlab.ui.control.Label
        MaximumnumberofiterationsEditField  matlab.ui.control.NumericEditField
        MaximumnumberofiterationsEditFieldLabel  matlab.ui.control.Label
    end

    
    properties (Access = private)
        BrukKit % Main BrukKit interface
        ViewerParentObject % 3D Viewer parent object
        Volume % Volume inherited from Brukkit
        VolumeDims % Dimensions of the main volume
        Mask % ROI masks inherited from Brukkit
        MaskDims % Dimensions of ROI masks
        ROIindex % ROI index selected in Brukkit
        VoxDimX % Stores X dimension of volume voxel
        VoxDimY % Stores Y dimension of volume voxel
        VoxDimZ % Stores Z dimension of volume voxel
        AlphaMap % MRI AlphaMap
        ROIIdentifiers % Contains all ROI names inherited from Brukkit
        SuperPixels % Stores original result 3D matrix with all superpixels
        SuperPixelsNumber % Number of superpixel generated
    end
    

    % Callbacks that handle component events
    methods (Access = private)

        % Code that executes after component creation
        function startupFcn(app, caller, volume, ROImask, ROIIdentifiers, VoxDimX, VoxDimY, VoxDimZ)
            
            % Store BrukKit
            app.BrukKit = caller;
            
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

            % Refresh 3d viewer
            % Create transformation matrix
            app.ViewerParentObject = viewer3d('Parent', app.ViewerPanel);
            T = [app.VoxDimX 0 0 0; 0 app.VoxDimY 0 0; 0 0 app.VoxDimZ 0; 0 0 0 1];
            tform = affinetform3d(T);
            app.AlphaMap = [0;0;0;0;0;0.000588235294117645;0.0307058823529412;0.0608235294117647;0.0909411764705882;0.121058823529412;0.150294117647059;0.157823529411765;0.165352941176471;0.172882352941176;0.180411764705882;0.187941176470588;0.195470588235294;0.203000000000000;0.210529411764706;0.218058823529412;0.225588235294118;0.233117647058824;0.240647058823529;0.248176470588235;0.255705882352941;0.263235294117647;0.270764705882353;0.278294117647059;0.285823529411765;0.293352941176471;0.300376470588235;0.303589019607843;0.306801568627451;0.310014117647059;0.313226666666667;0.316439215686275;0.319651764705882;0.322864313725490;0.326076862745098;0.329289411764706;0.332501960784314;0.335714509803922;0.338927058823529;0.342139607843137;0.345352156862745;0.348564705882353;0.351777254901961;0.354989803921569;0.358202352941176;0.361414901960784;0.364627450980392;0.367840000000000;0.371052549019608;0.374265098039216;0.377477647058824;0.380128767925081;0.380728124085455;0.381327480245830;0.381926836406204;0.382526192566579;0.383125548726954;0.383724904887328;0.384324261047703;0.384923617208077;0.385522973368452;0.386122329528826;0.386721685689201;0.387321041849576;0.387920398009950;0.388519754170325;0.389119110330699;0.389718466491074;0.390317822651449;0.390917178811823;0.391516534972198;0.392115891132572;0.392715247292947;0.393314603453322;0.393913959613696;0.394513315774071;0.395112671934445;0.395712028094820;0.396311384255195;0.396910740415569;0.397510096575944;0.398109452736318;0.398708808896693;0.399308165057068;0.399907521217442;0.400506877377817;0.401106233538191;0.401705589698566;0.402304945858941;0.402904302019315;0.403503658179690;0.404103014340064;0.404702370500439;0.405301726660814;0.405901082821188;0.406500438981563;0.407099795141937;0.407699151302312;0.408298507462687;0.408897863623061;0.409497219783436;0.410096575943810;0.410695932104185;0.411295288264560;0.411894644424934;0.412494000585309;0.413093356745683;0.413692712906058;0.414292069066433;0.414891425226807;0.415490781387182;0.416090137547556;0.416689493707931;0.417288849868306;0.417888206028680;0.418487562189055;0.419086918349429;0.419686274509804;0.420285630670179;0.420884986830553;0.421484342990928;0.422083699151302;0.422683055311677;0.423282411472052;0.423881767632426;0.424481123792801;0.425080479953175;0.425679836113550;0.426279192273925;0.426878548434299;0.427477904594674;0.428077260755048;0.428676616915423;0.429275973075797;0.429875329236172;0.430474685396547;0.431074041556921;0.431673397717296;0.432272753877671;0.432872110038045;0.433471466198420;0.434070822358794;0.434670178519169;0.435269534679543;0.435868890839918;0.436468247000293;0.437067603160667;0.437666959321042;0.438266315481417;0.438865671641791;0.439465027802166;0.440064383962540;0.440663740122915;0.441263096283289;0.441862452443664;0.442461808604039;0.443061164764413;0.443660520924788;0.444259877085162;0.444859233245537;0.445458589405912;0.446057945566286;0.446657301726661;0.447256657887035;0.447856014047410;0.448455370207785;0.449054726368159;0.449654082528534;0.450253438688908;0.450852794849283;0.451452151009658;0.452051507170032;0.452650863330407;0.453250219490781;0.453849575651156;0.454448931811531;0.455048287971905;0.455647644132280;0.456247000292654;0.456846356453029;0.457445712613404;0.458045068773778;0.458644424934153;0.459243781094527;0.459843137254902;0.460442493415277;0.461041849575651;0.461641205736026;0.462240561896400;0.462839918056775;0.463439274217150;0.464038630377524;0.464637986537899;0.465237342698273;0.465836698858648;0.466436055019023;0.467035411179397;0.467634767339772;0.468234123500146;0.468833479660521;0.469432835820896;0.470032191981270;0.470631548141645;0.471230904302019;0.471830260462394;0.472429616622769;0.473028972783143;0.473628328943518;0.474227685103892;0.474827041264267;0.475426397424642;0.476025753585016;0.476625109745391;0.477224465905765;0.477823822066140;0.478423178226515;0.479022534386889;0.479621890547264;0.480221246707638;0.480820602868013;0.481419959028387;0.482019315188762;0.482618671349137;0.483218027509511;0.483817383669886;0.484416739830260;0.485016095990635;0.485615452151010;0.486214808311384;0.486814164471759;0.487413520632133;0.488012876792508;0.488612232952883;0.489211589113257;0.489810945273632;0.490410301434006;0.491009657594381;0.491609013754756;0.492208369915130;0.492807726075505;0.493407082235879;0.494006438396254;0.494605794556629;0.495205150717003;0.495804506877378;0.496403863037752;0.497003219198127;0.497602575358502;0.498201931518876;0.498801287679251;0.499400643839625;0.500000000000000];
            % volshow(app.Volume, 'Parent', app.ViewerParentObject, 'Transformation', tform, 'RenderingStyle', 'GradientOpacity', 'OverlayData', ...
            %     app.Mask(:,:,:,app.ROIindex), 'OverlayRenderingStyle', 'LabelOverlay', 'GradientOpacityValue', 0.8, 'Alphamap',alphamap);
            volshow(app.Volume, 'Parent', app.ViewerParentObject, 'Transformation', tform, 'RenderingStyle', 'GradientOpacity', ...
                'GradientOpacityValue', 0.8, 'Alphamap', app.AlphaMap);

        end

        % Close request function: UIFigure
        function UIFigureCloseRequest(app, event)
            
            % Close Brukkit progress bar and delete app
            app.BrukKit.VolROISegmentationToolsButton.Enable = 'on';
            close(app.BrukKit.ProgressBar);
            delete(app);
            
        end

        % Value changed function: SelectROIListBox
        function SelectROIListBoxValueChanged(app, event)
            delete(app.ViewerParentObject);
            value = app.SelectROIListBox.Value;
            index = find(strcmp(app.ROIIdentifiers,value));

            app.ViewerParentObject = viewer3d('Parent', app.ViewerPanel);
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
                    progress = uiprogressdlg(app.UIFigure,'Title',"Please wait",...
                         'Message', "Reshaping selected ROI using Active Contours...", 'Indeterminate','on');
                    drawnow;
                    method = app.SelectModelButtonGroup.SelectedObject.Text;
                    index = find(strcmp(app.ROIIdentifiers,app.SelectROIListBox.Value));
                    w = warning('error', 'images:activecontour:vanishingContour');
                    try
                        newROI = activecontour(im2uint8(app.Volume),app.Mask(:,:,:,index),app.MaximumnumberofiterationsEditField.Value,method, ...
                            "SmoothFactor",app.SmoothfactorEditField.Value,"ContractionBias",app.ContractionbiasEditField.Value);
                    catch ME
                        switch ME.identifier 
                            case 'images:activecontour:vanishingContour'
                                uialert(app.UIFigure, 'Active Cotour region collapsed to zero. Consider decreasing contraction bias or maximum number of iterations or increase your seed ROI size.', 'Warning!','Icon','warning');
                                warning(w);
                                return;
                        end
                    end
                    warning(w);
                    app.Mask(:,:,:,index) = newROI;
                    close(progress);
        
                    % Refresh 3D Viewer
                    delete(app.ViewerParentObject);
                    app.ViewerParentObject = viewer3d('Parent', app.ViewerPanel);
                    T = [app.VoxDimX 0 0 0; 0 app.VoxDimY 0 0; 0 0 app.VoxDimZ 0; 0 0 0 1];
                    tform = affinetform3d(T);
                    volshow(app.Volume, 'Parent', app.ViewerParentObject, 'Transformation', tform, 'RenderingStyle', 'GradientOpacity', 'OverlayData', ...
                        app.Mask(:,:,:,index), 'OverlayRenderingStyle', 'LabelOverlay', 'GradientOpacityValue', 0.8, 'Alphamap',app.AlphaMap);
                case '3D Superpixels'
                    progress = uiprogressdlg(app.UIFigure,'Title',"Please wait",...
                         'Message', "Purging old 3D Superpixels...", 'Indeterminate','on');
                    drawnow;
                    try
                        superpixelIdx = find(cell2mat(strfind(app.ROIIdentifiers,'3Dsuperpixel')));
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
                    app.ViewerParentObject = viewer3d('Parent', app.ViewerPanel);
                    T = [app.VoxDimX 0 0 0; 0 app.VoxDimY 0 0; 0 0 app.VoxDimZ 0; 0 0 0 1];
                    tform = affinetform3d(T);
                    volshow(app.Volume, 'Parent', app.ViewerParentObject, 'Transformation', tform, 'RenderingStyle', 'GradientOpacity', 'OverlayData', ...
                    app.SuperPixels, 'OverlayRenderingStyle', 'LabelOverlay', 'GradientOpacityValue', 0.8, 'Alphamap',app.AlphaMap);

                    % Enable Show All Superpixels button
                    app.ShowAllSuperpixelsButton.Enable = "on";
 
            end

        end

        % Button pushed function: SaveandreturntoBrukkitButton
        function SaveandreturntoBrukkitButtonPushed(app, event)
            
            superpixelIdx = find(cell2mat(strfind(app.ROIIdentifiers,'3Dsuperpixel')));
            if ~isempty(superpixelIdx) % There are new superpixels
                % Prompt user for new ROI name and superpixel array to add
                % up together.
                input = inputdlg({'Enter new ROI name:','Enter which superpixels to add together (1,2,3,6:9):'}, ...
                    'Choose which superpixels to keep', [1 40], {'', strcat('1:',num2str(length(superpixelIdx)))});
                ROIname = input{1};
                selectedSuperpixels = str2num(input{2}); %#ok<ST2NM>
                % Construct new ROI by superpixel addition
                newROI = zeros(app.VolumeDims,'like',app.Volume);
                for i = selectedSuperpixels
                    newROI = newROI + app.Mask(:,:,:,i);
                end
                % Flush all superpixel ROIs
                app.Mask(:,:,:,superpixelIdx) = [];
                app.ROIIdentifiers(superpixelIdx) = [];
                % Add the newly created ROI to ROIMask and ROIIdentifiers
                app.Mask = cat(4, app.Mask, newROI);
                app.ROIIdentifiers = cat(2, app.ROIIdentifiers, ROIname);
            end
            
            % Apply all ROI to Brukkit
            app.BrukKit.ROIMask = app.Mask;
            app.BrukKit.ROIIdentifiers = app.ROIIdentifiers;
            app.BrukKit.ROIListListBox.Items = app.ROIIdentifiers;
            
            % Close Brukkit progress bar and delete app
            app.BrukKit.RefreshImageSegmenter;
            app.BrukKit.VolROISegmentationToolsButton.Enable = 'on';
            close(app.BrukKit.ProgressBar);
            delete(app);
        end

        % Selection changed function: SelectModelButtonGroup
        function SelectModelButtonGroupSelectionChanged(app, event)
            selectedButton = app.SelectModelButtonGroup.SelectedObject;
            
            switch selectedButton.Text
                case 'Chan-Vese'
                    app.SmoothfactorEditField.Value = 0;
                    app.ContractionbiasEditField.Value = 0;
                case 'edge'
                    app.SmoothfactorEditField.Value = 1;
                    app.ContractionbiasEditField.Value = 0.3;
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
            app.ViewerParentObject = viewer3d('Parent', app.ViewerPanel);
            T = [app.VoxDimX 0 0 0; 0 app.VoxDimY 0 0; 0 0 app.VoxDimZ 0; 0 0 0 1];
            tform = affinetform3d(T);
            volshow(app.Volume, 'Parent', app.ViewerParentObject, 'Transformation', tform, 'RenderingStyle', 'GradientOpacity', 'OverlayData', ...
            app.SuperPixels, 'OverlayRenderingStyle', 'LabelOverlay', 'GradientOpacityValue', 0.8, 'Alphamap',app.AlphaMap);
        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create UIFigure and hide until all components are created
            app.UIFigure = uifigure('Visible', 'off');
            app.UIFigure.Position = [100 100 854 480];
            app.UIFigure.Name = 'MATLAB App';
            app.UIFigure.CloseRequestFcn = createCallbackFcn(app, @UIFigureCloseRequest, true);

            % Create ActiveContourOptionsPanel
            app.ActiveContourOptionsPanel = uipanel(app.UIFigure);
            app.ActiveContourOptionsPanel.BorderType = 'none';
            app.ActiveContourOptionsPanel.TitlePosition = 'centertop';
            app.ActiveContourOptionsPanel.Title = 'Active Contour Options';
            app.ActiveContourOptionsPanel.Position = [631 99 218 186];

            % Create MaximumnumberofiterationsEditFieldLabel
            app.MaximumnumberofiterationsEditFieldLabel = uilabel(app.ActiveContourOptionsPanel);
            app.MaximumnumberofiterationsEditFieldLabel.HorizontalAlignment = 'right';
            app.MaximumnumberofiterationsEditFieldLabel.Position = [31 87 166 22];
            app.MaximumnumberofiterationsEditFieldLabel.Text = 'Maximum number of iterations';

            % Create MaximumnumberofiterationsEditField
            app.MaximumnumberofiterationsEditField = uieditfield(app.ActiveContourOptionsPanel, 'numeric');
            app.MaximumnumberofiterationsEditField.LowerLimitInclusive = 'off';
            app.MaximumnumberofiterationsEditField.Limits = [0 Inf];
            app.MaximumnumberofiterationsEditField.RoundFractionalValues = 'on';
            app.MaximumnumberofiterationsEditField.Position = [64 64 100 22];
            app.MaximumnumberofiterationsEditField.Value = 100;

            % Create SmoothfactorEditFieldLabel
            app.SmoothfactorEditFieldLabel = uilabel(app.ActiveContourOptionsPanel);
            app.SmoothfactorEditFieldLabel.HorizontalAlignment = 'right';
            app.SmoothfactorEditFieldLabel.Position = [12 34 80 22];
            app.SmoothfactorEditFieldLabel.Text = 'Smooth factor';

            % Create SmoothfactorEditField
            app.SmoothfactorEditField = uieditfield(app.ActiveContourOptionsPanel, 'numeric');
            app.SmoothfactorEditField.Limits = [0 Inf];
            app.SmoothfactorEditField.Position = [119 34 94 22];

            % Create ContractionbiasEditFieldLabel
            app.ContractionbiasEditFieldLabel = uilabel(app.ActiveContourOptionsPanel);
            app.ContractionbiasEditFieldLabel.HorizontalAlignment = 'right';
            app.ContractionbiasEditFieldLabel.Position = [12 5 92 22];
            app.ContractionbiasEditFieldLabel.Text = 'Contraction bias';

            % Create ContractionbiasEditField
            app.ContractionbiasEditField = uieditfield(app.ActiveContourOptionsPanel, 'numeric');
            app.ContractionbiasEditField.Limits = [-1 1];
            app.ContractionbiasEditField.Position = [119 5 94 22];

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

            % Create edgeButton
            app.edgeButton = uiradiobutton(app.SelectModelButtonGroup);
            app.edgeButton.Text = 'edge';
            app.edgeButton.Position = [109 5 65 22];

            % Create ViewerPanel
            app.ViewerPanel = uipanel(app.UIFigure);
            app.ViewerPanel.BorderType = 'none';
            app.ViewerPanel.TitlePosition = 'centertop';
            app.ViewerPanel.Title = 'Viewer';
            app.ViewerPanel.BackgroundColor = [1 1 1];
            app.ViewerPanel.Position = [13 12 605 459];

            % Create SaveandreturntoBrukkitButton
            app.SaveandreturntoBrukkitButton = uibutton(app.UIFigure, 'push');
            app.SaveandreturntoBrukkitButton.ButtonPushedFcn = createCallbackFcn(app, @SaveandreturntoBrukkitButtonPushed, true);
            app.SaveandreturntoBrukkitButton.Position = [664 20 154 23];
            app.SaveandreturntoBrukkitButton.Text = 'Save and return to Brukkit';

            % Create ChooseMethodDropDownLabel
            app.ChooseMethodDropDownLabel = uilabel(app.UIFigure);
            app.ChooseMethodDropDownLabel.HorizontalAlignment = 'center';
            app.ChooseMethodDropDownLabel.Position = [690 449 93 22];
            app.ChooseMethodDropDownLabel.Text = 'Choose Method:';

            % Create ChooseMethodDropDown
            app.ChooseMethodDropDown = uidropdown(app.UIFigure);
            app.ChooseMethodDropDown.Items = {'Active Contour', '3D Superpixels'};
            app.ChooseMethodDropDown.ValueChangedFcn = createCallbackFcn(app, @ChooseMethodDropDownValueChanged, true);
            app.ChooseMethodDropDown.Position = [663 427 154 22];
            app.ChooseMethodDropDown.Value = 'Active Contour';

            % Create SelectROIListBoxLabel
            app.SelectROIListBoxLabel = uilabel(app.UIFigure);
            app.SelectROIListBoxLabel.HorizontalAlignment = 'center';
            app.SelectROIListBoxLabel.Position = [708 391 63 22];
            app.SelectROIListBoxLabel.Text = 'Select ROI';

            % Create SelectROIListBox
            app.SelectROIListBox = uilistbox(app.UIFigure);
            app.SelectROIListBox.Items = {};
            app.SelectROIListBox.ValueChangedFcn = createCallbackFcn(app, @SelectROIListBoxValueChanged, true);
            app.SelectROIListBox.Position = [646 305 188 86];
            app.SelectROIListBox.Value = {};

            % Create RunModelButton
            app.RunModelButton = uibutton(app.UIFigure, 'push');
            app.RunModelButton.ButtonPushedFcn = createCallbackFcn(app, @RunModelButtonPushed, true);
            app.RunModelButton.Enable = 'off';
            app.RunModelButton.Tooltip = {'Please select a seed ROI first.'};
            app.RunModelButton.Position = [691 62 100 23];
            app.RunModelButton.Text = 'Run Model';

            % Create DSuperpixelsOptionsPanel
            app.DSuperpixelsOptionsPanel = uipanel(app.UIFigure);
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

            % Create slic0Button
            app.slic0Button = uiradiobutton(app.SelectAlgorithmButtonGroup);
            app.slic0Button.Text = 'slic0';
            app.slic0Button.Position = [29 3 45 22];
            app.slic0Button.Value = true;

            % Create slicButton
            app.slicButton = uiradiobutton(app.SelectAlgorithmButtonGroup);
            app.slicButton.Text = 'slic';
            app.slicButton.Position = [92 3 46 22];

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
            app.ShowAllSuperpixelsButton.Position = [51 4 127 23];
            app.ShowAllSuperpixelsButton.Text = 'Show All Superpixels';

            % Show the figure after all components are created
            app.UIFigure.Visible = 'on';
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
                registerApp(app, app.UIFigure)

                % Execute the startup function
                runStartupFcn(app, @(app)startupFcn(app, varargin{:}))
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