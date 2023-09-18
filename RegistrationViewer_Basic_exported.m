classdef RegistrationViewer_Basic_exported < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        RegistrationViewerUIFigure  matlab.ui.Figure
        ReturnInstructionsButton    matlab.ui.control.Button
        FixedImageLabel             matlab.ui.control.Label
        MovingImageLabel            matlab.ui.control.Label
        AddsliceButton              matlab.ui.control.Button
        RegistrationInstructionsTextArea  matlab.ui.control.TextArea
        RegistrationInstructionsTextAreaLabel  matlab.ui.control.Label
        ColormapButtonGroup_Fixed   matlab.ui.container.ButtonGroup
        TurboButton_Fixed           matlab.ui.control.RadioButton
        GreyscaleButton_Fixed       matlab.ui.control.RadioButton
        ColormapButtonGroup_Moving  matlab.ui.container.ButtonGroup
        TurboButton_Moving          matlab.ui.control.RadioButton
        GreyscaleButton_Moving      matlab.ui.control.RadioButton
        Dim5Spinner_Fixed           matlab.ui.control.Spinner
        Dim5Spinner_Label_Fixed     matlab.ui.control.Label
        Dim4Spinner_Fixed           matlab.ui.control.Spinner
        Dim4Spinner_Label_Fixed     matlab.ui.control.Label
        SliceSlider_Fixed           matlab.ui.control.Slider
        SliceLabel_Fixed            matlab.ui.control.Label
        SliceSpinner_Fixed          matlab.ui.control.Spinner
        Dim5Spinner_Moving          matlab.ui.control.Spinner
        Dim5Spinner_Label_Moving    matlab.ui.control.Label
        Dim4Spinner_Moving          matlab.ui.control.Spinner
        Dim4Spinner_Label_Moving    matlab.ui.control.Label
        SliceSlider_Moving          matlab.ui.control.Slider
        SliceLabel_Moving           matlab.ui.control.Label
        SliceSpinner_Moving         matlab.ui.control.Spinner
        UIAxes_Fixed                matlab.ui.control.UIAxes
        UIAxes_Moving               matlab.ui.control.UIAxes
        ContextMenu_Instructions    matlab.ui.container.ContextMenu
        ResetInstructionsMenu       matlab.ui.container.Menu
        ContextMenu_Moving          matlab.ui.container.ContextMenu
        ResetViewMenu_Moving        matlab.ui.container.Menu
        ContextMenu_Fixed           matlab.ui.container.ContextMenu
        ResetViewMenu_Fixed         matlab.ui.container.Menu
    end

    
    properties (Access = private)
        BrukKit % Main BrukKit interface
        MovingImageData % Moving image data
        ExpDimsMoving % Moving image data dimensions
        FixedImageData % Fixed image data
        ExpDimsFixed % Fixed image data dimensions
    end
    
    methods (Access = private)
        
        % Moving UIAxes image updating
        function RefreshImageMoving(app)
            app.ExpDimsMoving = size(app.MovingImageData);
            switch numel(app.ExpDimsMoving)
                case 2
                    CurrentSlice = app.MovingImageData(:,:);
                case 3
                    CurrentSlice = app.MovingImageData(:,:,app.SliceSpinner_Moving.Value);
                case 4
                    CurrentSlice = app.MovingImageData(:,:,app.SliceSpinner_Moving.Value, app.Dim4Spinner_Moving.Value);
                case 5
                    CurrentSlice = app.MovingImageData(:,:,app.SliceSpinner_Moving.Value, app.Dim4Spinner_Moving.Value, app.Dim5Spinner_Moving.Value);
                otherwise
                    %error alert missing
            end
            switch app.TurboButton_Moving.Value
                case true
                    mov = imshow(CurrentSlice, 'DisplayRange', [], 'Parent', app.UIAxes_Moving, Colormap = turbo);
                otherwise
                    mov = imshow(CurrentSlice, 'DisplayRange', [], 'Parent', app.UIAxes_Moving);
            end
            mov.ContextMenu = app.ContextMenu_Moving;
        end

        % Fixed UIAxes image updating
        function RefreshImageFixed(app)
            app.ExpDimsFixed = size(app.FixedImageData);
            switch numel(app.ExpDimsFixed)
                case 2
                    CurrentSlice = app.FixedImageData(:,:);
                case 3
                    CurrentSlice = app.FixedImageData(:,:,app.SliceSpinner_Fixed.Value);
                case 4
                    CurrentSlice = app.FixedImageData(:,:,app.SliceSpinner_Fixed.Value, app.Dim4Spinner_Fixed.Value);
                case 5
                    CurrentSlice = app.FixedImageData(:,:,app.SliceSpinner_Fixed.Value, app.Dim4Spinner_Fixed.Value, app.Dim5Spinner_Fixed.Value);
                otherwise
                    %error alert missing
            end
            switch app.TurboButton_Fixed.Value
                case true
                    fix = imshow(CurrentSlice, 'DisplayRange', [], 'Parent', app.UIAxes_Fixed, Colormap = turbo);
                otherwise
                    fix = imshow(CurrentSlice, 'DisplayRange', [], 'Parent', app.UIAxes_Fixed);
            end
            fix.ContextMenu = app.ContextMenu_Fixed;
        end
    end
    

    % Callbacks that handle component events
    methods (Access = private)

        % Code that executes after component creation
        function startupFcn(app, caller, movingImage, fixedImage)
            
            % Store BrukKit
            app.BrukKit = caller;
            
            % Store image data and dimensions
            app.MovingImageData = movingImage;
            app.ExpDimsMoving = size(app.MovingImageData);
            app.FixedImageData = fixedImage;
            app.ExpDimsFixed = size(app.FixedImageData);

            % Enable and disable moving components
            switch numel(app.ExpDimsMoving)
                case 5
                    app.Dim5Spinner_Moving.Enable = 'on';
                    app.Dim5Spinner_Moving.Value = 1;
                    app.Dim5Spinner_Moving.Limits = [1, app.ExpDimsMoving(5)];
                    app.Dim4Spinner_Moving.Enable = 'on';
                    app.Dim4Spinner_Moving.Value = 1;
                    app.Dim4Spinner_Moving.Limits = [1, app.ExpDimsMoving(4)];
                    app.SliceSpinner_Moving.Enable = 'on';
                    app.SliceSpinner_Moving.Value = 1;
                    app.SliceSpinner_Moving.Limits = [1, app.ExpDimsMoving(3)];
                    app.SliceSlider_Moving.Enable = 'on';
                    app.SliceSlider_Moving.Value = 1;
                    app.SliceSlider_Moving.Limits = [1, app.ExpDimsMoving(3)];
                case 4
                    app.Dim4Spinner_Moving.Enable = 'on';
                    app.Dim4Spinner_Moving.Value = 1;
                    app.Dim4Spinner_Moving.Limits = [1, app.ExpDimsMoving(4)];
                    app.SliceSpinner_Moving.Enable = 'on';
                    app.SliceSpinner_Moving.Value = 1;
                    app.SliceSpinner_Moving.Limits = [1, app.ExpDimsMoving(3)];
                    app.SliceSlider_Moving.Enable = 'on';
                    app.SliceSlider_Moving.Value = 1;
                    app.SliceSlider_Moving.Limits = [1, app.ExpDimsMoving(3)];
                case 3
                    app.SliceSpinner_Moving.Enable = 'on';
                    app.SliceSpinner_Moving.Value = 1;
                    app.SliceSpinner_Moving.Limits = [1, app.ExpDimsMoving(3)];
                    app.SliceSlider_Moving.Enable = 'on';
                    app.SliceSlider_Moving.Value = 1;
                    app.SliceSlider_Moving.Limits = [1, app.ExpDimsMoving(3)];
                otherwise
            end

            % Enable and disable fixed components
            switch numel(app.ExpDimsFixed)
                case 5
                    app.Dim5Spinner_Fixed.Enable = 'on';
                    app.Dim5Spinner_Fixed.Value = 1;
                    app.Dim5Spinner_Fixed.Limits = [1, app.ExpDimsFixed(5)];
                    app.Dim4Spinner_Fixed.Enable = 'on';
                    app.Dim4Spinner_Fixed.Value = 1;
                    app.Dim4Spinner_Fixed.Limits = [1, app.ExpDimsFixed(4)];
                    app.SliceSpinner_Fixed.Enable = 'on';
                    app.SliceSpinner_Fixed.Value = 1;
                    app.SliceSpinner_Fixed.Limits = [1, app.ExpDimsFixed(3)];
                    app.SliceSlider_Fixed.Enable = 'on';
                    app.SliceSlider_Fixed.Value = 1;
                    app.SliceSlider_Fixed.Limits = [1, app.ExpDimsFixed(3)];
                case 4
                    app.Dim4Spinner_Fixed.Enable = 'on';
                    app.Dim4Spinner_Fixed.Value = 1;
                    app.Dim4Spinner_Fixed.Limits = [1, app.ExpDimsFixed(4)];
                    app.SliceSpinner_Fixed.Enable = 'on';
                    app.SliceSpinner_Fixed.Value = 1;
                    app.SliceSpinner_Fixed.Limits = [1, app.ExpDimsFixed(3)];
                    app.SliceSlider_Fixed.Enable = 'on';
                    app.SliceSlider_Fixed.Value = 1;
                    app.SliceSlider_Fixed.Limits = [1, app.ExpDimsFixed(3)];
                case 3
                    app.SliceSpinner_Fixed.Enable = 'on';
                    app.SliceSpinner_Fixed.Value = 1;
                    app.SliceSpinner_Fixed.Limits = [1, app.ExpDimsFixed(3)];
                    app.SliceSlider_Fixed.Enable = 'on';
                    app.SliceSlider_Fixed.Value = 1;
                    app.SliceSlider_Fixed.Limits = [1, app.ExpDimsFixed(3)];
                otherwise
            end

            RefreshImageMoving(app);
            RefreshImageFixed(app);

            % Set interactions of uiaxes
            app.UIAxes_Moving.Interactions = [regionZoomInteraction zoomInteraction];
            app.UIAxes_Fixed.Interactions = [regionZoomInteraction zoomInteraction];

            movegui(app.RegistrationViewerUIFigure, 'center');
        end

        % Value changing function: SliceSlider_Moving
        function SliceSlider_MovingValueChanging(app, event)
            event.Source.Value = round(event.Value);
            app.SliceSpinner_Moving.Value = event.Source.Value;

            RefreshImageMoving(app);
        end

        % Value changed function: SliceSpinner_Moving
        function SliceSpinner_MovingValueChanged(app, event)
            app.SliceSlider_Moving.Value = app.SliceSpinner_Moving.Value;

            RefreshImageMoving(app);
        end

        % Value changed function: Dim4Spinner_Moving
        function Dim4Spinner_MovingValueChanged(app, event)
            
            RefreshImageMoving(app);
        end

        % Value changed function: Dim5Spinner_Moving
        function Dim5Spinner_MovingValueChanged(app, event)
            
            RefreshImageMoving(app);
        end

        % Selection changed function: ColormapButtonGroup_Moving
        function ColormapButtonGroup_MovingSelectionChanged(app, event)
            
            RefreshImageMoving(app);
        end

        % Value changing function: SliceSlider_Fixed
        function SliceSlider_FixedValueChanging(app, event)
            event.Source.Value = round(event.Value);
            app.SliceSpinner_Fixed.Value = event.Source.Value;

            RefreshImageFixed(app);
        end

        % Value changed function: SliceSpinner_Fixed
        function SliceSpinner_FixedValueChanged(app, event)
            app.SliceSlider_Fixed.Value = app.SliceSpinner_Fixed.Value;

            RefreshImageFixed(app);
        end

        % Value changed function: Dim4Spinner_Fixed
        function Dim4Spinner_FixedValueChanged(app, event)
            
            RefreshImageFixed(app);
        end

        % Value changed function: Dim5Spinner_Fixed
        function Dim5Spinner_FixedValueChanged(app, event)
            
            RefreshImageFixed(app);
        end

        % Selection changed function: ColormapButtonGroup_Fixed
        function ColormapButtonGroup_FixedSelectionChanged(app, event)
            
            RefreshImageFixed(app);
        end

        % Button pushed function: AddsliceButton
        function AddsliceButtonPushed(app, event)
            % Create slice registration instructions based on char formula
            % moving(dim3,dim4,dim5)fixed(dim3,dim4,dim5)parameter(dim3,dim4,dim5)
            switch numel(app.ExpDimsMoving)
                case 5
                    moving = append('m(', num2str(app.SliceSpinner_Moving.Value), ',', num2str(app.Dim4Spinner_Moving.Value), ',', num2str(app.Dim5Spinner_Moving.Value), ')');
                case 4
                    moving = append('m(', num2str(app.SliceSpinner_Moving.Value), ',', num2str(app.Dim4Spinner_Moving.Value), ',-)');
                otherwise
                    moving = append('m(', num2str(app.SliceSpinner_Moving.Value), ',-,-)');
            end
            switch numel(app.ExpDimsFixed)
                case 5
                    fixed = append('f(', num2str(app.SliceSpinner_Fixed.Value), ',', num2str(app.Dim4Spinner_Fixed.Value), ',', num2str(app.Dim5Spinner_Fixed.Value), ') ');
                case 4
                    fixed = append('f(', num2str(app.SliceSpinner_Fixed.Value), ',', num2str(app.Dim4Spinner_Fixed.Value), ',-) ');
                otherwise
                    fixed = append('f(', num2str(app.SliceSpinner_Fixed.Value), ',-,-) ');
            end
            slice_instruction = append(moving, fixed);

            % Add to total registration instructions
            if app.RegistrationInstructionsTextArea.Value == ""
                app.RegistrationInstructionsTextArea.Value = slice_instruction;
            else
                app.RegistrationInstructionsTextArea.Value = append(app.RegistrationInstructionsTextArea.Value, ' ', slice_instruction);
            end
        end

        % Button pushed function: ReturnInstructionsButton
        function ReturnInstructionsButtonPushed(app, event)
            % Return registration instructions
            app.BrukKit.RegistrationInstructionsTextArea.Value = app.RegistrationInstructionsTextArea.Value;
            
            % Turn on viewer button, delete app
            app.BrukKit.RegistrationViewerButton.Enable = 'on';
            close(app.BrukKit.ProgressBar)
            delete(app) 
        end

        % Menu selected function: ResetInstructionsMenu
        function ResetInstructionsMenuSelected(app, event)
            app.RegistrationInstructionsTextArea.Value = '';
        end

        % Menu selected function: ResetViewMenu_Moving
        function ResetViewMenu_MovingSelected(app, event)
            % Reset zoom
            app.UIAxes_Moving.XLim = [-inf inf];
            app.UIAxes_Moving.YLim = [-inf inf];
        end

        % Menu selected function: ResetViewMenu_Fixed
        function ResetViewMenu_FixedSelected(app, event)
            % Reset zoom
            app.UIAxes_Fixed.XLim = [-inf inf];
            app.UIAxes_Fixed.YLim = [-inf inf];
        end

        % Close request function: RegistrationViewerUIFigure
        function RegistrationViewerUIFigureCloseRequest(app, event)

            % Turn on viewer button, delete app
            app.BrukKit.RegistrationViewerButton.Enable = 'on';
            close(app.BrukKit.ProgressBar)
            delete(app) 
        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create RegistrationViewerUIFigure and hide until all components are created
            app.RegistrationViewerUIFigure = uifigure('Visible', 'off');
            app.RegistrationViewerUIFigure.Position = [100 100 854 480];
            app.RegistrationViewerUIFigure.Name = 'Registration Viewer';
            app.RegistrationViewerUIFigure.CloseRequestFcn = createCallbackFcn(app, @RegistrationViewerUIFigureCloseRequest, true);

            % Create UIAxes_Moving
            app.UIAxes_Moving = uiaxes(app.RegistrationViewerUIFigure);
            app.UIAxes_Moving.Toolbar.Visible = 'off';
            app.UIAxes_Moving.XLimitMethod = 'tight';
            app.UIAxes_Moving.YLimitMethod = 'tight';
            app.UIAxes_Moving.XTick = [];
            app.UIAxes_Moving.XTickLabel = '';
            app.UIAxes_Moving.YTick = [];
            app.UIAxes_Moving.YTickLabel = '';
            app.UIAxes_Moving.Box = 'on';
            app.UIAxes_Moving.Position = [25 140 300 300];

            % Create UIAxes_Fixed
            app.UIAxes_Fixed = uiaxes(app.RegistrationViewerUIFigure);
            app.UIAxes_Fixed.Toolbar.Visible = 'off';
            app.UIAxes_Fixed.XLimitMethod = 'tight';
            app.UIAxes_Fixed.YLimitMethod = 'tight';
            app.UIAxes_Fixed.XTick = [];
            app.UIAxes_Fixed.XTickLabel = '';
            app.UIAxes_Fixed.YTick = [];
            app.UIAxes_Fixed.YTickLabel = '';
            app.UIAxes_Fixed.Box = 'on';
            app.UIAxes_Fixed.Position = [529 140 300 300];

            % Create SliceSpinner_Moving
            app.SliceSpinner_Moving = uispinner(app.RegistrationViewerUIFigure);
            app.SliceSpinner_Moving.ValueChangedFcn = createCallbackFcn(app, @SliceSpinner_MovingValueChanged, true);
            app.SliceSpinner_Moving.Enable = 'off';
            app.SliceSpinner_Moving.Position = [244 110 54 22];
            app.SliceSpinner_Moving.Value = 1;

            % Create SliceLabel_Moving
            app.SliceLabel_Moving = uilabel(app.RegistrationViewerUIFigure);
            app.SliceLabel_Moving.HorizontalAlignment = 'right';
            app.SliceLabel_Moving.Position = [52 110 31 22];
            app.SliceLabel_Moving.Text = 'Slice';

            % Create SliceSlider_Moving
            app.SliceSlider_Moving = uislider(app.RegistrationViewerUIFigure);
            app.SliceSlider_Moving.Limits = [1 100];
            app.SliceSlider_Moving.MajorTicks = [];
            app.SliceSlider_Moving.MajorTickLabels = {};
            app.SliceSlider_Moving.ValueChangingFcn = createCallbackFcn(app, @SliceSlider_MovingValueChanging, true);
            app.SliceSlider_Moving.MinorTicks = [];
            app.SliceSlider_Moving.Enable = 'off';
            app.SliceSlider_Moving.Position = [104 119 120 3];
            app.SliceSlider_Moving.Value = 1;

            % Create Dim4Spinner_Label_Moving
            app.Dim4Spinner_Label_Moving = uilabel(app.RegistrationViewerUIFigure);
            app.Dim4Spinner_Label_Moving.HorizontalAlignment = 'right';
            app.Dim4Spinner_Label_Moving.Position = [58 70 44 22];
            app.Dim4Spinner_Label_Moving.Text = 'Dim - 4';

            % Create Dim4Spinner_Moving
            app.Dim4Spinner_Moving = uispinner(app.RegistrationViewerUIFigure);
            app.Dim4Spinner_Moving.ValueChangedFcn = createCallbackFcn(app, @Dim4Spinner_MovingValueChanged, true);
            app.Dim4Spinner_Moving.Enable = 'off';
            app.Dim4Spinner_Moving.Position = [113 70 51 22];
            app.Dim4Spinner_Moving.Value = 1;

            % Create Dim5Spinner_Label_Moving
            app.Dim5Spinner_Label_Moving = uilabel(app.RegistrationViewerUIFigure);
            app.Dim5Spinner_Label_Moving.HorizontalAlignment = 'right';
            app.Dim5Spinner_Label_Moving.Position = [187 70 44 22];
            app.Dim5Spinner_Label_Moving.Text = 'Dim - 5';

            % Create Dim5Spinner_Moving
            app.Dim5Spinner_Moving = uispinner(app.RegistrationViewerUIFigure);
            app.Dim5Spinner_Moving.ValueChangedFcn = createCallbackFcn(app, @Dim5Spinner_MovingValueChanged, true);
            app.Dim5Spinner_Moving.Enable = 'off';
            app.Dim5Spinner_Moving.Position = [243 70 51 22];
            app.Dim5Spinner_Moving.Value = 1;

            % Create SliceSpinner_Fixed
            app.SliceSpinner_Fixed = uispinner(app.RegistrationViewerUIFigure);
            app.SliceSpinner_Fixed.ValueChangedFcn = createCallbackFcn(app, @SliceSpinner_FixedValueChanged, true);
            app.SliceSpinner_Fixed.Enable = 'off';
            app.SliceSpinner_Fixed.Position = [748 110 54 22];
            app.SliceSpinner_Fixed.Value = 1;

            % Create SliceLabel_Fixed
            app.SliceLabel_Fixed = uilabel(app.RegistrationViewerUIFigure);
            app.SliceLabel_Fixed.HorizontalAlignment = 'right';
            app.SliceLabel_Fixed.Position = [556 110 31 22];
            app.SliceLabel_Fixed.Text = 'Slice';

            % Create SliceSlider_Fixed
            app.SliceSlider_Fixed = uislider(app.RegistrationViewerUIFigure);
            app.SliceSlider_Fixed.Limits = [1 100];
            app.SliceSlider_Fixed.MajorTicks = [];
            app.SliceSlider_Fixed.MajorTickLabels = {};
            app.SliceSlider_Fixed.ValueChangingFcn = createCallbackFcn(app, @SliceSlider_FixedValueChanging, true);
            app.SliceSlider_Fixed.MinorTicks = [];
            app.SliceSlider_Fixed.Enable = 'off';
            app.SliceSlider_Fixed.Position = [608 119 120 3];
            app.SliceSlider_Fixed.Value = 1;

            % Create Dim4Spinner_Label_Fixed
            app.Dim4Spinner_Label_Fixed = uilabel(app.RegistrationViewerUIFigure);
            app.Dim4Spinner_Label_Fixed.HorizontalAlignment = 'right';
            app.Dim4Spinner_Label_Fixed.Position = [562 70 44 22];
            app.Dim4Spinner_Label_Fixed.Text = 'Dim - 4';

            % Create Dim4Spinner_Fixed
            app.Dim4Spinner_Fixed = uispinner(app.RegistrationViewerUIFigure);
            app.Dim4Spinner_Fixed.ValueChangedFcn = createCallbackFcn(app, @Dim4Spinner_FixedValueChanged, true);
            app.Dim4Spinner_Fixed.Enable = 'off';
            app.Dim4Spinner_Fixed.Position = [617 70 51 22];
            app.Dim4Spinner_Fixed.Value = 1;

            % Create Dim5Spinner_Label_Fixed
            app.Dim5Spinner_Label_Fixed = uilabel(app.RegistrationViewerUIFigure);
            app.Dim5Spinner_Label_Fixed.HorizontalAlignment = 'right';
            app.Dim5Spinner_Label_Fixed.Position = [691 70 44 22];
            app.Dim5Spinner_Label_Fixed.Text = 'Dim - 5';

            % Create Dim5Spinner_Fixed
            app.Dim5Spinner_Fixed = uispinner(app.RegistrationViewerUIFigure);
            app.Dim5Spinner_Fixed.ValueChangedFcn = createCallbackFcn(app, @Dim5Spinner_FixedValueChanged, true);
            app.Dim5Spinner_Fixed.Enable = 'off';
            app.Dim5Spinner_Fixed.Position = [747 70 51 22];
            app.Dim5Spinner_Fixed.Value = 1;

            % Create ColormapButtonGroup_Moving
            app.ColormapButtonGroup_Moving = uibuttongroup(app.RegistrationViewerUIFigure);
            app.ColormapButtonGroup_Moving.SelectionChangedFcn = createCallbackFcn(app, @ColormapButtonGroup_MovingSelectionChanged, true);
            app.ColormapButtonGroup_Moving.BorderType = 'none';
            app.ColormapButtonGroup_Moving.TitlePosition = 'centertop';
            app.ColormapButtonGroup_Moving.Title = 'Colormap';
            app.ColormapButtonGroup_Moving.Position = [92 15 167 38];

            % Create GreyscaleButton_Moving
            app.GreyscaleButton_Moving = uiradiobutton(app.ColormapButtonGroup_Moving);
            app.GreyscaleButton_Moving.Text = 'Greyscale';
            app.GreyscaleButton_Moving.Position = [94 -3 76 22];
            app.GreyscaleButton_Moving.Value = true;

            % Create TurboButton_Moving
            app.TurboButton_Moving = uiradiobutton(app.ColormapButtonGroup_Moving);
            app.TurboButton_Moving.Text = 'Turbo';
            app.TurboButton_Moving.Position = [2 -3 65 22];

            % Create ColormapButtonGroup_Fixed
            app.ColormapButtonGroup_Fixed = uibuttongroup(app.RegistrationViewerUIFigure);
            app.ColormapButtonGroup_Fixed.SelectionChangedFcn = createCallbackFcn(app, @ColormapButtonGroup_FixedSelectionChanged, true);
            app.ColormapButtonGroup_Fixed.BorderType = 'none';
            app.ColormapButtonGroup_Fixed.TitlePosition = 'centertop';
            app.ColormapButtonGroup_Fixed.Title = 'Colormap';
            app.ColormapButtonGroup_Fixed.Position = [595 15 167 38];

            % Create GreyscaleButton_Fixed
            app.GreyscaleButton_Fixed = uiradiobutton(app.ColormapButtonGroup_Fixed);
            app.GreyscaleButton_Fixed.Text = 'Greyscale';
            app.GreyscaleButton_Fixed.Position = [94 -3 76 22];
            app.GreyscaleButton_Fixed.Value = true;

            % Create TurboButton_Fixed
            app.TurboButton_Fixed = uiradiobutton(app.ColormapButtonGroup_Fixed);
            app.TurboButton_Fixed.Text = 'Turbo';
            app.TurboButton_Fixed.Position = [2 -3 65 22];

            % Create RegistrationInstructionsTextAreaLabel
            app.RegistrationInstructionsTextAreaLabel = uilabel(app.RegistrationViewerUIFigure);
            app.RegistrationInstructionsTextAreaLabel.HorizontalAlignment = 'right';
            app.RegistrationInstructionsTextAreaLabel.Position = [360 361 134 22];
            app.RegistrationInstructionsTextAreaLabel.Text = 'Registration Instructions';

            % Create RegistrationInstructionsTextArea
            app.RegistrationInstructionsTextArea = uitextarea(app.RegistrationViewerUIFigure);
            app.RegistrationInstructionsTextArea.Editable = 'off';
            app.RegistrationInstructionsTextArea.Position = [332 209 190 145];

            % Create AddsliceButton
            app.AddsliceButton = uibutton(app.RegistrationViewerUIFigure, 'push');
            app.AddsliceButton.ButtonPushedFcn = createCallbackFcn(app, @AddsliceButtonPushed, true);
            app.AddsliceButton.Position = [377 171 100 22];
            app.AddsliceButton.Text = 'Add slice ';

            % Create MovingImageLabel
            app.MovingImageLabel = uilabel(app.RegistrationViewerUIFigure);
            app.MovingImageLabel.Position = [135 440 81 22];
            app.MovingImageLabel.Text = 'Moving Image';

            % Create FixedImageLabel
            app.FixedImageLabel = uilabel(app.RegistrationViewerUIFigure);
            app.FixedImageLabel.Position = [644 440 71 22];
            app.FixedImageLabel.Text = 'Fixed Image';

            % Create ReturnInstructionsButton
            app.ReturnInstructionsButton = uibutton(app.RegistrationViewerUIFigure, 'push');
            app.ReturnInstructionsButton.ButtonPushedFcn = createCallbackFcn(app, @ReturnInstructionsButtonPushed, true);
            app.ReturnInstructionsButton.Position = [365 51 125 22];
            app.ReturnInstructionsButton.Text = 'Return Instructions';

            % Create ContextMenu_Instructions
            app.ContextMenu_Instructions = uicontextmenu(app.RegistrationViewerUIFigure);

            % Create ResetInstructionsMenu
            app.ResetInstructionsMenu = uimenu(app.ContextMenu_Instructions);
            app.ResetInstructionsMenu.MenuSelectedFcn = createCallbackFcn(app, @ResetInstructionsMenuSelected, true);
            app.ResetInstructionsMenu.Text = 'Reset Instructions';
            
            % Assign app.ContextMenu_Instructions
            app.RegistrationInstructionsTextArea.ContextMenu = app.ContextMenu_Instructions;

            % Create ContextMenu_Moving
            app.ContextMenu_Moving = uicontextmenu(app.RegistrationViewerUIFigure);

            % Create ResetViewMenu_Moving
            app.ResetViewMenu_Moving = uimenu(app.ContextMenu_Moving);
            app.ResetViewMenu_Moving.MenuSelectedFcn = createCallbackFcn(app, @ResetViewMenu_MovingSelected, true);
            app.ResetViewMenu_Moving.Text = 'Reset View';
            
            % Assign app.ContextMenu_Moving
            app.UIAxes_Moving.ContextMenu = app.ContextMenu_Moving;

            % Create ContextMenu_Fixed
            app.ContextMenu_Fixed = uicontextmenu(app.RegistrationViewerUIFigure);

            % Create ResetViewMenu_Fixed
            app.ResetViewMenu_Fixed = uimenu(app.ContextMenu_Fixed);
            app.ResetViewMenu_Fixed.MenuSelectedFcn = createCallbackFcn(app, @ResetViewMenu_FixedSelected, true);
            app.ResetViewMenu_Fixed.Text = 'Reset View';
            
            % Assign app.ContextMenu_Fixed
            app.UIAxes_Fixed.ContextMenu = app.ContextMenu_Fixed;

            % Show the figure after all components are created
            app.RegistrationViewerUIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = RegistrationViewer_Basic_exported(varargin)

            % Create UIFigure and components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.RegistrationViewerUIFigure)

            % Execute the startup function
            runStartupFcn(app, @(app)startupFcn(app, varargin{:}))

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.RegistrationViewerUIFigure)
        end
    end
end