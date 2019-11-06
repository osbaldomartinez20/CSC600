is_male(francisco).
is_male(osbaldo).
is_male(juan).
is_female(natalia).
is_female(oralia).
is_parent_of(oralia,natalia).
is_parent_of(oralia,francisco).
is_parent_of(oralia,osbaldo).
is_parent_of(juan, natalia).
is_parent_of(juan, francisco).
is_parent_of(juan, osbaldo).

mother(M, C) :- is_female(M), is_parent_of(M, C).