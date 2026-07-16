flowchart TD
    A([Inicio]) --> B[/Leia o valor da compra/]
    B --> C{Valor maior que 100?}
    C -->|Sim| D[Desconto = Valor vezes 0.10]
    C -->|Nao| E[Desconto = 0]
    D --> F[Total = Valor menos Desconto]
    E --> F
    F --> G[/Escreva o valor final a pagar/]
    G --> H([Fim])