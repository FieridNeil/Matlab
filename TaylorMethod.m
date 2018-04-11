function [w, t] = TaylorMethod(a, b, f, df, ddf, dddf, N, alpha)

    %preallocate w and t
    w = zeros(1:N+5);
    t = zeros(1:N+5);
    
    %step size
    h = (b - a) / N;
    
    t(1) = a;
    w(1) = alpha;

end