FUNCTION Main()

    LOCAL cNota1Digitada := ""
    LOCAL cNota2Digitada := ""
    LOCAL cNota3Digitada := ""
    LOCAL cNota4Digitada := ""

    LOCAL nNota1 := 0
    LOCAL nNota2 := 0
    LOCAL nNota3 := 0
    LOCAL nNota4 := 0

    LOCAL nMediaPonderada := 0

    hb_cdpSelect("UTF8")

    QOut("Digite a nota do 1º bimestre:")
    ACCEPT "" TO cNota1Digitada
    nNota1 := Val(cNota1Digitada)

    QOut("Digite a nota do 2º bimestre:")
    ACCEPT "" TO cNota2Digitada
    nNota2 := Val(cNota2Digitada)

    QOut("Digite a nota do 3º bimestre:")
    ACCEPT "" TO cNota3Digitada
    nNota3 := Val(cNota3Digitada)

    QOut("Digite a nota do 4º bimestre:")
    ACCEPT "" TO cNota4Digitada
    nNota4 := Val(cNota4Digitada)

    nMediaPonderada := (nNota1 * 1 + nNota2 * 2 + nNota3 * 3 + nNota4 * 4) / (1 + 2 + 3 + 4)

    QOut("========================================")
    QOut("Média ponderada: " + Str(nMediaPonderada, 10, 2))
    QOut("========================================")

RETURN NIL