fof(simetria, axiom, 
! [X,Y] : (adj(X,Y) => adj(Y,X)) 
).

fof(grafo_grande, axiom,
    adj(v12, v15) & 
    adj(v11, v13) &
    adj(v15, v4) & adj(v15, v6) &
    adj(v4, v6) & adj(v4, v3) & adj(v4, v8) &
    adj(v3, v6) & adj(v3, v14) &
    adj(v6, v1) & adj(v6, v14) & adj(v6, v8) &
    adj(v14, v1) & adj(v14, v5) & adj(v14, v8) &
    adj(v1, v11) & adj(v1, v5) &
    adj(v8, v9) & adj(v8, v7) & adj(v8, v10) &
    adj(v5, v2) & adj(v5, v9) &
    adj(v2, v11) & adj(v2, v9) &
    adj(v9, v7) &
    adj(v7, v10)
).

fof(fechamento, axiom,
    ! [X] : (
        X=v1 | X=v2 | X=v3 | X=v4 | X=v5 | 
        X=v6 | X=v7 | X=v8 | X=v9 | X=v10 | 
        X=v11 | X=v12 | X=v13 | X=v14 | X=v15
    )
).

fof(check_k3, conjecture,
    ? [C1, C2, C3] : ! [X] : (
        X = C1 | X = C2 | X = C3 |
        adj(X, C1) | adj(X, C2) | adj(X, C3)
    )
).
