FUNCTION Main()

    LOCAL aAlunos := {}
    LOCAL cNDigitado := ""
    LOCAL nN := 0
    LOCAL i := 0

    LOCAL cNome := ""
    LOCAL cNotaDigitada := ""
    LOCAL nNota1 := 0
    LOCAL nNota2 := 0
    LOCAL nNota3 := 0
    LOCAL nNota4 := 0
    LOCAL nMedia := 0

    hb_cdpSelect("UTF8")

    QOut("Quantos alunos deseja cadastrar?")
    ACCEPT "" TO cNDigitado
    nN := Val(cNDigitado)


    FOR i := 1 TO nN

        QOut("--- Aluno " + Str(i, 2) + " ---")

        QOut("Digite o nome:")
        ACCEPT "" TO cNome

        QOut("Digite a nota 1:")
        ACCEPT "" TO cNotaDigitada
        nNota1 := Val(cNotaDigitada)

        QOut("Digite a nota 2:")
        ACCEPT "" TO cNotaDigitada
        nNota2 := Val(cNotaDigitada)

        QOut("Digite a nota 3:")
        ACCEPT "" TO cNotaDigitada
        nNota3 := Val(cNotaDigitada)

        QOut("Digite a nota 4:")
        ACCEPT "" TO cNotaDigitada
        nNota4 := Val(cNotaDigitada)

    
        AAdd(aAlunos, {cNome, nNota1, nNota2, nNota3, nNota4})

    NEXT


    QOut("========================================")
    QOut("           RELATÓRIO FINAL")
    QOut("========================================")

    QOut("--- APROVADOS (média >= 7) ---")
    FOR i := 1 TO Len(aAlunos)
        nMedia := (aAlunos[i][2] + aAlunos[i][3] + aAlunos[i][4] + aAlunos[i][5]) / 4
        If nMedia >= 7
            QOut(aAlunos[i][1] + " - Média: " + Str(nMedia, 6, 2))
        EndIf
    NEXT

    QOut("--- REPROVADOS (média < 7) ---")
    FOR i := 1 TO Len(aAlunos)
        nMedia := (aAlunos[i][2] + aAlunos[i][3] + aAlunos[i][4] + aAlunos[i][5]) / 4
        If nMedia < 7
            QOut(aAlunos[i][1] + " - Média: " + Str(nMedia, 6, 2))
        EndIf
    NEXT

    QOut("========================================")

RETURN NIL