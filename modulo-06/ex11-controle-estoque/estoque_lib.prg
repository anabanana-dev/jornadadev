FUNCTION CadastrarProduto(aEstoque, nCodigo, cNome, nQtd, nPreco)

    AAdd(aEstoque, {nCodigo, cNome, nQtd, nPreco})

    RETURN NIL


FUNCTION ListarProdutos(aEstoque)

    LOCAL i := 0

    If Len(aEstoque) == 0
        QOut("Nenhum produto cadastrado ainda.")
        RETURN NIL
    EndIf

    QOut("Cód.   Nome                 Qtd     Preço Unit.")
    FOR i := 1 TO Len(aEstoque)
        QOut(Str(aEstoque[i][1], 4) + "   " + ;
             PadR(aEstoque[i][2], 18) + "  " + ;
             Str(aEstoque[i][3], 5) + "   " + ;
             Str(aEstoque[i][4], 10, 2))
    NEXT

    RETURN NIL


FUNCTION EntradaEstoque(aEstoque, nPosicao, nQtdEntrada)

    aEstoque[nPosicao][3] := aEstoque[nPosicao][3] + nQtdEntrada

    RETURN NIL

FUNCTION SaidaEstoque(aEstoque, nPosicao, nQtdSaida)

    If aEstoque[nPosicao][3] < nQtdSaida
        RETURN .F.
    EndIf

    aEstoque[nPosicao][3] := aEstoque[nPosicao][3] - nQtdSaida

    RETURN .T.


FUNCTION BuscarProdutoPorCodigo(aEstoque, nCodigo)

    LOCAL i := 0

    FOR i := 1 TO Len(aEstoque)
        If aEstoque[i][1] == nCodigo
            RETURN i
        EndIf
    NEXT

    RETURN 0


FUNCTION RelatorioValorEstoque(aEstoque)

    LOCAL i := 0
    LOCAL nValorProduto := 0
    LOCAL nTotalGeral   := 0

    If Len(aEstoque) == 0
        QOut("Nenhum produto cadastrado ainda.")
        RETURN NIL
    EndIf

    FOR i := 1 TO Len(aEstoque)
        nValorProduto := aEstoque[i][3] * aEstoque[i][4]
        nTotalGeral   := nTotalGeral + nValorProduto

        QOut(aEstoque[i][2] + " - Valor em estoque: R$ " + Str(nValorProduto, 10, 2))
    NEXT

    QOut("----------------------------------------")
    QOut("Valor total geral: R$ " + Str(nTotalGeral, 10, 2))

    RETURN NIL