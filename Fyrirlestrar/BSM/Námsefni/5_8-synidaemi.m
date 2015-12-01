function 5_8-synidaemi
%  Matlab forrit sem teiknar upp bestu margliðunálgun á gefnum gögnum
x=[0; 1; 2; 3; 4; 5; 6] 
y=[2.7; -0.5; -1.7; -1.9; -1.5; 0.2; 2.3 ] 
m=length(x); 

% Við leitum að bestu margliðu af stigi 2 eða lægri 
% og því eru  grunnföllin eru 3 talsins. 
n=3; 

% Stuðlafylkið er A=(a_{ij}), a_{ij}=x_i^{j-1}  
A(1:m,1)=ones(m,1); 
A(1:m,2)=x; 
for j=3:n 
    A(1:m,j)=A(1:m,j-1).*x; 
end  
% Reiknum úr úr normaljöfnuhneppinu A^TAc=A^Ty:  
c=(A'*A)\(A'*y); 

% Teikning undirbúin 
N=100;   
X=linspace(min(x),max(x),N); 

% Hliðrun í reikniriti horners er 0 
% 
hlidrun=zeros(n,1); 
for j=1:N 
    Y(j)=horner(X(j),c,hlidrun); 
end 
figure 
plot(x,y,'*',X,Y) 
xlabel('x'), ylabel('y') 
title('Tvö afbrigði af aðferð minnstu fervika') 
print 