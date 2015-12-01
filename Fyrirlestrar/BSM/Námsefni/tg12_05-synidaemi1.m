%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Töluleg greining, vor 2012: 17. febrúar
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Sýnidæmi úr kafla 5.1, glærum 5.58-5.63
%
f = @(x) x.^2.*log(x)
p = @(x) (x-1)+(4.*log(2)-1).*(x-1).^2 + (-4*log(2)+3).*(x-1).^2.*(x-2)
q = @(x) p(x) + (5*log(2)-7/2).*(z-1).^2.*(x-2).^2
x=linspace(0,3)
plot(x,f(x),x,p(x),x,q(x))

% Sýnidæmi úr kafla 5.5, fyrir glæru 5.64
% Býr til mynd á bls. 387 í kennslubókinni
f = @(x) 1./(25*x.^2+1)
a = linspace(-1,1)
x = linspace(-1,1,9);
y = f(x);
c = newtonStudlar(x,y);
v = horner(c,x,a);
plot(a,f(a),a,v)