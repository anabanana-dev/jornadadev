FUNCTION Main()

    LOCAL nA         := 0
    LOCAL nB         := 0
    LOCAL cOperacao  := ""
    LOCAL nResultado := 0
    LOCAL lSucesso   := .F.

    hb_cdpSelect("UTF8")

    nA := LerNumero("Digite o primeiro número:")
    cOperacao := LerOperacao()


    If cOperacao <> "R"
        nB := LerNumero("Digite o segundo número:")
    EndIf

    lSucesso := Calcular(nA, nB, cOperacao, @nResultado)

    MostrarResultado(lSucesso, nResultado)

RETURN NIL


FUNCTION LerNumero(cMensagem)

    LOCAL cDigitado := ""

    QOut(cMensagem)
    ACCEPT "" TO cDigitado

    RETURN Val(cDigitado)

FUNCTION LerOperacao()

    LOCAL cOp := ""

    QOut("Digite a operação (+, -, *, /, ^, R):")
    ACCEPT "" TO cOp

    RETURN cOp

FUNCTION Calcular(nA, nB, cOperacao, nResultado)

    LOCAL lOk := .T.

    DO CASE
        CASE cOperacao == "+"
            nResultado := nA + nB

        CASE cOperacao == "-"
            nResultado := nA - nB

        CASE cOperacao == "*"
            nResultado := nA * nB

        CASE cOperacao == "/"
            If nB == 0
                lOk := .F.
            Else
                nResultado := nA / nB
            EndIf

        CASE cOperacao == "^"
            nResultado := nA ^ nB

        CASE cOperacao == "R"
            If nA < 0
                lOk := .F.
            Else
                nResultado := Sqrt(nA)
            EndIf

        OTHERWISE
            lOk := .F.

    ENDCASE

    RETURN lOk


FUNCTION MostrarResultado(lSucesso, nResultado)

    If lSucesso
        QOut("Resultado: " + Str(nResultado, 10, 2))
    Else
        QOut("Erro: operação inválida ou divisão por zero!")
    EndIf

    RETURN NIL