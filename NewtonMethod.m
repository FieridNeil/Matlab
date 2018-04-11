function [p, i] = NewtonMethod(f, df, g, tol, n)

    % Generates a random number between a and b
    %p0 = (b - a)*rand() + a;
    p0 = g;
    i = 1;
    while i <= n
        p = p0 - f(p0) / df(p0);
        if abs(p - p0) < tol
            return;
        end
        i = i + 1;
        p0 = p;

    end

    p = "Method failed after x iterations";


end