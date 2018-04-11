function [y, z] = HornerMethod(x, n, a)
    % y = last coefficent
    y = a(1);
    
    % z = last coefficient
    z = a(1);

    for j = 2:n+1
        y = x*y + a(j);
        
        % P(x) does 1 more iteration than P'(x) => stop at j == n when P(x)
        % needs to do another iteration
        if j <= n
            z = x*z + y;
        end
    end
   

end