function [p,i] = FixedPointMethod(a, b, g, TOL, N)
    % Generates a random number between a and b
    p0 = (b - a)*rand() + a;
    i = 1;
    while i <= N
        p = g(p0);
        
        % If the error is less than the tolerance, return
        if abs(p - p0) < TOL
            return
        end
        i = i + 1;
        p0 = p;
    end
    
    p = "Method failed after x iterations";


end