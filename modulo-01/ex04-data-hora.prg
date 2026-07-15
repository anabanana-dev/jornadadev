FUNCTION Main()
    LOCAL cNome := "Ana Laura"
    LOCAL cCidade := "Sorocaba"
    LOCAL cCurso := "Harbour/ADVPL"
    LOCAL cIgual := "================================"
    LOCAL dData := Date()
    LOCAL cHora := Time()

    hb_cdpSelect("PT850")
    SET DATE FORMAT "DD/MM/YY"


    Qout(cIgual)
    Qout(" FICHA DE APRESENTACAO")
    Qout(cIgual)
    QOut("Nome: " + cNome)
    Qout("Cidade: " + cCidade)
    Qout("Curso: " + cCurso)
    Qout("Data: " + DToC(dData))
    Qout("Hora: " + cHora)
    Qout(cIgual)

RETURN NIL