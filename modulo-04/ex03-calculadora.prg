FUNCTION Main()

    LOCAL cNumA      := ""
    LOCAL cNumB      := ""
    LOCAL cOperacao  := ""

    LOCAL nA := 0
    LOCAL nB := 0
    LOCAL nResultado := 0

    hb_cdpSelect("UTF8")

    QOut("Digite o primeiro número:")
    ACCEPT "" TO cNumA
    nA := Val(cNumA)

    QOut("Digite a operação (+, -, *, /, ^, R):")
    ACCEPT "" TO cOperacao

    // Só pede o segundo número se a operação não for raiz quadrada
    If cOperacao <> "R"
        QOut("Digite o segundo número:")
        ACCEPT "" TO cNumB
        nB := Val(cNumB)
    EndIf

    DO CASE
        CASE cOperacao == "+"
            nResultado := nA + nB
            QOut("Resultado: " + Str(nResultado, 10, 2))

        CASE cOperacao == "-"
            nResultado := nA - nB
            QOut("Resultado: " + Str(nResultado, 10, 2))

        CASE cOperacao == "*"
            nResultado := nA * nB
            QOut("Resultado: " + Str(nResultado, 10, 2))

        CASE cOperacao == "/"
            If nB == 0
                QOut("Erro: divisão por zero não é permitida!")
            Else
                nResultado := nA / nB
                QOut("Resultado: " + Str(nResultado, 10, 2))
            EndIf

        CASE cOperacao == "^"
            nResultado := nA ^ nB
            QOut("Resultado: " + Str(nResultado, 10, 2))

        CASE cOperacao == "R"
            If nA < 0
                QOut("Erro: não é possível calcular raiz de número negativo!")
            Else
                nResultado := Sqrt(nA)
                QOut("Resultado: " + Str(nResultado, 10, 2))
            EndIf

        OTHERWISE
            QOut("Operação inválida! Escolha entre +, -, *, /, ^ ou R.")

    ENDCASE

RETURN NIL