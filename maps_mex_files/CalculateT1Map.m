function [coeffs] = CalculateT1Map(T1raw_reordered_reshaped,tvalues,ivalues)
    %UNTITLED Summary of this function goes here
    %   Detailed explanation goes here
    opts = optimoptions(@lsqcurvefit,'Algorithm','levenberg-marquardt');
    
    tmax = max(tvalues);

    if isnan(ivalues(1))
        fun = @(coeffs,tvalues)coeffs(1)*(1-exp(-tvalues/coeffs(2))); 
        coeffs0 = [1,1];
        coeffs = zeros(length(T1raw_reordered_reshaped),2);
    
        for br = 1:length(T1raw_reordered_reshaped)
            if max(T1raw_reordered_reshaped(br,:)) ~= 0
                T1raw_reordered_reshaped(br,:) = T1raw_reordered_reshaped(br,:) / max(T1raw_reordered_reshaped(br,:));
                coeffs(br,:) = lsqcurvefit(fun,coeffs0,tvalues,T1raw_reordered_reshaped(br,:), [0 0], ...
                [1 2*tmax], opts);
            end
        end
    else
        fun = @(coeffs,ivalues)coeffs(1)*abs((1-2*exp(-ivalues/coeffs(2)))); 
        coeffs0 = [1,1];
        coeffs = zeros(length(T1raw_reordered_reshaped),2);
    
        for br = 1:length(T1raw_reordered_reshaped)
            if max(T1raw_reordered_reshaped(br,:)) ~= 0
                T1raw_reordered_reshaped(br,:) = T1raw_reordered_reshaped(br,:) / max(T1raw_reordered_reshaped(br,:));
                coeffs(br,:) = lsqcurvefit(fun,coeffs0,ivalues,T1raw_reordered_reshaped(br,:), [0 0], ...
                [1 2*tmax], opts);
            end
        end
    end
end