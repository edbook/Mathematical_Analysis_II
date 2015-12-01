function w = euler(f,t,alpha)
%   function w = euler(f,t,alpha) 
% Aðferð Eulers fyrir afleiðujöfnuhneppi 
%         x'(t)=f(t,x(t)), x(0)=alpha. 
% Inn fara: f - fallið f 
%           t - vigur með skiptingu á t-ás. 
%           alpha - upphafsgildið í t(1). 
% Út koma:  w - fylki með nálgunargildunum. 

N = length(t);   
m = length(alpha); 
w = zeros(m,N);  
w(:,1) = alpha; 
for j=2:N 
   w(:,j) = w(:,j-1)+(t(j)-t(j-1))*f(t(j-1),w(:,j-1));
end 