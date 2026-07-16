### Nível 1: Visão Geral
1. Registrar os itens da compra e calcular o subtotal.
2. Verificar cartão fidelidade e aplicar desconto, se houver.
3. Mostrar o valor total a pagar.

---

### Nível 2: Detalhamento dos Passos

**1. Registrar os itens da compra e calcular o subtotal**
* Iniciar o `subtotal` com o valor 0.
* Enquanto houver itens sendo passados no caixa:
  * Leia o preço do item.
  * Adicione o preço do item ao `subtotal`.

**2. Verificar cartão fidelidade e aplicar desconto, se houver**
* Leia a informação se o cliente possui cartão fidelidade (Sim ou Não).
* Se o cliente tiver o cartão fidelidade:
  * Calcule o desconto: `desconto <- subtotal * 0.05`
  * Calcule o total: `total <- subtotal - desconto`
* Senão:
  * O desconto é zero: `total <- subtotal`

**3. Mostrar o valor total a pagar**
* Escreva na tela o valor final da variável `total`.