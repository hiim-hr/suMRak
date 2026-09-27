classdef TransformParameterEditor_exported < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        TransformParameterEditorUIFigure  matlab.ui.Figure
        InPlaneOnlyCheckBox            matlab.ui.control.CheckBox
        CancelButton                   matlab.ui.control.Button
        ApplyButton                    matlab.ui.control.Button
        BSplinePanel                   matlab.ui.container.Panel
        MinJacobianEditField           matlab.ui.control.NumericEditField
        MinJacobianLabel               matlab.ui.control.Label
        BSplineScaleFactorsEditField   matlab.ui.control.EditField
        BSplineFactorsEditFieldLabel   matlab.ui.control.Label
        BSplineOrderSpinner            matlab.ui.control.Spinner
        BSplineOrderSpinnerLabel       matlab.ui.control.Label
        BSplineMeshSizeEditField       matlab.ui.control.EditField
        MeshSizeEditFieldLabel         matlab.ui.control.Label
        InterpolatorPanel              matlab.ui.container.Panel
        InterpolatorDropDown           matlab.ui.control.DropDown
        OptimizerPanel                 matlab.ui.container.Panel
        SmoothingSigmasEditField       matlab.ui.control.EditField
        SmoothingSigmasEditFieldLabel  matlab.ui.control.Label
        ShrinkFactorsEditField         matlab.ui.control.EditField
        ShrinkFactorsEditFieldLabel    matlab.ui.control.Label
        ConvergenceTolEditField        matlab.ui.control.NumericEditField
        ConvegrenceToleranceEditFieldLabel  matlab.ui.control.Label
        NumIterationsSpinner           matlab.ui.control.Spinner
        NrofIterationsSpinnerLabel     matlab.ui.control.Label
        LearningRateSpinner            matlab.ui.control.Spinner
        LearningRateSpinnerLabel       matlab.ui.control.Label
        OptimizerDropDown              matlab.ui.control.DropDown
        SamplingStrategyPanel          matlab.ui.container.Panel
        SamplingPctSpinner             matlab.ui.control.Spinner
        FractionSpinnerLabel           matlab.ui.control.Label
        SamplingStrategyDropDown       matlab.ui.control.DropDown
        MetricPanel                    matlab.ui.container.Panel
        MetricBinsSpinner              matlab.ui.control.Spinner
        BinNumberSpinnerLabel          matlab.ui.control.Label
        MetricDropDown                 matlab.ui.control.DropDown
        EnabledCheckBox                matlab.ui.control.CheckBox
        TypeDropDown                   matlab.ui.control.DropDown
        TransformationTypeDropDownLabel  matlab.ui.control.Label
        StageHeaderLabel               matlab.ui.control.Label
    end

    
    properties (Access = private)
        suMRak       % handle to the calling suMRak app
        StageIndex   % 1-based index into suMRak.StageSettings
        Working      % local struct copy under edit
    end
    
    methods (Access = private)

        function applyTypeVisibility(app)
            isB = strcmp(app.Working.Type, 'BSpline');
            app.BSplinePanel.Visible = matlab.lang.OnOffSwitchState(isB);
        end

        function applyConditionalEnable(app)
            % MattesMI is the only metric using bins
            app.MetricBinsSpinner.Enable = matlab.lang.OnOffSwitchState( ...
                strcmp(app.MetricDropDown.Value, 'MattesMI'));
            % LearningRate is GD-only
            app.LearningRateSpinner.Enable = matlab.lang.OnOffSwitchState( ...
                strcmp(app.OptimizerDropDown.Value, 'GradientDescent'));
            % Out-of-plane locking is applied through optimizer weights, which
            % only exist for the linear stages that carry a rotation.
            app.InPlaneOnlyCheckBox.Enable = matlab.lang.OnOffSwitchState( ...
                ismember(app.Working.Type, {'Euler3D','Similarity3D','Affine'}));
        end

        function loadFromWorking(app)
            w = app.Working;
            app.StageHeaderLabel.Text = sprintf('Editing Stage %d: %s', ...
                app.StageIndex - 1, w.Type);

            app.TypeDropDown.Items = cellstr(app.suMRak.availableStageTypes());
            app.TypeDropDown.Value = w.Type;

            app.EnabledCheckBox.Value          = w.Enabled;
            app.MetricDropDown.Value           = w.Metric;
            app.MetricBinsSpinner.Value        = w.MetricBins;
            app.SamplingPctSpinner.Value       = w.SamplingPct;
            app.SamplingStrategyDropDown.Value = w.SamplingStrategy;
            app.OptimizerDropDown.Value        = w.Optimizer;
            app.LearningRateSpinner.Value      = w.LearningRate;
            app.NumIterationsSpinner.Value     = w.NumIterations;
            app.ConvergenceTolEditField.Value  = w.ConvergenceTol;
            app.ShrinkFactorsEditField.Value   = num2str(w.ShrinkFactors);
            app.SmoothingSigmasEditField.Value = num2str(w.SmoothingSigmas);
            app.InterpolatorDropDown.Value     = w.Interpolator;
            app.InPlaneOnlyCheckBox.Value      = app.suMRak.getfield_or(w, 'InPlaneOnly', true);
            app.BSplineMeshSizeEditField.Value = num2str(w.BSplineMeshSize);
            app.BSplineOrderSpinner.Value      = w.BSplineOrder;
            app.BSplineScaleFactorsEditField.Value = num2str(w.BSplineScaleFactors);
            app.MinJacobianEditField.Value         = w.MinJacobian;

            applyTypeVisibility(app);
            applyConditionalEnable(app);
        end

        function ok = saveToWorking(app)
            ok = false;
            try
                shrink = str2num(app.ShrinkFactorsEditField.Value);    %#ok<ST2NM>
                sigmas = str2num(app.SmoothingSigmasEditField.Value);  %#ok<ST2NM>
                if isempty(shrink) || numel(shrink) ~= numel(sigmas)
                    error('ShrinkFactors and SmoothingSigmas must be non-empty and equal length.');
                end
                if any(shrink < 1) || any(shrink ~= round(shrink))
                    error('ShrinkFactors must be positive integers.');
                end
                if strcmp(app.Working.Type, 'BSpline')
                    mesh = str2num(app.BSplineMeshSizeEditField.Value); %#ok<ST2NM>
                    scaleF = str2num(app.BSplineScaleFactorsEditField.Value); %#ok<ST2NM>

                    if numel(mesh) ~= 3 || any(mesh < 1) || any(mesh ~= round(mesh))
                        error('BSplineMeshSize must be 3 positive integers (e.g. "8 8 8").');
                    end
                    if isempty(scaleF) || any(scaleF < 1) || any(scaleF ~= round(scaleF))
                        error('BSplineScaleFactors must be positive integers (e.g. "1 2 2").');
                    end
                    if numel(scaleF) ~= numel(shrink)
                        error('BSplineScaleFactors length (%d) must equal ShrinkFactors length (%d).', ...
                              numel(scaleF), numel(shrink));
                    end

                    app.Working.BSplineScaleFactors = scaleF;
                    app.Working.MinJacobian         = app.MinJacobianEditField.Value;
                    app.Working.BSplineMeshSize     = mesh;
                    app.Working.BSplineOrder        = app.BSplineOrderSpinner.Value;
                end
            catch ME
                uialert(app.TransformParameterEditorUIFigure, ME.message, 'Invalid input');
                return
            end
            app.Working.Enabled          = app.EnabledCheckBox.Value;
            app.Working.Metric           = app.MetricDropDown.Value;
            app.Working.MetricBins       = app.MetricBinsSpinner.Value;
            app.Working.SamplingPct      = app.SamplingPctSpinner.Value;
            app.Working.SamplingStrategy = app.SamplingStrategyDropDown.Value;
            app.Working.Optimizer        = app.OptimizerDropDown.Value;
            app.Working.LearningRate     = app.LearningRateSpinner.Value;
            app.Working.NumIterations    = app.NumIterationsSpinner.Value;
            app.Working.ConvergenceTol   = app.ConvergenceTolEditField.Value;
            app.Working.ShrinkFactors    = shrink;
            app.Working.SmoothingSigmas  = sigmas;
            app.Working.Interpolator     = app.InterpolatorDropDown.Value;
            app.Working.InPlaneOnly      = app.InPlaneOnlyCheckBox.Value;
            ok = true;
        end
    end

    % Callbacks that handle component events
    methods (Access = private)

        % Code that executes after component creation
        function startupFcn(app, caller, stageIndex)

            app.suMRak     = caller;
            app.StageIndex = stageIndex;
            app.Working    = caller.StageSettings(stageIndex);
            loadFromWorking(app);

            movegui(app.TransformParameterEditorUIFigure, 'center');

        end

        % Value changed function: TypeDropDown
        function TypeDropDownValueChanged(app, event)
            
            % Switching the type rebuilds defaults *for that type*, then
            % preserves common settings the user may have already changed.
            newType = string(app.TypeDropDown.Value);
            preserved = app.Working;
            app.Working = app.suMRak.defaultStageOfType(newType);
            app.Working.Enabled          = preserved.Enabled;
            app.Working.Metric           = preserved.Metric;
            app.Working.MetricBins       = preserved.MetricBins;
            app.Working.SamplingPct      = preserved.SamplingPct;
            app.Working.SamplingStrategy = preserved.SamplingStrategy;
            app.Working.Optimizer        = preserved.Optimizer;
            app.Working.LearningRate     = preserved.LearningRate;
            app.Working.NumIterations    = preserved.NumIterations;
            app.Working.ConvergenceTol   = preserved.ConvergenceTol;
            app.Working.ShrinkFactors    = preserved.ShrinkFactors;
            app.Working.SmoothingSigmas  = preserved.SmoothingSigmas;
            app.Working.Interpolator     = preserved.Interpolator;
            app.Working.InPlaneOnly      = app.suMRak.getfield_or(preserved, 'InPlaneOnly', true);
            loadFromWorking(app);

        end

        % Value changed function: MetricDropDown
        function MetricDropDownValueChanged(app, event)

            applyConditionalEnable(app);

        end

        % Value changed function: OptimizerDropDown
        function OptimizerDropDownValueChanged(app, event)

            applyConditionalEnable(app);
            
        end

        % Button pushed function: ApplyButton
        function ApplyButtonPushed(app, event)

            if ~saveToWorking(app), return, end
            app.suMRak.StageSettings(app.StageIndex) = app.Working;
            refreshTransformsListBox(app.suMRak);
            delete(app);

        end

        % Button pushed function: CancelButton
        function CancelButtonPushed(app, event)

            delete(app);

        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Get the file path for locating images
            pathToMLAPP = fileparts(mfilename('fullpath'));

            % Create TransformParameterEditorUIFigure and hide until all components are created
            app.TransformParameterEditorUIFigure = uifigure('Visible', 'off');
            app.TransformParameterEditorUIFigure.Position = [100 100 520 620];
            app.TransformParameterEditorUIFigure.Name = 'Transform Parameter Editor';
            app.TransformParameterEditorUIFigure.Icon = fullfile(pathToMLAPP, 'resources', 'icon.png');

            % Create StageHeaderLabel
            app.StageHeaderLabel = uilabel(app.TransformParameterEditorUIFigure);
            app.StageHeaderLabel.HorizontalAlignment = 'center';
            app.StageHeaderLabel.FontSize = 14;
            app.StageHeaderLabel.Position = [159 581 207 22];
            app.StageHeaderLabel.Text = 'Editing Stage 1: Affine';

            % Create TransformationTypeDropDownLabel
            app.TransformationTypeDropDownLabel = uilabel(app.TransformParameterEditorUIFigure);
            app.TransformationTypeDropDownLabel.HorizontalAlignment = 'right';
            app.TransformationTypeDropDownLabel.Position = [206 550 114 22];
            app.TransformationTypeDropDownLabel.Text = 'Transformation Type';

            % Create TypeDropDown
            app.TypeDropDown = uidropdown(app.TransformParameterEditorUIFigure);
            app.TypeDropDown.Items = {};
            app.TypeDropDown.ValueChangedFcn = createCallbackFcn(app, @TypeDropDownValueChanged, true);
            app.TypeDropDown.Position = [185 521 155 22];
            app.TypeDropDown.Value = {};

            % Create EnabledCheckBox
            app.EnabledCheckBox = uicheckbox(app.TransformParameterEditorUIFigure);
            app.EnabledCheckBox.Text = 'Enabled';
            app.EnabledCheckBox.Position = [138 484 66 22];

            % Create MetricPanel
            app.MetricPanel = uipanel(app.TransformParameterEditorUIFigure);
            app.MetricPanel.BorderType = 'none';
            app.MetricPanel.TitlePosition = 'centertop';
            app.MetricPanel.Title = 'Metric';
            app.MetricPanel.Position = [20 356 234 104];

            % Create MetricDropDown
            app.MetricDropDown = uidropdown(app.MetricPanel);
            app.MetricDropDown.Items = {'MattesMI', 'MeanSquares', 'Correlation'};
            app.MetricDropDown.ValueChangedFcn = createCallbackFcn(app, @MetricDropDownValueChanged, true);
            app.MetricDropDown.Position = [49 52 138 22];
            app.MetricDropDown.Value = 'MattesMI';

            % Create BinNumberSpinnerLabel
            app.BinNumberSpinnerLabel = uilabel(app.MetricPanel);
            app.BinNumberSpinnerLabel.HorizontalAlignment = 'right';
            app.BinNumberSpinnerLabel.Position = [45 15 68 22];
            app.BinNumberSpinnerLabel.Text = 'Bin Number';

            % Create MetricBinsSpinner
            app.MetricBinsSpinner = uispinner(app.MetricPanel);
            app.MetricBinsSpinner.Limits = [8 500];
            app.MetricBinsSpinner.RoundFractionalValues = 'on';
            app.MetricBinsSpinner.ValueDisplayFormat = '%.0f';
            app.MetricBinsSpinner.Position = [128 15 62 22];
            app.MetricBinsSpinner.Value = 8;

            % Create SamplingStrategyPanel
            app.SamplingStrategyPanel = uipanel(app.TransformParameterEditorUIFigure);
            app.SamplingStrategyPanel.BorderType = 'none';
            app.SamplingStrategyPanel.TitlePosition = 'centertop';
            app.SamplingStrategyPanel.Title = 'Sampling Strategy';
            app.SamplingStrategyPanel.Position = [270 356 234 104];

            % Create SamplingStrategyDropDown
            app.SamplingStrategyDropDown = uidropdown(app.SamplingStrategyPanel);
            app.SamplingStrategyDropDown.Items = {'Random', 'Regular', 'None'};
            app.SamplingStrategyDropDown.Position = [49 52 138 22];
            app.SamplingStrategyDropDown.Value = 'Random';

            % Create FractionSpinnerLabel
            app.FractionSpinnerLabel = uilabel(app.SamplingStrategyPanel);
            app.FractionSpinnerLabel.HorizontalAlignment = 'right';
            app.FractionSpinnerLabel.Position = [55 15 48 22];
            app.FractionSpinnerLabel.Text = 'Fraction';

            % Create SamplingPctSpinner
            app.SamplingPctSpinner = uispinner(app.SamplingStrategyPanel);
            app.SamplingPctSpinner.Step = 0.05;
            app.SamplingPctSpinner.Limits = [0 1];
            app.SamplingPctSpinner.ValueDisplayFormat = '%.2f';
            app.SamplingPctSpinner.Position = [118 15 62 22];

            % Create OptimizerPanel
            app.OptimizerPanel = uipanel(app.TransformParameterEditorUIFigure);
            app.OptimizerPanel.BorderType = 'none';
            app.OptimizerPanel.TitlePosition = 'centertop';
            app.OptimizerPanel.Title = 'Optimizer';
            app.OptimizerPanel.Position = [20 89 234 241];

            % Create OptimizerDropDown
            app.OptimizerDropDown = uidropdown(app.OptimizerPanel);
            app.OptimizerDropDown.Items = {'GradientDescent', 'GradientDescentLineSearch', 'LBFGSB', 'Powell'};
            app.OptimizerDropDown.ValueChangedFcn = createCallbackFcn(app, @OptimizerDropDownValueChanged, true);
            app.OptimizerDropDown.Position = [48 184 136 22];
            app.OptimizerDropDown.Value = 'GradientDescent';

            % Create LearningRateSpinnerLabel
            app.LearningRateSpinnerLabel = uilabel(app.OptimizerPanel);
            app.LearningRateSpinnerLabel.HorizontalAlignment = 'right';
            app.LearningRateSpinnerLabel.Position = [45 147 80 22];
            app.LearningRateSpinnerLabel.Text = 'Learning Rate';

            % Create LearningRateSpinner
            app.LearningRateSpinner = uispinner(app.OptimizerPanel);
            app.LearningRateSpinner.Step = 0.1;
            app.LearningRateSpinner.Position = [134 147 62 22];

            % Create NrofIterationsSpinnerLabel
            app.NrofIterationsSpinnerLabel = uilabel(app.OptimizerPanel);
            app.NrofIterationsSpinnerLabel.HorizontalAlignment = 'right';
            app.NrofIterationsSpinnerLabel.Position = [39 112 86 22];
            app.NrofIterationsSpinnerLabel.Text = 'Nr. of Iterations';

            % Create NumIterationsSpinner
            app.NumIterationsSpinner = uispinner(app.OptimizerPanel);
            app.NumIterationsSpinner.Position = [134 112 62 22];

            % Create ConvegrenceToleranceEditFieldLabel
            app.ConvegrenceToleranceEditFieldLabel = uilabel(app.OptimizerPanel);
            app.ConvegrenceToleranceEditFieldLabel.HorizontalAlignment = 'right';
            app.ConvegrenceToleranceEditFieldLabel.Position = [14 77 132 22];
            app.ConvegrenceToleranceEditFieldLabel.Text = 'Convegrence Tolerance';

            % Create ConvergenceTolEditField
            app.ConvergenceTolEditField = uieditfield(app.OptimizerPanel, 'numeric');
            app.ConvergenceTolEditField.ValueDisplayFormat = '%.2e';
            app.ConvergenceTolEditField.Position = [155 77 67 22];

            % Create ShrinkFactorsEditFieldLabel
            app.ShrinkFactorsEditFieldLabel = uilabel(app.OptimizerPanel);
            app.ShrinkFactorsEditFieldLabel.HorizontalAlignment = 'right';
            app.ShrinkFactorsEditFieldLabel.Position = [31 41 82 22];
            app.ShrinkFactorsEditFieldLabel.Text = 'Shrink Factors';

            % Create ShrinkFactorsEditField
            app.ShrinkFactorsEditField = uieditfield(app.OptimizerPanel, 'text');
            app.ShrinkFactorsEditField.HorizontalAlignment = 'center';
            app.ShrinkFactorsEditField.Position = [128 41 100 22];
            app.ShrinkFactorsEditField.Value = '4 2 1';

            % Create SmoothingSigmasEditFieldLabel
            app.SmoothingSigmasEditFieldLabel = uilabel(app.OptimizerPanel);
            app.SmoothingSigmasEditFieldLabel.HorizontalAlignment = 'right';
            app.SmoothingSigmasEditFieldLabel.Position = [7 9 106 22];
            app.SmoothingSigmasEditFieldLabel.Text = 'Smoothing Sigmas';

            % Create SmoothingSigmasEditField
            app.SmoothingSigmasEditField = uieditfield(app.OptimizerPanel, 'text');
            app.SmoothingSigmasEditField.HorizontalAlignment = 'center';
            app.SmoothingSigmasEditField.Position = [128 9 100 22];

            % Create InterpolatorPanel
            app.InterpolatorPanel = uipanel(app.TransformParameterEditorUIFigure);
            app.InterpolatorPanel.BorderType = 'none';
            app.InterpolatorPanel.TitlePosition = 'centertop';
            app.InterpolatorPanel.Title = 'Interpolator';
            app.InterpolatorPanel.Position = [270 256 234 74];

            % Create InterpolatorDropDown
            app.InterpolatorDropDown = uidropdown(app.InterpolatorPanel);
            app.InterpolatorDropDown.Items = {'Linear', 'NearestNeighbor', 'BSpline'};
            app.InterpolatorDropDown.Position = [49 17 138 22];
            app.InterpolatorDropDown.Value = 'Linear';

            % Create BSplinePanel
            app.BSplinePanel = uipanel(app.TransformParameterEditorUIFigure);
            app.BSplinePanel.TitlePosition = 'centertop';
            app.BSplinePanel.Title = 'BSpline parameters';
            app.BSplinePanel.Position = [289 89 201 161];

            % Create MeshSizeEditFieldLabel
            app.MeshSizeEditFieldLabel = uilabel(app.BSplinePanel);
            app.MeshSizeEditFieldLabel.HorizontalAlignment = 'right';
            app.MeshSizeEditFieldLabel.Position = [10 109 61 22];
            app.MeshSizeEditFieldLabel.Text = 'Mesh Size';

            % Create BSplineMeshSizeEditField
            app.BSplineMeshSizeEditField = uieditfield(app.BSplinePanel, 'text');
            app.BSplineMeshSizeEditField.HorizontalAlignment = 'center';
            app.BSplineMeshSizeEditField.Position = [86 109 100 22];
            app.BSplineMeshSizeEditField.Value = '8 8 8';

            % Create BSplineOrderSpinnerLabel
            app.BSplineOrderSpinnerLabel = uilabel(app.BSplinePanel);
            app.BSplineOrderSpinnerLabel.HorizontalAlignment = 'right';
            app.BSplineOrderSpinnerLabel.Position = [10 76 80 22];
            app.BSplineOrderSpinnerLabel.Text = 'BSpline Order';

            % Create BSplineOrderSpinner
            app.BSplineOrderSpinner = uispinner(app.BSplinePanel);
            app.BSplineOrderSpinner.Limits = [0 5];
            app.BSplineOrderSpinner.ValueDisplayFormat = '%.0f';
            app.BSplineOrderSpinner.Position = [118 76 68 22];

            % Create BSplineFactorsEditFieldLabel
            app.BSplineFactorsEditFieldLabel = uilabel(app.BSplinePanel);
            app.BSplineFactorsEditFieldLabel.HorizontalAlignment = 'right';
            app.BSplineFactorsEditFieldLabel.Position = [10 40 93 22];
            app.BSplineFactorsEditFieldLabel.Text = 'BSpline Factors ';

            % Create BSplineScaleFactorsEditField
            app.BSplineScaleFactorsEditField = uieditfield(app.BSplinePanel, 'text');
            app.BSplineScaleFactorsEditField.HorizontalAlignment = 'center';
            app.BSplineScaleFactorsEditField.Position = [118 40 68 22];
            app.BSplineScaleFactorsEditField.Value = '1 2';

            % Create MinJacobianLabel
            app.MinJacobianLabel = uilabel(app.BSplinePanel);
            app.MinJacobianLabel.HorizontalAlignment = 'right';
            app.MinJacobianLabel.Position = [10 8 79 22];
            app.MinJacobianLabel.Text = 'Min. Jacobian';

            % Create MinJacobianEditField
            app.MinJacobianEditField = uieditfield(app.BSplinePanel, 'numeric');
            app.MinJacobianEditField.Limits = [0 1];
            app.MinJacobianEditField.ValueDisplayFormat = '%.2f';
            app.MinJacobianEditField.Position = [118 8 68 22];
            app.MinJacobianEditField.Value = 0.1;

            % Create ApplyButton
            app.ApplyButton = uibutton(app.TransformParameterEditorUIFigure, 'push');
            app.ApplyButton.ButtonPushedFcn = createCallbackFcn(app, @ApplyButtonPushed, true);
            app.ApplyButton.Position = [152 19 100 23];
            app.ApplyButton.Text = 'Apply';

            % Create CancelButton
            app.CancelButton = uibutton(app.TransformParameterEditorUIFigure, 'push');
            app.CancelButton.ButtonPushedFcn = createCallbackFcn(app, @CancelButtonPushed, true);
            app.CancelButton.Position = [273 19 100 23];
            app.CancelButton.Text = 'Cancel';

            % Create InPlaneOnlyCheckBox
            app.InPlaneOnlyCheckBox = uicheckbox(app.TransformParameterEditorUIFigure);
            app.InPlaneOnlyCheckBox.Text = 'Lock out-of-plane rotation';
            app.InPlaneOnlyCheckBox.Position = [225 484 158 22];

            % Show the figure after all components are created
            app.TransformParameterEditorUIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = TransformParameterEditor_exported(varargin)

            runningApp = getRunningApp(app);

            % Check for running singleton app
            if isempty(runningApp)

                % Create UIFigure and components
                createComponents(app)

                % Register the app with App Designer
                registerApp(app, app.TransformParameterEditorUIFigure)

                % Execute the startup function
                runStartupFcn(app, @(app)startupFcn(app, varargin{:}))
            else

                % Focus the running singleton app
                figure(runningApp.TransformParameterEditorUIFigure)

                app = runningApp;
            end

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.TransformParameterEditorUIFigure)
        end
    end
end