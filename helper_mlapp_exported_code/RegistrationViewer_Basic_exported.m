classdef RegistrationViewer_Basic_exported < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        RegistrationViewerUIFigure      matlab.ui.Figure
        ResetSelectionButton            matlab.ui.control.Button
        EndSlicesNotationTextAreaLabel  matlab.ui.control.Label
        EndSlicesNotationTextArea       matlab.ui.control.TextArea
        SetEndSlicesButton              matlab.ui.control.Button
        ReturnInstructionsButton        matlab.ui.control.Button
        FixedImageLabel                 matlab.ui.control.Label
        MovingImageLabel                matlab.ui.control.Label
        SetStartingSlicesButton         matlab.ui.control.Button
        StartSlicesNotationTextArea     matlab.ui.control.TextArea
        StartSlicesNotationTextAreaLabel  matlab.ui.control.Label
        ColormapButtonGroup_Fixed       matlab.ui.container.ButtonGroup
        TurboButton_Fixed               matlab.ui.control.RadioButton
        GreyscaleButton_Fixed           matlab.ui.control.RadioButton
        ColormapButtonGroup_Moving      matlab.ui.container.ButtonGroup
        TurboButton_Moving              matlab.ui.control.RadioButton
        GreyscaleButton_Moving          matlab.ui.control.RadioButton
        Dim5Spinner_Fixed               matlab.ui.control.Spinner
        Dim5Spinner_Label_Fixed         matlab.ui.control.Label
        Dim4Spinner_Fixed               matlab.ui.control.Spinner
        Dim4Spinner_Label_Fixed         matlab.ui.control.Label
        SliceSlider_Fixed               matlab.ui.control.Slider
        SliceLabel_Fixed                matlab.ui.control.Label
        SliceSpinner_Fixed              matlab.ui.control.Spinner
        Dim5Spinner_Moving              matlab.ui.control.Spinner
        Dim5Spinner_Label_Moving        matlab.ui.control.Label
        Dim4Spinner_Moving              matlab.ui.control.Spinner
        Dim4Spinner_Label_Moving        matlab.ui.control.Label
        SliceSlider_Moving              matlab.ui.control.Slider
        SliceLabel_Moving               matlab.ui.control.Label
        SliceSpinner_Moving             matlab.ui.control.Spinner
        UIAxes_Fixed                    matlab.ui.control.UIAxes
        UIAxes_Moving                   matlab.ui.control.UIAxes
        ContextMenu_Moving              matlab.ui.container.ContextMenu
        ResetViewMenu_Moving            matlab.ui.container.Menu
        ContextMenu_Fixed               matlab.ui.container.ContextMenu
        ResetViewMenu_Fixed             matlab.ui.container.Menu
    end

    
    properties (Access = private)
        suMRak % Main suMRak interface
        MovingImageData % Moving image data
        ExpDimsMoving % Moving image data dimensions
        FixedImageData % Fixed image data
        ExpDimsFixed % Fixed image data dimensions
        MovingImageHandle   % Image object on UIAxes_Moving, reused between refreshes
        FixedImageHandle    % Image object on UIAxes_Fixed, reused between refreshes
    end
    
    methods (Access = private)
        
        % Show a slice on a UIAxes. Reuses the existing image object and only swaps its CData
        function imHandle = showSlice(app, imHandle, ax, slice, useTurbo, cmenu) %#ok<INUSL>
            lims = double([min(slice(:)) max(slice(:))]);
            if ~all(isfinite(lims))
                finiteVals = slice(isfinite(slice));
                if isempty(finiteVals)
                    lims = [0 1];
                else
                    lims = double([min(finiteVals) max(finiteVals)]);
                end
            end
            if lims(1) >= lims(2)
                lims = double(getrangefromclass(slice));   % constant slice: same fallback as imshow
            end

            canReuse = ~isempty(imHandle) && isgraphics(imHandle) ...
                && isequal(imHandle.Parent, ax) && isequal(size(imHandle.CData), size(slice));
            if canReuse
                imHandle.CData = slice;
            else
                imHandle = imshow(slice, lims, 'Parent', ax);
                imHandle.ContextMenu = cmenu;
            end
            ax.CLim = lims;
            if useTurbo
                ax.Colormap = turbo;
            else
                ax.Colormap = gray;
            end
        end

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
            app.MovingImageHandle = showSlice(app, app.MovingImageHandle, app.UIAxes_Moving, ...
                CurrentSlice, app.TurboButton_Moving.Value, app.ContextMenu_Moving);
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
            app.FixedImageHandle = showSlice(app, app.FixedImageHandle, app.UIAxes_Fixed, ...
                CurrentSlice, app.TurboButton_Fixed.Value, app.ContextMenu_Fixed);
        end
    end
    

    % Callbacks that handle component events
    methods (Access = private)

        % Code that executes after component creation
        function startupFcn(app, caller, movingImage, fixedImage)
            
            % Store suMRak
            app.suMRak = caller;
            
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

        % Button pushed function: SetStartingSlicesButton
        function SetStartingSlicesButtonPushed(app, event)
            
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

            app.StartSlicesNotationTextArea.Value = append(moving, fixed);

            app.Dim4Spinner_Moving.Enable = "off";
            app.Dim5Spinner_Moving.Enable = "off";
            app.Dim4Spinner_Fixed.Enable = "off";
            app.Dim5Spinner_Fixed.Enable = "off";

        end

        % Button pushed function: ReturnInstructionsButton
        function ReturnInstructionsButtonPushed(app, event)
            
            % Sanity check: make sure start and end slices have been set,
            % and that start slice numbers are lower than (or equal to) end slice numbers
            startStr = char(join(string(app.StartSlicesNotationTextArea.Value), ''));
            endStr   = char(join(string(app.EndSlicesNotationTextArea.Value),   ''));
        
            if isempty(strtrim(startStr)) || isempty(strtrim(endStr))
                uialert(app.RegistrationViewerUIFigure, ...
                    'Please set both the start and end slices before returning instructions.', ...
                    'Missing slices');
                return
            end
        
            % Extract slice numbers for each volume (moving 'm', fixed 'f').
            prefixes = {'m', 'f'};
            labels   = {'moving', 'fixed'};
            for k = 1:numel(prefixes)
                pat = [prefixes{k} '\((\d+),'];
                sTok = regexp(startStr, pat, 'tokens', 'once');
                eTok = regexp(endStr,   pat, 'tokens', 'once');
                if isempty(sTok) || isempty(eTok)
                    continue
                end
                sVal = str2double(sTok{1});
                eVal = str2double(eTok{1});
                if sVal > eVal
                    uialert(app.RegistrationViewerUIFigure, ...
                        sprintf(['Start slice must be lower than or equal to end slice ' ...
                                 'for the %s volume (start = %d, end = %d).'], ...
                                 labels{k}, sVal, eVal), ...
                        'Invalid slice range');
                    return
                end
            end
        
            % Return registration instructions
            app.suMRak.RegistrationSliceLimitsTextArea.Value = append(app.StartSlicesNotationTextArea.Value, ' -> ', app.EndSlicesNotationTextArea.Value);
        
            % Turn on viewer button, delete app
            app.suMRak.RegistrationViewerButton.Enable = 'on';
            close(app.suMRak.ProgressBar)
            delete(app)
            
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
            app.suMRak.RegistrationViewerButton.Enable = 'on';
            close(app.suMRak.ProgressBar)
            delete(app) 
            
        end

        % Button pushed function: SetEndSlicesButton
        function SetEndSlicesButtonPushed(app, event)
            
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

            app.EndSlicesNotationTextArea.Value = append(moving, fixed);

            app.Dim4Spinner_Moving.Enable = "off";
            app.Dim5Spinner_Moving.Enable = "off";
            app.Dim4Spinner_Fixed.Enable = "off";
            app.Dim5Spinner_Fixed.Enable = "off";

        end

        % Button pushed function: ResetSelectionButton
        function ResetSelectionButtonPushed(app, event)
            
            app.Dim4Spinner_Moving.Enable = "on";
            app.Dim5Spinner_Moving.Enable = "on";
            app.Dim4Spinner_Fixed.Enable = "on";
            app.Dim5Spinner_Fixed.Enable = "on";

            app.SliceSlider_Moving.Value = 1;
            app.SliceSpinner_Moving.Value = 1;
            app.Dim4Spinner_Moving.Value = 1;
            app.Dim5Spinner_Moving.Value = 1;
            
            app.SliceSlider_Fixed.Value = 1;
            app.SliceSpinner_Fixed.Value = 1;
            app.Dim4Spinner_Fixed.Value = 1;
            app.Dim5Spinner_Fixed.Value = 1;

            app.StartSlicesNotationTextArea.Value = "";
            app.EndSlicesNotationTextArea.Value = "";

        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Get the file path for locating images
            pathToMLAPP = fileparts(mfilename('fullpath'));

            % Create RegistrationViewerUIFigure and hide until all components are created
            app.RegistrationViewerUIFigure = uifigure('Visible', 'off');
            app.RegistrationViewerUIFigure.Position = [100 100 854 480];
            app.RegistrationViewerUIFigure.Name = 'Registration Viewer';
            app.RegistrationViewerUIFigure.Icon = fullfile(pathToMLAPP, 'resources', 'icon.png');
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

            % Create StartSlicesNotationTextAreaLabel
            app.StartSlicesNotationTextAreaLabel = uilabel(app.RegistrationViewerUIFigure);
            app.StartSlicesNotationTextAreaLabel.HorizontalAlignment = 'right';
            app.StartSlicesNotationTextAreaLabel.Position = [369 390 114 22];
            app.StartSlicesNotationTextAreaLabel.Text = 'Start Slices Notation';

            % Create StartSlicesNotationTextArea
            app.StartSlicesNotationTextArea = uitextarea(app.RegistrationViewerUIFigure);
            app.StartSlicesNotationTextArea.Editable = 'off';
            app.StartSlicesNotationTextArea.Position = [333 357 190 26];

            % Create SetStartingSlicesButton
            app.SetStartingSlicesButton = uibutton(app.RegistrationViewerUIFigure, 'push');
            app.SetStartingSlicesButton.ButtonPushedFcn = createCallbackFcn(app, @SetStartingSlicesButtonPushed, true);
            app.SetStartingSlicesButton.Position = [371 323 113 23];
            app.SetStartingSlicesButton.Text = 'Set Starting Slices';

            % Create MovingImageLabel
            app.MovingImageLabel = uilabel(app.RegistrationViewerUIFigure);
            app.MovingImageLabel.Position = [135 440 81 22];
            app.MovingImageLabel.Text = 'Moving Image';

            % Create FixedImageLabel
            app.FixedImageLabel = uilabel(app.RegistrationViewerUIFigure);
            app.FixedImageLabel.HorizontalAlignment = 'center';
            app.FixedImageLabel.Position = [578 440 202 22];
            app.FixedImageLabel.Text = 'Fixed Image';

            % Create ReturnInstructionsButton
            app.ReturnInstructionsButton = uibutton(app.RegistrationViewerUIFigure, 'push');
            app.ReturnInstructionsButton.ButtonPushedFcn = createCallbackFcn(app, @ReturnInstructionsButtonPushed, true);
            app.ReturnInstructionsButton.Position = [365 32 125 22];
            app.ReturnInstructionsButton.Text = 'Return Instructions';

            % Create SetEndSlicesButton
            app.SetEndSlicesButton = uibutton(app.RegistrationViewerUIFigure, 'push');
            app.SetEndSlicesButton.ButtonPushedFcn = createCallbackFcn(app, @SetEndSlicesButtonPushed, true);
            app.SetEndSlicesButton.Position = [378 218 100 23];
            app.SetEndSlicesButton.Text = 'Set End Slices';

            % Create EndSlicesNotationTextArea
            app.EndSlicesNotationTextArea = uitextarea(app.RegistrationViewerUIFigure);
            app.EndSlicesNotationTextArea.Position = [333 253 190 24];

            % Create EndSlicesNotationTextAreaLabel
            app.EndSlicesNotationTextAreaLabel = uilabel(app.RegistrationViewerUIFigure);
            app.EndSlicesNotationTextAreaLabel.HorizontalAlignment = 'right';
            app.EndSlicesNotationTextAreaLabel.Position = [371 285 110 22];
            app.EndSlicesNotationTextAreaLabel.Text = 'End Slices Notation';

            % Create ResetSelectionButton
            app.ResetSelectionButton = uibutton(app.RegistrationViewerUIFigure, 'push');
            app.ResetSelectionButton.ButtonPushedFcn = createCallbackFcn(app, @ResetSelectionButtonPushed, true);
            app.ResetSelectionButton.Position = [378 164 100 23];
            app.ResetSelectionButton.Text = 'Reset Selection';

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

            runningApp = getRunningApp(app);

            % Check for running singleton app
            if isempty(runningApp)

                % Create UIFigure and components
                createComponents(app)

                % Register the app with App Designer
                registerApp(app, app.RegistrationViewerUIFigure)

                % Execute the startup function
                runStartupFcn(app, @(app)startupFcn(app, varargin{:}))
            else

                % Focus the running singleton app
                figure(runningApp.RegistrationViewerUIFigure)

                app = runningApp;
            end

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