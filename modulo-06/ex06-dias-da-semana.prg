FUNCTION Main()

    LOCAL aDias := {"Domingo", "Segunda-feira", "Terça-feira", "Quarta-feira", ;
                    "Quinta-feira", "Sexta-feira", "Sábado"}
    LOCAL cNumeroDigitado := ""
    LOCAL nNumero := 0

    QOut("Digite um número de 1 a 7:")
    ACCEPT "" TO cNumeroDigitado
    nNumero := Val(cNumeroDigitado)

    If nNumero >= 1 .And. nNumero <= 7
        QOut("O dia correspondente é: " + aDias[nNumero])
    Else
        QOut("Erro: número inválido! Digite um valor entre 1 e 7.")
    EndIf

RETURN NIL