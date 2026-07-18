FUNCTION Main()

    LOCAL cSalarioDigitado := ""
    LOCAL nSalarioAtual    := 0
    LOCAL nPercentual      := 0
    LOCAL nNovoSalario     := 0

    hb_cdpSelect("UTF8")

    QOut("Digite o salário atual:")
    ACCEPT "" TO cSalarioDigitado
    nSalarioAtual := Val(cSalarioDigitado)

    If nSalarioAtual < 1000
        nPercentual := 0.15
    ElseIf nSalarioAtual >= 1000 .And. nSalarioAtual <= 2000
        nPercentual := 0.12
    ElseIf nSalarioAtual > 2000 .And. nSalarioAtual <= 4000
        nPercentual := 0.08
    Else
        nPercentual := 0.05
    EndIf

    nNovoSalario := nSalarioAtual + (nSalarioAtual * nPercentual)

    QOut("========================================")
    QOut("Salário atual: " + Str(nSalarioAtual, 10, 2))
    QOut("Percentual de reajuste: " + Str(nPercentual * 100, 5, 2) + "%")
    QOut("Novo salário: " + Str(nNovoSalario, 10, 2))
    QOut("========================================")

RETURN NIL