# Atividade prática - Criando uma tela com colunas e linhas

![alt text](img/tela_atividade_19_05.png)

## Sobre a atividade

Nesta atividade prática, você irá criar uma tela utilizando colunas e linhas, conforme o exemplo apresentado na imagem acima. O objetivo é praticar a organização de componentes visuais em layouts estruturados, utilizando os conceitos de Row e Column.

## Instruções

1. Analise a imagem de referência para entender a disposição dos elementos.
2. Implemente a tela utilizando os widgets de colunas e linhas.
3. Certifique-se de alinhar e espaçar corretamente os componentes, conforme o exemplo.
4. Salve e teste sua implementação.

## Objetivos de aprendizagem

- Compreender o uso de Row e Column para criar layouts flexíveis.
- Praticar o alinhamento e espaçamento de elementos na interface.
- Desenvolver habilidades em organização visual de componentes.

---
**Dica:** Utilize propriedades como `mainAxisAlignment` e `crossAxisAlignment` para ajustar o posicionamento dos elementos.


## Exemplo TextField

````dart
 TextField(
                  
                  decoration: const InputDecoration(
                    labelText: 'Pesquisa',
                    border: OutlineInputBorder(),
                  )
````