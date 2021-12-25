parent(charles_I,james_I).
parent(elizabeth,james_I).
parent(sohpia,elizabeth).
parent(geogre_I,sohpia).
parent(catherine,charles_I).
parent(charles_II,charles_I).
parent(james_II,charles_I).
male(james_I).
male(charles_I).
female(elizabeth).
female(catherine).
male(charles_II).
male(james_II).
female(sohpia).
male(george_I).
father(X,Y):-parent(X,Y),male(Y).
mother(X,Y):-parent(X,Y),female(Y).
siblings(X,Y):-parent(X,Z),parent(Y,Z),X ==Y.
grandparent(X,Y):-parent(Z,Y),parent(X,Z).
sister(X,Y):-parent(X,Z),parent(Y,Z),female(X),X ==Y.
brother(X,Y):-parent(X,Z),parent(Y,Z),male(X),X ==Y.
aunt(X,Y):-parent(X,Z),sister(Y,Z).
uncle(X,Y):-parent(X,Z),brother(Y,Z).
cousin(X,Y):-(aunt(X,Z);uncle(X,Z)),parent(Y,Z).
