%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Toluleg greining, vor 2012: 21. mars
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Synidæmi um notkun a fjolskrefaadferdum, 
% nanar tiltekid 2 skrefa Adams-Bashforth,
% til thess ad leysa Lotka Volterra jofnurnar.
% Umfjollun um thessar jofnur ma finna i 
% flestum bokum um afleidujofnur og a 
% Wikipediu. En jofnurnar lýsa sambandi
% tveggja dýrategunda, bradar (x1) og 
% randýrs (x2);
% dx1/dt = x1*(a-b*x2)
% dx2/dt = -x2*(c-d*x1)

% Skodum timabilid fra 0 upp i 30
T = linspace(0,30);

% Byrjum a ad skilgreina fastanna, med thvi ad fikta i theim 
% sest hvernig hegdunin breytist; sveiflurnar minnka/aukast, 
% og sambandid a milli theirra breytist.
a = 1;
b = 0.5;
c = 1;
d = 0.4;

% Fallid f heldur utan um hægri hlidina i jofnunum ad ofan, 
% og vigurinn x er [x(1); x(2)].
f = @(t,x) [x(1).*(a-b*x(2)) ; -x(2).*(c-d*x(1)) ];

% Notum upphafsgildin x1(0) = 3, x2(0) = 1.
x1 = [3  1];

% Faum fyrstu nalgun med adferd Eulers, thetta er naudsynlegt thvi
% 2 skrefa Adams-Bashforth tharf ad fa gildin fyrir fyrstu 2 timagildin.
x2 = euler(f,T(1:2),x1);

% Kollum loks a Adams-Bashforth adferdina, athugid ad x2 er 2x2 fylki med
% lausninni ur Euler, og vid viljum bara fa seinni dalkinn.
X = adams_bashforth_2(f,T,x1,x2(:,2) );

% Teiknum upp lausnina
plot(T,X);

