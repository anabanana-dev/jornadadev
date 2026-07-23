SET PROCEDURE TO estoque_lib.prg

FUNCTION Main()

    LOCAL aEstoque := {}
    LOCAL nOpcao := 0

    hb_cdpSelect("UTF8")

    DO WHILE .T.

        nOpcao := MenuPrincipal()

        DO CASE
            CASE nOpcao == 1
                ExecutarCadastro(aEstoque)

            CASE nOpcao == 2
                QOut("========================================")
                ListarProdutos(aEstoque)
                QOut("========================================")

            CASE nOpcao == 3
                ExecutarEntrada(aEstoque)

            CASE nOpcao == 4
                ExecutarSaida(aEstoque)

            CASE nOpcao == 5
                ExecutarBusca(aEstoque)

            CASE nOpcao == 6
                QOut("========================================")
                RelatorioValorEstoque(aEstoque)
                QOut("========================================")

            CASE nOpcao == 0
                QOut("Encerrando o sistema...")
                EXIT

            OTHERWISE
                QOut("Opção inválida! Tente novamente.")

        ENDCASE

    ENDDO

RETURN NIL


FUNCTION MenuPrincipal()

    LOCAL cOpcaoDigitada := ""
    LOCAL nOpcao := -1

    QOut("========================================")
    QOut("     CONTROLE DE ESTOQUE SIMPLIFICADO")
    QOut("========================================")
    QOut("1 - Cadastrar produto")
    QOut("2 - Listar produtos")
    QOut("3 - Entrada de estoque")
    QOut("4 - Saída de estoque")
    QOut("5 - Buscar produto por código")
    QOut("6 - Relatório de valor em estoque")
    QOut("0 - Sair")
    QOut("Digite a opção:")
    ACCEPT "" TO cOpcaoDigitada
    nOpcao := Val(cOpcaoDigitada)

    RETURN nOpcao


FUNCTION ExecutarCadastro(aEstoque)

    LOCAL cCodDigitado := ""
    LOCAL nCodigo := 0
    LOCAL cNome := ""
    LOCAL cQtdDigitada := ""
    LOCAL nQtd := 0
    LOCAL cPrecoDigitado := ""
    LOCAL nPreco := 0

    QOut("Digite o código do produto:")
    ACCEPT "" TO cCodDigitado
    nCodigo := Val(cCodDigitado)

    QOut("Digite o nome do produto:")
    ACCEPT "" TO cNome

    QOut("Digite a quantidade inicial:")
    ACCEPT "" TO cQtdDigitada
    nQtd := Val(cQtdDigitada)

    QOut("Digite o preço unitário:")
    ACCEPT "" TO cPrecoDigitado
    nPreco := Val(cPrecoDigitado)

    CadastrarProduto(aEstoque, nCodigo, cNome, nQtd, nPreco)

    QOut("Produto cadastrado com sucesso!")

    RETURN NIL


FUNCTION ExecutarEntrada(aEstoque)

    LOCAL cCodDigitado := ""
    LOCAL nCodigo := 0
    LOCAL nPosicao := 0
    LOCAL cQtdDigitada := ""
    LOCAL nQtd := 0

    QOut("Digite o código do produto:")
    ACCEPT "" TO cCodDigitado
    nCodigo := Val(cCodDigitado)

    nPosicao := BuscarProdutoPorCodigo(aEstoque, nCodigo)

    If nPosicao == 0
        QOut("Erro: produto não encontrado!")
        RETURN NIL
    EndIf

    QOut("Digite a quantidade de entrada:")
    ACCEPT "" TO cQtdDigitada
    nQtd := Val(cQtdDigitada)

    EntradaEstoque(aEstoque, nPosicao, nQtd)

    QOut("Entrada registrada com sucesso!")

    RETURN NIL


FUNCTION ExecutarSaida(aEstoque)

    LOCAL cCodDigitado := ""
    LOCAL nCodigo := 0
    LOCAL nPosicao := 0
    LOCAL cQtdDigitada := ""
    LOCAL nQtd := 0
    LOCAL lOk := .F.

    QOut("Digite o código do produto:")
    ACCEPT "" TO cCodDigitado
    nCodigo := Val(cCodDigitado)

    nPosicao := BuscarProdutoPorCodigo(aEstoque, nCodigo)

    If nPosicao == 0
        QOut("Erro: produto não encontrado!")
        RETURN NIL
    EndIf

    QOut("Digite a quantidade de saída:")
    ACCEPT "" TO cQtdDigitada
    nQtd := Val(cQtdDigitada)

    lOk := SaidaEstoque(aEstoque, nPosicao, nQtd)

    If lOk
        QOut("Saída registrada com sucesso!")
    Else
        QOut("Erro: estoque insuficiente para essa saída!")
    EndIf

    RETURN NIL


FUNCTION ExecutarBusca(aEstoque)

    LOCAL cCodDigitado := ""
    LOCAL nCodigo := 0
    LOCAL nPosicao := 0

    QOut("Digite o código do produto:")
    ACCEPT "" TO cCodDigitado
    nCodigo := Val(cCodDigitado)

    nPosicao := BuscarProdutoPorCodigo(aEstoque, nCodigo)

    If nPosicao == 0
        QOut("Produto não encontrado.")
    Else
        QOut("Produto encontrado na posição: " + Str(nPosicao))
        QOut("Nome: " + aEstoque[nPosicao][2])
        QOut("Quantidade: " + Str(aEstoque[nPosicao][3]))
        QOut("Preço unitário: " + Str(aEstoque[nPosicao][4], 10, 2))
    EndIf

    RETURN NIL