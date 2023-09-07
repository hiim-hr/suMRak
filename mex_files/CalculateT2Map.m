function [coeffs] = CalculateT2Map(T2raw_reordered_reshaped,tvalues)
    %UNTITLED2 Summary of this function goes here
    %   Detailed explanation goes here
    
    opts = optimoptions(@lsqcurvefit,'Algorithm','levenberg-marquardt');
    
    tmax = max(tvalues);
    
    fun = @(coeffs,tvalues)coeffs(1)*exp(-tvalues/coeffs(2)); 
    coeffs0 = [1,0.03];
    coeffs = zeros(length(T2raw_reordered_reshaped),2);
    
    for br = 1:length(T2raw_reordered_reshaped)
        if max(T2raw_reordered_reshaped(br,:)) ~= 0
            T2raw_reordered_reshaped(br,:) = T2raw_reordered_reshaped(br,:) / max(T2raw_reordered_reshaped(br,:));
            coeffs(br,:) = lsqcurvefit(fun,coeffs0,tvalues,T2raw_reordered_reshaped(br,:), [0 0], ...
            [1 2*tmax], opts);
        end
    end
end