FUNCTION Main()

    LOCAL cMesDigitado := ""
    LOCAL nMes         := 0
    LOCAL cNomeMes     := ""


    QOut("Digite o número do mês (1 a 12):")
    ACCEPT "" TO cMesDigitado
    nMes := Val(cMesDigitado)

    DO CASE
        CASE nMes == 1
            cNomeMes := "Janeiro"
        CASE nMes == 2
            cNomeMes := "Fevereiro"
        CASE nMes == 3
            cNomeMes := "Março"
        CASE nMes == 4
            cNomeMes := "Abril"
        CASE nMes == 5
            cNomeMes := "Maio"
        CASE nMes == 6
            cNomeMes := "Junho"
        CASE nMes == 7
            cNomeMes := "Julho"
        CASE nMes == 8
            cNomeMes := "Agosto"
        CASE nMes == 9
            cNomeMes := "Setembro"
        CASE nMes == 10
            cNomeMes := "Outubro"
        CASE nMes == 11
            cNomeMes := "Novembro"
        CASE nMes == 12
            cNomeMes := "Dezembro"
        OTHERWISE
            cNomeMes := "Mês inválido"
    ENDCASE

    QOut("Mês: " + cNomeMes)

RETURN NIL
