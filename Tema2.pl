#!/usr/bin/env ciao-shell
% -*- mode: ciao; -*-

P1 = pto(1,1).
P2 = pto(2,3).
Linea = linea(P1,P2)= linea(pto(1,1),pto(2,3)).
Tringulo = triangulo(pto(4,2),pto(6,4),pto(7,1)).

% esto nos representaria una linea del pto 1,1 al pto 2,3
% y un triangulo con puntos que le pasamos

%El arbol que nos saldria sería P1=pto(root)
%                                 |    |
%                                 1    1

%El arbol que nos saldria sería Linea=linea(root)
%                                |      |
%                               pto    pto
%                               | |    | |
%                               1 1    2 3


%El arbol que nos saldria sería P1=point(root)
%                                |    |    |
%                               pto  pto  pto              
%                               | |  | |  | |
%                               4 2  6 4  7 1


%(a+b)*(c-5).
% *, +, - serían functor--> *(+(a,b), -(c,5)). 
%El arbol que nos saldria sería   *(root)
%                                 |    |
%                                 +    -
%                                | |  | |
%                                a b  c 5

%Fechas:

date(D,M,2001).
date(D1,may,Y1).
% Si compilamos y escribimos ?- date(D,M,2001)=date(D1,may,Y1).
% nos devolvera D1=D, M=M1,Y1=2001 yes

%si escribimos:
% date(D,M,2001)=date(D1,may,Y1),
%   date(D,M,2001)=date(15,M,Y).
% devolvera:

%D = 15,
%D1 = 15,
%M = may,
%Y = 2001,
%Y1 = 2001 ? 
%yes

%siempre devuelve Mayuscula = minuscula o numero

%date(D,_,2001)=date(15,3,Y). NO

%date(D,_M,2001)=date(15,3,Y). NO

%date(D,_M_,2001)=date(15,3,Y). -> D = 15,Y = 2001 ? yes

%date(D,M,2001)=date(15,X1,Y). -> D = 15,X1 = M,Y = 2001 ? yes

% pto(A,B) = pto(1,2). -> A = 1,B = 2 ? yes

% pto(A,B)=pto(X,Y,Z). NO

% plus(2,2)=4. NO

% +(2,D)=+(E,2). SYNTAX ERROR:+( 2 , D )** here **=+( E , 2 ). NO
% +(2,D) = +(E,2).D = 2,E = 2 ? yes DEJAR ESPACIO ENTRE * E =.

% tri(pto(-1,0),P2,P3)=tri(P1,pto(1,0),pto(0,Y)).P1 = pto(-1,0),P2 = pto(1,0),P3 = pto(0,Y) ? yes

% tri(pto(-1,0),P2,P3)=tri(P1,-2,pto(0,Y)).P1 = pto(-1,0),P2 = -2,P3 = pto(0,Y) ? 

f(1,one).
f(s(1),two).
f(s(s(1))),three).
f(s(s(s(X))),N):-f(X,N).
%f(s(1),A).                         -> ?- A = 1 yes
%f(s(s(1)),two).                    -> ?- no
%f(s(s(s(s(s(s(1)))))),C).          -> ?- C = one 
%f(D,three). -> ?- D=s(s(1)) ; D=s(s(s(s(s(1))))) yes


