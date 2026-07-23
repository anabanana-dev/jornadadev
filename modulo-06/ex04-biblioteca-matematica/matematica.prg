FUNCTION FatorialN(nN)

    LOCAL nResultado := 1
    LOCAL i

    If nN <= 1
        RETURN 1
    EndIf

    FOR i := 1 TO nN
        nResultado := nResultado * i
    NEXT

    RETURN nResultado

FUNCTION EhPrimo(nN)

    LOCAL i

    If nN < 2
        RETURN .F.
    EndIf

    FOR i := 2 TO nN - 1
        If nN % i == 0
            RETURN .F.
        EndIf
    NEXT

    RETURN .T.

FUNCTION MMC(nA, nB)

    LOCAL nMaior := 0
    LOCAL nResultado := 0

    If nA > nB
        nMaior := nA
    Else
        nMaior := nB
    EndIf

    nResultado := nMaior

    DO WHILE .T.
        If nResultado % nA == 0 .And. nResultado % nB == 0
            EXIT
        EndIf
        nResultado := nResultado + nMaior
    ENDDO

    RETURN nResultado

FUNCTION MDC(nA, nB)

    LOCAL nResto := 0

    DO WHILE nB <> 0
        nResto := nA % nB
        nA := nB
        nB := nResto
    ENDDO

    RETURN nA