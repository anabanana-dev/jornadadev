// "==" faz uma comparação exata, as duas strings precisam ser idênticas, com o mesmo tamanho e mesmo conteúdo, para retornar verdadeiro.
// "=" faz uma comparação que depende da configuração SET EXACT. Quando SET EXACT está OFF (que é o padrão), o = compara só até o tamanho da string mais curta, ou seja, se uma string "começa igual" à outra, ele já considera verdadeiro, mesmo que uma seja maior que a outra.

FUNCTION Main()

    LOCAL cCompleta := "Harbour"
    LOCAL cPedaco   := "Harb"

    hb_cdpSelect("UTF8")

    QOut("cCompleta = cPedaco   -> " + iif(cCompleta = cPedaco, ".T.", ".F."))
    QOut("cCompleta == cPedaco  -> " + iif(cCompleta == cPedaco, ".T.", ".F."))

RETURN NIL