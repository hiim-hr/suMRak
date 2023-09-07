function [perf] = CalculateASLMap(T1rawSS_reordered_reshaped,T1rawNS_reordered_reshaped,tvalues,ivalues,T1blood)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
    opts = optimoptions(@lsqcurvefit,'Algorithm','levenberg-marquardt');
    tmax = max(tvalues);
    
    fun = @(coeffs,ivalues)coeffs(1)*abs((1-2*exp(-ivalues/coeffs(2)))); 
    coeffs0 = [1,1];
    coeffsSS = zeros(length(T1rawSS_reordered_reshaped),2);
    coeffsNS = zeros(length(T1rawNS_reordered_reshaped),2);
    perf = zeros(length(T1rawNS_reordered_reshaped),1);
    
    
    for br = 1:length(T1rawSS_reordered_reshaped)
        if max(T1rawSS_reordered_reshaped(br,:)) ~= 0
            T1rawSS_reordered_reshaped(br,:) = T1rawSS_reordered_reshaped(br,:) / max(T1rawSS_reordered_reshaped(br,:));
            coeffsSS(br,:) = lsqcurvefit(fun,coeffs0,ivalues,T1rawSS_reordered_reshaped(br,:), [0 0], ...
            [1 2*tmax], opts);
        end
    end
    
    for br = 1:length(T1rawNS_reordered_reshaped)
        if max(T1rawNS_reordered_reshaped(br,:)) ~= 0
            T1rawNS_reordered_reshaped(br,:) = T1rawNS_reordered_reshaped(br,:) / max(T1rawNS_reordered_reshaped(br,:));
            coeffsNS(br,:) = lsqcurvefit(fun,coeffs0,ivalues,T1rawNS_reordered_reshaped(br,:), [0 0], ...
            [1 2*tmax], opts);
        end
    end
    
    for br = 1:length(T1rawSS_reordered_reshaped)
        perf(br) = abs(4980 * coeffsNS(br,2) / T1blood * (1 / coeffsSS(br,2) - 1 / coeffsNS(br,2)));
    end
end