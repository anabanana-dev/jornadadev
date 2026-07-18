FUNCTION Main()
    LOCAL nNumero1
    LOCAL nNumero2

    QOut("Digite o primeiro número: ")
    ACCEPT TO nNumero1
    QOut("Digite o segundo número: ")
    ACCEPT TO nNumero2

    IF nNumero1 == nNumero2
        QOut("Os números são iguais.")
    ELSE
        IF nNumero1 > nNumero2
            QOut("O maior número é: " + nNumero1)
        ELSE
            QOut("O maior número é: " + nNumero2)
        ENDIF
    ENDIF


RETURN NIL