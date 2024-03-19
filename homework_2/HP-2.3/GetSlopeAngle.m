function alpha = GetSlopeAngle(x, iSlope, iDataSet)

if (iDataSet == 1)                                % Training
 if (iSlope == 1) 
   alpha = 7 + sin(x/100) + cos(sqrt(2)*x/50);    % You may modify this!
 elseif (iSlope == 2) 
    alpha = 5 + 2.*sin(x/50) + cos(sqrt(2)*x/100);
 elseif (iSlope== 3)
    alpha = 5 + 2.* sin(x/400) + cos(sqrt(2)*x/200);  % You may modify this!  
 elseif (iSlope == 4)
   alpha = 6 + 2*sin(x/200) + cos(sqrt(7)*x/50);  % You may modify this!
 elseif (iSlope == 5)
   alpha = 4 + 3*sin(x/100) + cos(x/40);
 elseif (iSlope == 6)
   alpha = 5 + 2*sin(x/50) -x/300;  % You may modify this!
 elseif (iSlope == 7)
   alpha = 2 + 3*sin(x/500) + cos(x/500);
 elseif (iSlope == 8)
   alpha = 6 + 3*sin(x/300) ;
 elseif (iSlope == 9)
    alpha = 5 + sin(x/50) + cos(sqrt(5)*x/50);
 elseif (iSlope == 10)
   alpha = 7 - 2*sin(x/500) - cos(sqrt(2)*x/100);
 end 

elseif (iDataSet == 2)                            % Validation
 if (iSlope == 1) 
   alpha = 6 - sin(x/100) + cos(sqrt(3)*x/50);    
 elseif (iSlope == 2) 
    alpha = 7 + sin(x/100) + cos(sqrt(2)*x/300);
 elseif (iSlope== 3)
     alpha = 6 + sin(x/200) + 2 .*cos(x/200);  
 elseif (iSlope == 4)
    alpha = 5 + 2.*cos(x/100) - x./300;
 elseif (iSlope == 5) 
   alpha = 5 + sin(x/50) + cos(sqrt(5)*x/50);    
 end 

elseif (iDataSet == 3)                           % Test
 if (iSlope == 1) 
   alpha = 6 - sin(x/100) - cos(sqrt(7)*x/50);  
 elseif(iSlope == 2) 
   alpha = 4 - sin(x/50) - cos(sqrt(2)*x/50);
elseif(iSlope == 3) 
   alpha = 5 + sin(x/50) - cos(sqrt(2)*x/100);
 elseif(iSlope == 4) 
   alpha = 7 - x/200 - cos(sqrt(2)*x/50);
 elseif (iSlope == 5)
   alpha = 4 + (x/1000) + sin(x/70) + cos(sqrt(7)*x/100); 
 end
end
