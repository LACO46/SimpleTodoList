# 基本概念

ただただ、やることをアプリ内で記録・削除できるシンプルなToDo List Appです。

# 利用している技術・モジュールについて

- Xcode 11.3
- Swift 4.2
- CocoaPods

# 開発ルール

- コードフォーマッターとして、`Swimat`を利用する。
- Viewに関するコードは、`./SimpleTodoApp/ViewController/`内にあるファイルに記述する。
- ViewやControllerを行き来するLogicに関するコードは、`./SimpleTodoApp/Model/`内にあるファイルに記述する。

# 事前準備

```
$ sudo gem install cocoapods
$ pod setup
```

上記のコマンドで `CocoaPods` をインストールする。

```
$ pod install
```

上記のコマンドで、このアプリに必要なモジュールをインストールする。

# 機能

- `やること`と`優先度`を記録することができる。
- 優先度は、`低`、`中`、`高`と分かれており、それぞれ、`白`、`黄`、`赤`と色分けされている。

# 使い方・詳細

※ 以下から、`やること`と`優先度`の組み合わせを`ToDoItem`と呼ぶこととする。

## リストについて

優先度が`低`のものは`白`のセル、`中`のものは`黄`のセル、`高`のものは`赤`のセルで表示される。

<img width="373" alt="スクリーンショット 2020-01-13 11 00 02" src="https://user-images.githubusercontent.com/52124421/72230498-4214a700-35f9-11ea-8d81-0664371bc043.png">

## ToDoItemの追加について

下記の追加画面から、`ToDo`と`優先度`を選択する。

<img width="374" alt="スクリーンショット 2020-01-13 10 54 41" src="https://user-images.githubusercontent.com/52124421/72230597-e7c81600-35f9-11ea-8ae1-926931071ff2.png">

優先度を選択すると、下記のようになる。

<img width="288" alt="スクリーンショット 2020-01-13 10 55 19" src="https://user-images.githubusercontent.com/52124421/72230632-1e059580-35fa-11ea-8ed9-25e50fafe555.png">

<img width="277" alt="スクリーンショット 2020-01-13 10 55 24" src="https://user-images.githubusercontent.com/52124421/72230633-22ca4980-35fa-11ea-82b6-442e761f5ab0.png">

<img width="282" alt="スクリーンショット 2020-01-13 10 55 29" src="https://user-images.githubusercontent.com/52124421/72230640-2c53b180-35fa-11ea-9072-f5a36d20edb8.png">


## ToDoItemの確認と完了について

ToDoItemのセルをタップすると下記のようなモーダルが表示される。

- `確認`をタップすると、モーダルを閉じることができる。
- `完了`をタップすると、リストからToDoItemを消すことができる。

<img width="373" alt="スクリーンショット 2020-01-13 11 00 45" src="https://user-images.githubusercontent.com/52124421/72230706-9c623780-35fa-11ea-9083-ac88b8e5f6ca.png">

## ToDoItemの削除について

ToDoItemのセルを右から左にスワイプすると、下記のように、ToDoItemを削除することができる。

<img width="370" alt="スクリーンショット 2020-01-13 11 53 25" src="https://user-images.githubusercontent.com/52124421/72230862-7f7a3400-35fb-11ea-8f78-c6ea0abd28bf.png">
