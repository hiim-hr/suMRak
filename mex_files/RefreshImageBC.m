function [CurrentSlice] = RefreshImageBC(CurrentSlice,ContrastSliderValue,BrightnessSliderValue)
%REFRESHIMAGEBC Scales the image intensity to [0 1] and applies contrast
%and brightness
%   Takes current slice matrix and brightness and contrast scalars as
%   arguments
    CurrentSlice = (CurrentSlice - min(CurrentSlice(:))) / (max(CurrentSlice(:)) - min(CurrentSlice(:))); % Scale image to [0 1]
    CurrentSlice = CurrentSlice * exp(ContrastSliderValue) + BrightnessSliderValue; % Apply contrast and brightness        
end