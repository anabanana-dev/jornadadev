FUNCTION Main()

    LOCAL cNome          := ""
    LOCAL cDataDigitada  := ""
    LOCAL cPrecoDigitado := ""
    LOCAL dNasc          := CToD("")
    LOCAL nPreco         := 0
    LOCAL nIdade         := 0
    LOCAL nDesconto      := 0
    LOCAL nTotal         := 0

    hb_cdpSelect("UTF8")

    Set(_SET_DATEFORMAT, "DD/MM/YYYY")

    QOut("Digite o nome do cliente:")
    ACCEPT "" TO cNome

    QOut("Digite a data de nascimento (DD/MM/AAAA):")
    ACCEPT "" TO cDataDigitada
    dNasc := CToD(cDataDigitada)

    QOut("Digite o preço do produto:")
    ACCEPT "" TO cPrecoDigitado
    nPreco := Val(cPrecoDigitado)

    nIdade := Int((Date() - dNasc) / 365)


    If nIdade > 60
        nDesconto := nPreco * 0.125
    Else
        nDesconto := 0
    EndIf

    nTotal := nPreco - nDesconto

    // Exibe o resumo formatado
    QOut("========================================")
    QOut("           RESUMO DA COMPRA")
    QOut("========================================")
    QOut("Cliente: " + cNome)
    QOut("Idade: " + Str(nIdade, 3) + " anos")
    QOut("Preço: " + Str(nPreco, 10, 2))
    QOut("Desconto: " + Str(nDesconto, 10, 2))
    QOut("Total a pagar: " + Str(nTotal, 10, 2))
    QOut("========================================")

RETURN NIL