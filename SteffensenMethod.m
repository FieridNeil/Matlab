function [p, i] = SteffensenMethod(g, a, b, tol, n)

    % Generates a random number between a and b
    p0 = (b - a)*rand() + a;
    
    i = 1;
    while i <= n
        p1 = g(p0);
        p2 = g(p1);
        p = p0 - (p1 - p0)^2 / (p2 - 2 * p1 + p0);
        if abs(p - p0) < tol
           return
        end
        i = i+1;
        p0 = p;
    end
    
    p = "Method failed after " + (i - 1) + " iterations";
end