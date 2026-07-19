FUNCTION Main()

    LOCAL cNome  := ""
    LOCAL cDisc  := ""
    LOCAL cNota1Digitada := ""
    LOCAL cNota2Digitada := ""
    LOCAL nNota1 := 0
    LOCAL nNota2 := 0
    LOCAL nMedia := 0

    hb_cdpSelect("UTF8")

    // Validação do nome (não pode ser vazio)
    DO WHILE .T.
        QOut("Digite o nome do aluno:")
        ACCEPT "" TO cNome

        If Len(Trim(cNome)) > 0
            EXIT
        Else
            QOut("Erro: o nome não pode ser vazio!")
        EndIf
    ENDDO

    // Validação da disciplina (exatamente 3 letras maiúsculas)
    DO WHILE .T.
        QOut("Digite a disciplina (3 letras maiúsculas, ex: MAT):")
        ACCEPT "" TO cDisc

        If Len(cDisc) == 3 .And. cDisc == Upper(cDisc)
            EXIT
        Else
            QOut("Erro: a disciplina deve ter exatamente 3 letras maiúsculas!")
        EndIf
    ENDDO

    // Validação da nota 1 (entre 0 e 10)
    DO WHILE .T.
        QOut("Digite a primeira nota (0 a 10):")
        ACCEPT "" TO cNota1Digitada
        nNota1 := Val(cNota1Digitada)

        If nNota1 >= 0 .And. nNota1 <= 10
            EXIT
        Else
            QOut("Erro: a nota deve estar entre 0 e 10!")
        EndIf
    ENDDO

    // Validação da nota 2 (entre 0 e 10)
    DO WHILE .T.
        QOut("Digite a segunda nota (0 a 10):")
        ACCEPT "" TO cNota2Digitada
        nNota2 := Val(cNota2Digitada)

        If nNota2 >= 0 .And. nNota2 <= 10
            EXIT
        Else
            QOut("Erro: a nota deve estar entre 0 e 10!")
        EndIf
    ENDDO

    nMedia := (nNota1 + nNota2) / 2

    QOut("========================================")
    QOut("Nome: " + cNome)
    QOut("Disciplina: " + cDisc)
    QOut("Nota 1: " + Str(nNota1, 5, 2))
    QOut("Nota 2: " + Str(nNota2, 5, 2))
    QOut("Média: " + Str(nMedia, 5, 2))
    QOut("========================================")

RETURN NIL