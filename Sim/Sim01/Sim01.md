![](Header.png "UFSM-CT-DESP-ESP1066")

# ESP1066 (Circuitos Magnéticos e Transformadores)

**Docente:** [Prof. Dr. Luiz Fernando Freitas-Gutierres](https://www.linkedin.com/in/lffreitas-gutierres/) ([luiz.gutierres@ufsm.br](mailto:luiz.gutierres@ufsm.br)). 

## Roteiro da Simulação 01

**Leia com atenção as instruções abaixo.**

A Figura 1 ilustra um circuito magnético cujo núcleo ferromagnético possui uma área da seção transversal quadrada. Existem dois enrolamentos de cobre constituídos por $N_1$ e $N_2$ espiras, assim como um entreferro com comprimento médio igual a $g$ cm. No [*Finite Element Method Magnetics* (FEMM), versão 4.2](https://www.femm.info/wiki/HomePage), execute simulações para o cenário de investigação proposto e faça o que se pede:

1. O material do núcleo ferromagnético é **linear**. No FEMM, utilize $\mu_x = \mu_y = \mu_r$.
2. Gerar uma vista com a representação das linhas de fluxo magnético e da distribuição da indução magnética ao longo do núcleo. Discutir como o espraiamento e fluxos magnéticos dispersos afetam a indução magnética em diferentes partes do núcleo.
3. Produzir um gráfico do módulo da densidade do fluxo magnético $|B_g|$ através de uma linha no entreferro. Discorrer sobre a diferença do valor médio da indução magnética no entreferro e na coluna central do núcleo.
4. Considerar as seguintes alterações nas correntes elétricas $I_1 = I_2 = 2:6:10:14:18:22:26:30$ A e levantar a curva $|B_g| \times I_1 = I_2$.
5. Verificar as densidades médias de fluxo magnético nas colunas laterais e central.
6. Verificar a densidade de fluxo magnético na coluna central quando o sentido de $I_2$ é invertido. Gerar uma vista com a distribuição da indução magnética ao longo do núcleo. Discutir sobre os efeitos dessa mudança.
7. Determinar a indutância equivalente de cada enrolamento.
8. Resolver analiticamente este cenário de estudo e constatar diferenças.

![Figura 01](Fig01.png "Figura 01. Esquemático do circuito magnético.")

**Observações:**

- Para os enrolamentos do circuito magnético, utilize o material *Copper AWG Magnet Wire* no FEMM. A medida dos fios é irrelevante para esta simulação.
- Respeitar as modificações de parâmetros estipuladas para cada discente na tabela abaixo.
- Utilizar, obrigatoriamente, o modelo de relatório proposto para esta atividade.
- Enviar o arquivo do relatório no formato PDF e, compactados para ZIP, os arquivos de simulação e/ou *scripts* desenvolvidos. Empregue este formato para nomear os arquivos:
    - Para o relatório: `PrimeiroNomeÚltimoSobrenome-Sim01-Rel.pdf`. Exemplo: Fulano de Beltrano Sicrano $\rightarrow$ `FulanoSicrano-Sim01-Rel.pdf`.
    - Para o arquivo ZIP: `PrimeiroNomeÚltimoSobrenome-Sim01-Arq.zip`. Exemplo: Fulano de Beltrano Sicrano $\rightarrow$ `FulanoSicrano-Sim01-Arq.zip`.

| Discente   | $N_1$ | $N_2$ | $I_1$ | $I_2$ | $g$   | $\mu_r$ |
|:----------:|:-----:|:-----:|:-----:|:-----:|:-----:|:-------:|
| 202310163  | 358   | 778   | 10    | 1     | 0,10  | 1000    |
| 202310184  | 409   | 1382  | 20    | 2     | 0,15  | 1100    |
| 202312195  | 339   | 1876  | 10    | 3     | 0,20  | 1200    |
| 202311246  | 678   | 1063  | 20    | 4     | 0,25  | 1300    |
| 202310363  | 540   | 1449  | 10    | 5     | 0,30  | 1400    |
| 202210363  | 357   | 1890  | 20    | 5     | 0,35  | 1500    |
| 2024510290 | 612   | 812   | 10    | 4     | 0,40  | 1600    |
| 202310970  | 343   | 1990  | 20    | 3     | 0,45  | 1700    |
| 202310738  | 559   | 1058  | 10    | 2     | 0,50  | 1800    |
| 2023520546 | 374   | 1416  | 20    | 1     | 0,55  | 1900    |
| 202310051  | 392   | 1289  | 10    | 1     | 0,60  | 2000    |
| 202312099  | 437   | 1551  | 20    | 2     | 0,65  | 1000    |
| 202310390  | 382   | 1098  | 10    | 3     | 0,70  | 1100    |
| 202221468  | 494   | 1594  | 20    | 4     | 0,75  | 1200    |
| 2022520191 | 563   | 1953  | 10    | 5     | 0,80  | 1300    |
| 2023520557 | 449   | 1729  | 20    | 5     | 0,85  | 1400    |
| 202210871  | 395   | 777   | 10    | 4     | 0,90  | 1500    |
| 202310584  | 566   | 1554  | 20    | 3     | 0,95  | 1600    |
| 202311049  | 330   | 1865  | 10    | 2     | 1,00  | 1700    |
| 202021341  | 357   | 1590  | 20    | 1     | 1,05  | 1800    |