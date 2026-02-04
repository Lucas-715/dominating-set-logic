fof(simetria, axiom, ! [X,Y] : (adj(X,Y) => adj(Y,X)) ).

fof(grafo_triangulo, axiom,
    adj(v1, v2) & 
    adj(v2, v3) & 
    adj(v3, v1)
).

fof(fechamento, axiom,
    ! [X] : (X=v1 | X=v2 | X=v3)
).

fof(check_k3, conjecture,
    ? [C1, C2, C3] : ! [X] : (
        X = C1 | X = C2 | X = C3 |
        adj(X, C1) | adj(X, C2) | adj(X, C3)
    )
).
