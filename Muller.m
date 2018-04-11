function p = Muller(p0, p1, p2, f, TOL, n)

    h1 = p1 - p0;
    h2 = p2 - p1;
    delta1 = (f(p1) - f(p0))/h1;
    delta2 = (f(p2) - f(p1))/h2;
    d = (delta2 - delta1)/(h2 + h1);
    i = 3;
    while i <= n
       
        b = 
       
    end



end