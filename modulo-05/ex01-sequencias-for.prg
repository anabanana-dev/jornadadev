FUNCTION Main()

   LOCAL nNumero

   QOut ("Números de 1 a 100")

   FOR nNumero := 1 TO 100
      QOut (nNumero)
   NEXT

   QOut ("")
   QOut ("Números de -50 a 50")

   FOR nNumero := -50 TO 50
      QOut (nNumero)
   NEXT

   QOut ("")    
   QOut ("Números de 80 a 5")

   FOR nNumero := 80 TO 5 STEP -1 
      QOut (nNumero)
   NEXT

RETURN NIL