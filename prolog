1) 
print_every_second([]).
print_every_second([_,X|T]) :-
    write(X), nl,
    print_every_second(T).

2) 
deconsonant([]).
deconsonant([H|T]) :-
    (   member(H, [a, e, i, o, u]) -> true ; write(H), nl ),
    deconsonant(T).
3) 
head([H|_], H).

4) 
tail([_|T], T).

5) 
last([X], X). 
last([_|T], X) :- last(T, X).  

6) 
max(A, B, Mayor) :- A >= B, Mayor is A.
max(A, B, Mayor) :- A < B, Mayor is B.

7) 
fact(0, 1).  
fact(N, F) :-
    N > 0,         
    N1 is N - 1,   
    fact(N1, F1),  
    F is N * F1.   

8) 
fib(1, 1).  
fib(2, 1).  

fib(N, F) :-
    N > 2,      
    N1 is N - 1, 
    N2 is N - 2, 
    fib(N1, F1), 
    fib(N2, F2), 
    F is F1 + F2. 

9) 
length2([], 0). 
length2([_|T], N) :-
    length2(T, N1),  
    N is N1 + 1.    

10) 
power(_, 0, 1).  
power(Base, Exponent, Result) :-
    Exponent > 0,                  
    Exponent1 is Exponent - 1,     
    power(Base, Exponent1, Result1), 
    Result is Base * Result1.     

11) 
sum([], 0). 
sum([H|T], Result) :-
    sum(T, PartialSum),  
    Result is H + PartialSum.  


