function [p, i] = BisectionMethod(f, a, b, Tol, N)
format long;
    o = 1:0:10;
    j = 1:0:10;
    i = 1;
    FA = f(a);
    while i <= N
        p = a + (b - a) / 2;
        FP = f(p);
        if FP == 0 || (b - a) / 2 < Tol
           return; 
        end
        

        if FA * FP > 0 
            a = p;
            FA = FP;
        else 
            b = p;
        end
        i = i + 1;
    end
end

