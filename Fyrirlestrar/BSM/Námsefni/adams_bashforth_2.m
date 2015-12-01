function w = adams_bashforth_2(f,t,x1,x2)
%   w = adams{_}bashforth{_}2(f,t,x1,x2)
% Nálgar lausn upphafsgildisverkefnisins
%   x' = f(t,x)
%   x(t(1)) = x1
% í punktunum í t með 2ja þrepa Adams-Bashforth aðferð.
% Stakið x2 er nálgunargildi á x(t(2)).

N = length(t);  M = length(x1); w = zeros(M,N);
% Upphafsstillum gildi f(t,x) og w
fx1 = f(t(1),x1); fx2 = f(t(2),x2);
w(:,1) = x1; w(:,2) = x2;
for i=3:N
  % Reiknum nálgunargildi
  h = t(i)-t(i-1);
  w(:,i) = w(:,i-1) + (h/2)*(3*fx2 - fx1);
  fx1 = fx2; fx2 = f(t(i),w(:,i));
end