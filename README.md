## A aplicação aqui: https://felipemonteiro.shinyapps.io/Avalicao_normalidade/

# Teste_de_normalidade
O teste de normalidade é uma análise estatística usada para determinar se um conjunto de dados segue uma distribuição normal, também conhecida como distribuição gaussiana. A normalidade dos dados é uma suposição comum em muitas técnicas estatísticas, como análises de regressão, ANOVA e testes t. Verificar a normalidade é essencial porque muitas dessas técnicas são baseadas na premissa de que os dados são normalmente distribuídos.

## Por que a normalidade é importante?
Validade dos Testes Estatísticos: Muitos testes estatísticos, como testes t e ANOVA, assumem que os dados são normalmente distribuídos. Se essa suposição for violada, os resultados dos testes podem não ser válidos.
## Interpretação dos Resultados: 
A interpretação de algumas estatísticas, como médias e desvios padrão, é mais fácil e significativa quando os dados são normalmente distribuídos.
Modelagem Estatística: Muitos modelos estatísticos, incluindo a regressão linear, assumem que os erros do modelo (resíduos) são normalmente distribuídos.
Principais Testes de Normalidade
Teste de Shapiro-Wilk:

Muito utilizado devido à sua eficácia em detectar desvios da normalidade.
Retorna um valor-p, onde um valor-p menor que um nível de significância (por exemplo, 0,05) indica que os dados não são normalmente distribuídos.

## Teste de Kolmogorov-Smirnov:
Compara a distribuição dos dados com uma distribuição normal teórica.
Menos poderoso que o teste de Shapiro-Wilk para amostras pequenas.

## Teste de Anderson-Darling:
Uma modificação do teste de Kolmogorov-Smirnov que dá mais peso às caudas da distribuição.
Eficaz para detectar desvios da normalidade, especialmente em amostras grandes.

## Teste de Lilliefors:
Uma adaptação do teste de Kolmogorov-Smirnov para dados com parâmetros de média e variância desconhecidos.

## Teste de Jarque-Bera:

Baseado nos valores de curtose e assimetria dos dados.
Menos utilizado para pequenas amostras.
Métodos Gráficos para Avaliação de Normalidade

## Histograma:
Mostra a distribuição dos dados. Uma distribuição normal típica se assemelha a uma curva de sino.
## Q-Q Plot (Quantile-Quantile Plot):
Compara os quantis dos dados com os quantis de uma distribuição normal teórica. Se os pontos formam uma linha reta, os dados são aproximadamente normais.
## Box Plot: 
Pode indicar a simetria dos dados e a presença de outliers.
Interpretação dos Resultados
## Valor-P:
Nos testes de normalidade, um valor-p baixo (menor que o nível de significância, geralmente 0,05) indica que os dados não seguem uma distribuição normal.
## Q-Q Plot: 
Desvios significativos da linha reta sugerem que os dados não são normalmente distribuídos.

# Descrição do Dataset mtcars
O dataset mtcars contém dados sobre diferentes características de 32 veículos.
As variáveis incluem informações como milhas por galão, cilindros, potência, peso, entre outras.
Este conjunto de dados é frequentemente utilizado para demonstrar técnicas de análise e visualização de dados.
