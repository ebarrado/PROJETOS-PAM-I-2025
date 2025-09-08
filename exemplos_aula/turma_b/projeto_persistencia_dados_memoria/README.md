# Projeto: Lista de Tarefas com Imagem (Flutter)

Este projeto Flutter permite criar, editar e excluir tarefas, cada uma com uma descrição e uma imagem (URL). O layout é simples e intuitivo, utilizando `ListView`, `Dialog` para cadastro/edição, e botões para ações rápidas.

## Funcionalidades

- Adicionar tarefas com descrição e imagem (URL).
- Editar tarefas existentes.
- Excluir tarefas com confirmação.
- Interface responsiva e fácil de usar.

## Estrutura

- [`MyHomePage`](lib/myhomepage.dart): Tela principal, gerencia a lista de tarefas e exibe os modais de cadastro/edição.
- [`Tarefas`](lib/myhomepage.dart): Widget que exibe cada tarefa, com imagem, descrição e botões de editar/excluir.

## Como usar

1. Clique no botão "+" para adicionar uma nova tarefa.
2. Preencha a descrição e a URL da imagem.
3. Edite ou exclua tarefas usando os botões ao lado de cada item.

## Exemplo de tela

- Lista de tarefas exibidas em cards horizontais.
- Cada tarefa mostra a imagem (via URL), descrição e botões de ação.

## Tecnologias

- Flutter
- Dart

## Arquivo principal

Veja a implementação