FUNCTION Main()

    LOCAL nSecreto := 0
    LOCAL nTentativa := 0
    LOCAL cPalpiteDigitado := ""
    LOCAL nPalpite := 0
    LOCAL lAcertou := .F.

    nSecreto := HB_RandomInt(1, 100)

    QOut("========================================")
    QOut("Jogo: Adivinhe o número (1 a 100)")
    QOut("Você tem 7 tentativas!")
    QOut("========================================")

    FOR nTentativa := 1 TO 7

        QOut("Tentativa " + Str(nTentativa, 1) + " de 7. Digite seu palpite:")
        ACCEPT "" TO cPalpiteDigitado
        nPalpite := Val(cPalpiteDigitado)

        If nPalpite == nSecreto
            lAcertou := .T.
            EXIT
        ElseIf nPalpite < nSecreto
            QOut("O número secreto é MAIOR que " + Str(nPalpite, 3))
        Else
            QOut("O número secreto é MENOR que " + Str(nPalpite, 3))
        EndIf

    NEXT

    QOut("========================================")
    If lAcertou
        QOut("Parabéns! Você acertou o número: " + Str(nSecreto, 3))
    Else
        QOut("Suas tentativas acabaram! O número secreto era: " + Str(nSecreto, 3))
    EndIf
    QOut("========================================")

RETURN NIL