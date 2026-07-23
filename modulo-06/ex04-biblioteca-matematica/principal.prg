SET PROCEDURE TO matematica.prg

FUNCTION Main()

    hb_cdpSelect("UTF8")

    QOut("========================================")
    QOut("Testando FatorialN")
    QOut("========================================")
    QOut("Fatorial de 5: " + Str(FatorialN(5)))
    QOut("Fatorial de 0: " + Str(FatorialN(0)))

    QOut("========================================")
    QOut("Testando EhPrimo")
    QOut("========================================")
    QOut("7 é primo? " + iif(EhPrimo(7), ".T.", ".F."))
    QOut("10 é primo? " + iif(EhPrimo(10), ".T.", ".F."))

    QOut("========================================")
    QOut("Testando MMC")
    QOut("========================================")
    QOut("MMC de 4 e 6: " + Str(MMC(4, 6)))

    QOut("========================================")
    QOut("Testando MDC")
    QOut("========================================")
    QOut("MDC de 12 e 18: " + Str(MDC(12, 18)))

RETURN NIL