function v = horner(c,x,a);
%
% function v = horner(c,x,a)
%
% Fallið reiknar út gildi margliðunnar
%    p(x) = c(1) + c(2)(x-x(1)) + ... + c(m)(x-x(1))*...*(x-x(m-1))
% í punktunum a_1, ..., a_n.
m = length(c); 
n = length(a);
v = c(m)*ones(1,n);

for i=m-1:-1:1
    v = c(i) + v .* (a - x(i));
end
