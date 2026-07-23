FUNCTION Main()

    LOCAL aNumeros := {}
    LOCAL cNumeroDigitado := ""
    LOCAL nNumero := 0
    LOCAL i := 0

    hb_cdpSelect("UTF8")

    FOR i := 1 TO 10
        QOut("Digite o número " + Str(i, 2) + ":")
        ACCEPT "" TO cNumeroDigitado
        nNumero := Val(cNumeroDigitado)

        AAdd(aNumeros, nNumero)
    NEXT

    QOut("========================================")
    QOut("Antes de ordenar:")
    FOR i := 1 TO Len(aNumeros)
        QOut(Str(aNumeros[i], 10, 2))
    NEXT

    BubbleSort(aNumeros)

    QOut("========================================")
    QOut("Depois de ordenar:")
    FOR i := 1 TO Len(aNumeros)
        QOut(Str(aNumeros[i], 10, 2))
    NEXT
    QOut("========================================")

RETURN NIL

FUNCTION BubbleSort(aVetor)

    LOCAL i := 0
    LOCAL j := 0
    LOCAL nTemp := 0
    LOCAL nTamanho := Len(aVetor)

    FOR i := 1 TO nTamanho - 1
        FOR j := 1 TO nTamanho - i

            If aVetor[j] > aVetor[j + 1]
                nTemp        := aVetor[j]
                aVetor[j]    := aVetor[j + 1]
                aVetor[j + 1] := nTemp
            EndIf

        NEXT
    NEXT

    RETURN NIL