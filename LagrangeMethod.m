function p = LagrangeMethod(x, y, w)
    
    n = length(x);
    
    p = 0;
    
    for k = 1:n
        
       L = 1;
       
       for i = 1:n
           if i ~= k
               
              L = L .* (w - x(i)) ./ (x(k) - x(i)); 
           end
           
       end
        
       
       p = p + y(k) .* L;
    end



end