FUNCTION Main()

    LOCAL cJogadaUsuario := ""
    LOCAL cJogadaCPU     := ""
    LOCAL cVencedor      := ""
    LOCAL cContinuar     := ""

    hb_cdpSelect("UTF8")

    QOut("========================================")
    QOut("        JOKENPO (Pedra, Papel, Tesoura)")
    QOut("========================================")

    DO WHILE .T.


        DO WHILE .T.
            QOut("Digite sua jogada (PEDRA, PAPEL ou TESOURA):")
            ACCEPT "" TO cJogadaUsuario
            cJogadaUsuario := Upper(cJogadaUsuario)

            If ValidarJogada(cJogadaUsuario)
                EXIT
            Else
                QOut("Jogada inválida! Digite PEDRA, PAPEL ou TESOURA.")
            EndIf
        ENDDO

        cJogadaCPU := SortearJogadaCPU()

        QOut("Você jogou: " + cJogadaUsuario)
        QOut("CPU jogou: " + cJogadaCPU)

        
        cVencedor := DefinirVencedor(cJogadaUsuario, cJogadaCPU)
        MostrarResultado(cVencedor)

        
        QOut("Deseja jogar novamente? (S/N)")
        ACCEPT "" TO cContinuar

        If Upper(cContinuar) <> "S"
            EXIT
        EndIf

    ENDDO

    QOut("Obrigado por jogar!")

RETURN NIL

FUNCTION SortearJogadaCPU()

    LOCAL nSorteio := HB_RandomInt(1, 3)
    LOCAL cJogada  := ""

    DO CASE
        CASE nSorteio == 1
            cJogada := "PEDRA"
        CASE nSorteio == 2
            cJogada := "PAPEL"
        CASE nSorteio == 3
            cJogada := "TESOURA"
    ENDCASE

    RETURN cJogada

FUNCTION ValidarJogada(cJogada)

    If cJogada == "PEDRA" .Or. cJogada == "PAPEL" .Or. cJogada == "TESOURA"
        RETURN .T.
    EndIf

    RETURN .F.

FUNCTION DefinirVencedor(cJogada1, cJogada2)

    If cJogada1 == cJogada2
        RETURN "EMPATE"
    EndIf

    DO CASE
        CASE cJogada1 == "PEDRA" .And. cJogada2 == "TESOURA"
            RETURN "JOGADOR"
        CASE cJogada1 == "PAPEL" .And. cJogada2 == "PEDRA"
            RETURN "JOGADOR"
        CASE cJogada1 == "TESOURA" .And. cJogada2 == "PAPEL"
            RETURN "JOGADOR"
        OTHERWISE
            RETURN "CPU"
    ENDCASE

    RETURN NIL

FUNCTION MostrarResultado(cVencedor)

    QOut("========================================")

    DO CASE
        CASE cVencedor == "EMPATE"
            QOut("Resultado: Empate!")
        CASE cVencedor == "JOGADOR"
            QOut("Resultado: Você venceu!")
        CASE cVencedor == "CPU"
            QOut("Resultado: A CPU venceu!")
    ENDCASE

    QOut("========================================")

    RETURN NIL