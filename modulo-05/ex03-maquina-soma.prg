FUNCTION Main()

    LOCAL cValorDigitado := ""
    LOCAL nValor          := 0
    LOCAL nTotal          := 0
    LOCAL nQtd            := 0


    DO WHILE .T.

        QOut("Digite um valor (0 para parar):")
        ACCEPT "" TO cValorDigitado
        nValor := Val(cValorDigitado)

        If nValor == 0
            EXIT
        EndIf

        nTotal := nTotal + nValor
        nQtd   := nQtd + 1

    ENDDO

    QOut("========================================")
    QOut("Soma total: " + Str(nTotal, 10, 2))
    QOut("Quantidade de valores somados: " + Str(nQtd))
    QOut("========================================")

RETURN NIL