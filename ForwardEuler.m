function [t, w] = ForwardEuler(a, b, N, f, alpha)
    %preallocate t and w
    w = zeros(1:N+5);
    t = zeros(1:N+5);
    
    h = (b - a) / N;
    
    t(1) = a;
    w(1) = alpha;
    for i=2:N+1
        w(i) = w(i-1) + h * f(t(i - 1), w(i-1));
        t(i) = a + i * h;
        
    end


end