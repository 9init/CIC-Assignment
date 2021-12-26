parent(jamesi,charlesi).
parent(jamesi,elizabeth).
parent(charlesi,catherine).
parent(charlesi,charlesii).
parent(charlesi,jamesii).
parent(elizaberh,sophia).
parent(sophia,george).

female(elizabeth).
female(sophia).
female(catherine).
male(jamesi).
male(charlesi).
male(chalesii).
male(jamesii).
male(george).

mother(M,Y):-parent(M,Y),female(M).
father(F,Y):-parent(F,Y),male(F).
sister(X,Y):-parent(Z,X),parent(Z,Y),X\==Y.
brother(X,Y):-parent(Z,X),parent(Z,Y),X\==Y.
grandparent(X,Y):-parent(Z,X),parent(Z,Y).
wife(X,Y):-parent(X,Z),parent(Y,Z).female(X),male(Y).
uncle(X,Z):-brother(X,F),father(F,Z).
aunt(X,Z):-sister(X,F),father(F,Z).
sibling(X,Y):-parent(Z,X),parent(Z,Y),X\==Y.
cousin(X,Y):-sibling(V,F),parent(V,X),parent(F,Y).
