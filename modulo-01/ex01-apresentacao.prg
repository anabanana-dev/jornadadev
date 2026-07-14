FUNCTION Main()
    LOCAL cNome := "Ana Laura"
    LOCAL cCidade := "Sorocaba"
    LOCAL cCurso := "Harbour/ADVPL"
    LOCAL cIgual := "================================"

    //hb_cdpSelect("PT850")// ACENTUAÇÃO NÃO FUNCIONOU MESMO ADICIONANDOO COMANDO

    Qout(cIgual)
    Qout(" FICHA DE APRESENTACAO")
    Qout(cIgual)
    QOut("Nome: " + cNome)
    Qout("Cidade: " + cCidade)
    Qout("Curso: " + cCurso)
    Qout(cIgual)

RETURN NIL