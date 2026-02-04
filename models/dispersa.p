fof(simetria, axiom, 
! [X,Y] : (adj(X,Y) => adj(Y,X)) 
).

fof(grafo_disperso, axiom,
    adj(v3, v4) & 
    adj(v2, v1)
).

fof(fechamento, axiom,
    ! [X] : (X=v1 | X=v2 | X=v3 | X=v4 | X=v5)
).

fof(check_k3, conjecture,
    ? [C1, C2, C3] : ! [X] : (
        X = C1 | X = C2 | X = C3 |
        adj(X, C1) | adj(X, C2) | adj(X, C3)
    )
).
