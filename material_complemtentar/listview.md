# ListView no Flutter

O `ListView` é um dos widgets mais utilizados no Flutter para exibir listas de itens roláveis na tela. Ele permite criar listas simples, listas com separadores, listas dinâmicas e muito mais.

## Principais Tipos de ListView

- **ListView()**: Lista simples com todos os itens definidos.
- **ListView.builder()**: Cria itens sob demanda, ideal para listas grandes ou dinâmicas.
- **ListView.separated()**: Permite adicionar separadores entre os itens.
- **ListView.custom()**: Permite personalização avançada.

## Exemplo Básico

```dart
ListView(
    children: <Widget>[
        ListTile(title: Text('Item 1')),
        ListTile(title: Text('Item 2')),
        ListTile(title: Text('Item 3')),
    ],
)
```

## Exemplo com ListView.builder

```dart
ListView.builder(
    itemCount: 10,
    itemBuilder: (context, index) {
        return ListTile(
            title: Text('Item \$index'),
        );
    },
)
```

## Dicas

- Use `ListView.builder` para listas grandes para melhor desempenho.
- O `ListView` pode ser rolado tanto vertical quanto horizontalmente.
- Combine com outros widgets, como `Card` ou `Image`, para layouts mais ricos.

## Documentação Oficial

[Flutter ListView](https://api.flutter.dev/flutter/widgets/ListView-class.html)