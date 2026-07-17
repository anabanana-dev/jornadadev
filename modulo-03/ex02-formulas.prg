#define PI 3.14159

FUNCTION Main()

    LOCAL nRaio    := 0
    LOCAL nCatetoA := 0
    LOCAL nCatetoB := 0
    LOCAL nPeso    := 0
    LOCAL nAltura  := 0

    LOCAL nAreaCirculo := 0
    LOCAL nHipotenusa   := 0
    LOCAL nIMC          := 0

    hb_cdpSelect("UTF8")

    // --- Item a: Área do círculo ---
    QOut("Digite o raio do círculo:")
    ACCEPT "" TO nRaio
    nRaio := Val(nRaio)
    nAreaCirculo := PI * (nRaio ^ 2)
    QOut("Área do círculo: " + Str(nAreaCirculo, 10, 2))

    // --- Item b: Hipotenusa do triângulo retângulo ---
    QOut("Digite o cateto A:")
    ACCEPT "" TO nCatetoA
    nCatetoA := Val(nCatetoA)

    QOut("Digite o cateto B:")
    ACCEPT "" TO nCatetoB
    nCatetoB := Val(nCatetoB)

    nHipotenusa := Sqrt((nCatetoA ^ 2) + (nCatetoB ^ 2))
    QOut("Hipotenusa: " + Str(nHipotenusa, 10, 2))

    // --- Item c: Índice de Massa Corporal (IMC) ---
    QOut("Digite o peso (kg):")
    ACCEPT "" TO nPeso
    nPeso := Val(nPeso)

    QOut("Digite a altura (m):")
    ACCEPT "" TO nAltura
    nAltura := Val(nAltura)

    nIMC := nPeso / (nAltura ^ 2)
    QOut("IMC: " + Str(nIMC, 10, 2))

RETURN NIL