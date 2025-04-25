# Flutter Layout: Colunas e Linhas

Este é um projeto básico Flutter que demonstra o uso de `Column` e `Container` para criar layouts verticais, com alinhamentos e espaçamentos. É ideal para quem está começando a aprender como organizar elementos na tela com Flutter.

## 💡 Funcionalidades

- Exibe uma coluna com:
  - Dois textos com containers coloridos.
  - Um botão interativo (sem ação implementada).
- Utiliza propriedades de alinhamento como `mainAxisAlignment` e `crossAxisAlignment`.

## 🛠️ Tecnologias

- [Flutter](https://flutter.dev)
- [Dart](https://dart.dev)

## 📱 Layout

O layout é composto por:

```dart
Column(
  mainAxisAlignment: MainAxisAlignment.spaceAround,
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [
    Container(color: Colors.red, child: const Text('Texto 1')),
    Container(color: Colors.green, child: const Text('Texto 2')),
    ElevatedButton(onPressed: () {}, child: Text('Botão')),
  ],
)
```

## Exemplo Tela criada

![alt text](../../img/column.png)

