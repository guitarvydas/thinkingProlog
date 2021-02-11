edge(1,2).
edge(1,4).
edge(1,3).
edge(2,3).
edge(2,5).
edge(3,4).
edge(3,5).
edge(4,5).

connected(X,Y) :- edge(X,Y).
connected(X,Y) :- edge(Y,X).

path(A,B,Path) :- BasicPath = [A], inferPath(A,B,BasicPath,Path).

inferPath(A,B,P,ResultPath) :- connected(A,B), ResultPath = [B|P].
inferPath(A,B,PathSoFar,Path) :-
       connected(A,C),           
       C \== B,
       \+member(C,PathSoFar),
       inferPath(C,B,[C|PathSoFar],Path).  
