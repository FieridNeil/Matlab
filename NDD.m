% Newton's Divided Difference Method
function p = NDD(x, y, w)
    
    n = length(x);

    f(:,1) = y;
    
    % Calculate the coefficients
    for i = 2:n
        
       for j = 2:i
           
           f(i,j) = ((f(i, j-1)) - (f(i-1, j-1))) ./ (x(i) - x(i-j+1));
           
       end
        
    end
    
    % Convert into a polynomial using the above coefs
    p = f(1,1);
    for k = 2:n
        prod = 1;
       for m = 1:k-1
           prod = prod*(w - x(m));
       end
       p = p+f(k,k).*prod; 
    end
    
    
    
end