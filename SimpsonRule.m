function XII = SimpsonRule(a, b, f, n)

     h = (b - a) / n;
     XI(1) = f(a) + f(b);
     XI(2) = 0;
     XI(3) = 0;
     
     for i = 1:n-1
         X = a + i*h;
         if mod(i, 2) == 0
             XI(3) = XI(3) + f(X);
         else 
             XI(2) = XI(2) + f(X);
             
         end
         
         
     end
     XII = h*(XI(1) + 2 * XI(3) + 4 * XI(2))/3;
     
end