FUNCTION Main()

    LOCAL aV := {}
    LOCAL cNumeroDigitado := ""
    LOCAL nNumero := 0
    LOCAL i := 0
    LOCAL nSoma  := 0
    LOCAL nMedia := 0



    FOR i := 1 TO 10
        QOut("Digite o número " + Str(i, 2) + ":")
        ACCEPT "" TO cNumeroDigitado
        nNumero := Val(cNumeroDigitado)

        AAdd(aV, nNumero)
    NEXT

    FOR i := 1 TO Len(aV)
        nSoma := nSoma + aV[i]
    NEXT
    nMedia := nSoma / Len(aV)

    ASort(aV)

    QOut("========================================")
    QOut("Números em ordem crescente:")
    FOR i := 1 TO Len(aV)
        QOut(Str(aV[i], 10, 2))
    NEXT

    QOut("========================================")
    QOut("Soma: " + Str(nSoma, 10, 2))
    QOut("Média: " + Str(nMedia, 10, 2))
    QOut("Menor número: " + Str(aV[1], 10, 2))
    QOut("Maior número: " + Str(aV[Len(aV)], 10, 2))
    QOut("========================================")

RETURN NIL