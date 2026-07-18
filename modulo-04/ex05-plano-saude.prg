FUNCTION Main()

    LOCAL cIdadeDigitada       := ""
    LOCAL cDependentesDigitado := ""

    LOCAL nIdade         := 0
    LOCAL nDependentes   := 0
    LOCAL nValorBase     := 0
    LOCAL nValorTotal    := 0

    hb_cdpSelect("UTF8")

    QOut("Digite a idade:")
    ACCEPT "" TO cIdadeDigitada
    nIdade := Val(cIdadeDigitada)

    QOut("Digite o número de dependentes:")
    ACCEPT "" TO cDependentesDigitado
    nDependentes := Val(cDependentesDigitado)

    DO CASE
        CASE nIdade <= 25
            nValorBase := 180
        CASE nIdade >= 26 .And. nIdade <= 40
            nValorBase := 260
        CASE nIdade >= 41 .And. nIdade <= 60
            nValorBase := 380
        OTHERWISE
            nValorBase := 520
    ENDCASE

    nValorTotal := nValorBase + (nDependentes * 90)

    QOut("========================================")
    QOut("Idade: " + Str(nIdade, 3))
    QOut("Dependentes: " + Str(nDependentes, 3))
    QOut("Valor base do plano: " + Str(nValorBase, 10, 2))
    QOut("Valor total mensal: " + Str(nValorTotal, 10, 2))
    QOut("========================================")

RETURN NIL