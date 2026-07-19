FUNCTION Main()

    LOCAL cValorDigitado := ""
    LOCAL nValor          := 0

    hb_cdpSelect("UTF8")

    DO WHILE .T.

        QOut("Digite um valor (zero ou negativo para parar):")
        ACCEPT "" TO cValorDigitado
        nValor := Val(cValorDigitado)

        If nValor <= 0
            EXIT
        EndIf

        QOut("Dobro: " + Str(nValor * 2))

    ENDDO

    QOut("Programa encerrado.")

RETURN NIL