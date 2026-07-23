FUNCTION Main()

    LOCAL cHoraAtual := ""
    LOCAL nContador  := 0

    hb_cdpSelect("UTF8")

    QOut("========================================")
    QOut("Relógio digital (atualiza a cada ~30 seg)")
    QOut("Pressione Ctrl+C para encerrar")
    QOut("========================================")

    DO WHILE .T.

        cHoraAtual := ObterHora()
        cHoraAtual := FormatarHora(cHoraAtual)
        ExibirHora(cHoraAtual)

        hb_idleSleep(30)  // aguarda 30 segundos antes de repetir

    ENDDO

RETURN NIL


FUNCTION ObterHora()
    RETURN Time()

FUNCTION FormatarHora(cHora)
    
    RETURN cHora


FUNCTION ExibirHora(cHora)
    QOut("Hora atual: " + cHora)
    RETURN NIL