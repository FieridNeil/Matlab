function r = RombergIntegration(a, b, n, f)


    h = (b - a);
    r(1,1) = h/2 * (f(a) + f(b));
    
    for i=2:n
        s = 0;
        for k=1:2^(i - 2)
            
            s = s + f(a + (k - 0.5)*h);
            
        end
        r(i,1) = 1/2 * (r(i-1,1) + s*h);
        
        for j=2:i
            r(i,j) = r(i, j - 1) + ((r(i, j - 1) - r(i-1,j-1)) / (4^(j-1) - 1)) ;
            
        end
        
        h = h/2;
        
    end


end