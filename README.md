# 環境構築
## git
### 参考サイト
[Git初期設定からVSCodeとGitHubの連携まで徹底解説](https://literacyboxes.com/git-install-windows/)

### gitのインストールと初期設定
- [ここからgitの最新版をダウンロードする](https://github.com/git-for-windows/git/releases/download/v2.37.3.windows.1/Git-2.37.3-64-bit.exe)
- git bashで以下を実行
```bash
git config --global user.name "ryu1maniwa"
git config --global user.email "ryu1maniwa@gmail.com"
```

### gitを使ってみる
- VScodeで作業フォルダを開く
- ソース管理→リポジトリの初期化をする
- Gitの便利な拡張機能をインストールする
    - GitLens・・・コミット単位での編集履歴を比較確認することができます。
    - Git Graph・・・編集履歴を視覚的に追いながら確認することができます。
- 変更をコミットする

### VScodeとGitHubを連携
- アカウントの作成
- リモートリポジトリを作成
- git bashで以下を実行
```bash
git remote add origin https://github.com/ryu1maniwa/Flutter.git
git push origin master
```
- GitLensとGitHubを連携

### コミットのメッセージのルール
- 【フォーマット】
    - 1行目：[種別(prefix)] 概要
    - 2行目：空行
    - 3行目：詳細
- 【参考種別の例(prefix)】
    - add：機能(またはファイル)追加
    - update：バグではない細かな機能変更
    - change：仕様変更によるコード変更
    - upgrade：大幅な機能変更
    - fix：バグ修正
    - hotfix：クリティカルなバグ修正
    - perf：性能が向上するコード変更
    - test：テストで機能の追加・修正
    - clean：コード整理
    - docs：ドキュメント変更
    - disable：コード無効化
    - revert：機能変更取り消し
    - remove：機能(またはファイル)削除
    - move：ファイル移動
- メッセージの例
```bash
[add] 新規ファイルを追加

テストファイル[test1.txt]と[test2.txt]を追加
```

## Android Studio
### 参考サイト
- [Flutter Beginners Hands-on -環境構築](https://zenn.dev/takumma/books/flutter-beginners-hands-on/viewer/setup)
- Android Studioの環境構築の途中でちょっとハマったけど下のサイトを見て解決
- [flutterの環境構築しようとしたらハマった話](https://qiita.com/pe-ta/items/e5a1813b21de8d446407)
- [仮想デバイスを作成して管理する](https://developer.android.com/studio/run/managing-avds?hl=ja#createavd)
- [Flutter環境構築（Windows） 後編 - エミュレータ作成と実行](https://blog.css-net.co.jp/entry/2022/06/06/112045)

### AVD(エミュレータ)の作成
- Android Studioで [View] > [Tool Windows] > [Device Manager] 
- ハードウェアを選択 Pixel5
- システムイメージを選択してダウンロード x86のやつがいいらしい R
- [View] > [Tool Windows] > [Device Manager] からEmulatorの起動
### VSCodeを用いてエミュレータ上でアプリの実行
- VSCodeで「Ctrl + Shift + p」でコマンドパレットを開き、「flutter」と検索
- Flutter: New Project」をクリックし、プロジェクトを作成
- 右下のdeviceがエミュレータになっていることを確認
- 右上の実行マークをクリックすると、 Emulator でアプリが起動


# Fluter
学んだことをまとめただけ

## Hand-on
- とりあえず[Hands-on](https://zenn.dev/takumma/books/flutter-beginners-hands-on/viewer/first-app)をやった
## Widget
### 参考サイト
- [Flutter:Widget一覧](https://qiita.com/matsukatsu/items/e289e30231fffb1e4502)
- [Flutter 入門 最低限覚えたいWidget 7選](https://zenn.dev/tatukane/articles/345cdcae781069)
- [Flutterの基本的なレイアウトの話](https://qiita.com/shinbey221/items/a2af574622b8478b9cad)

## Everything is a Widget
Flutter には "Everything is a Widget" という設計のスローガンがある。
これは、UI を構築する全ての要素を Widget として表現する（つまり、 Widget クラスのサブクラスとして定義する）ことを目指した設計で、 Flutter 最大の特徴の1つに上げられることも多い考え方。
### Widgetとは
- Flutter における UI を構成するパーツのこと
- Widget の階層構造（Widget ツリー）で UI を表現する
- Flutter では StatelessWidget や StatefullWidget を継承したクラスを組み合わせて UI を構築する

### Widgetの例：レイアウトに使われるWidget
- Scaffold
  - `appbar`や`body`などを指定してページ全体を作成するWidget
- AppBar
  - 画面上部のタイトル等が配置されている部分
- Row
  - 子要素を横に並べたい場合に使用する
  - 子要素はchildrenに複数のWidgetをArrayとして定義できる
  - `mainAxisAlignment`を指定することで子要素の横の位置を制御できる
  - `crossAxisAlignment`を指定することで縦の位置を制御できる
- column
  - 子要素を縦に並べたい場合に使用する
  - 子要素はchildrenに複数のWidgetをArrayとして定義できる
  - `mainAxisAlignment`を指定することで子要素の縦の位置を制御できる
  - `crossAxisAlignment`を指定することで横の位置を制御できる
- Center
  - 子要素の横または縦を真ん中に位置させる為のWidget
- Container
  - 子のサイズやpadding,marginなどの設定をするためのWidget
    - padding：Containerの内側の余白
    - margin：Containerの外側の余白
  - marginとpaddingを指定するときはEdgeInsetsというWidgetを使用する
  - EdgeInsets.allで全方向一定の指定、EdgeInsets.onlyで指定した方向に設定できる

### その他よく使うWidget
- ElevatedButton
  - マテリアルデザインの立体ボタン
  - 子属性にTextなどを配置する
  - onPressedで押されたときの挙動を定義できる
- Icon
  - マテリアルデザインのアイコン
  - [Icons class](https://api.flutter.dev/flutter/material/Icons-class.html)
  - [flutter_iconpicker 3.2.1](https://pub.dev/packages/flutter_iconpicker)
- Image
  - 画像を表示するWidget
- Text
  - 単一のテキスト 子属性を持てない
- Placeholder
  - 実装の準備ができるまでUIコンポーネントの代わりに使用できるウィジェット
  - Widgetの配置忘れを防ぐことができる
### Widget Treeの例
- MyApp
  - MaterialApp
    - MyHomePage
      - Scaffold
        - AppBar: AppBar
        - body: Center
          - child: Column
            - Text
            - Text(counter)
        - FloatingActionButtun
          - Icon

- マテリアルデザインを使用するFlutterアプリの基本
  - `MaterialAppWidget`でアプリ全体を覆う
  - `Scaffold`でページ全体を覆う

## StatelessWidgetとStatefulWidgetの違い
### 参考サイト
- [【Flutter入門】StatefulWidgetはなぜ２つに分かれているのかについて解説するよ。](https://tech-rise.net/why-stateful-widget-separates-two-classes/)
### StatelessWidget
- Stateless (状態を持たない・静的)な Widget
- StatelessWidgetを継承した`Myapp`クラスは`build`メソッドの戻り値としてWidget を返すことでツリー構造となる

### StatefulWidget
- Stateful(状態を持つ・動的)な Widget のこと
- StatefulWidgetは不変であるWidgetを継承しているため、Stateクラスに可変の要素を持たせている
- 親Widgetから受け取る変数の値が不変の場合、final変数として宣言する
- StatefulWidgetを継承したクラスではWidgetツリーは構築しない
- `createState` メソッドでStateクラスをインスタンス化する

### Stateクラス
- 変数の値を変更する際は`setState()`メソッドでUIの再描画をする
- Stateクラスは`build`メソッドの戻り値としてWidget を返すことでツリー構造となる
## 文法
### 参考サイト
- [Dart Documentations -A tour of the Dart language](https://dart.dev/guides/language/language-tour)
- [Flutter未経験者に初期サンプルコードの説明をしてみた](https://qiita.com/naoaki_kaito/items/ed77ee085ad61f951784)
- [Flutter入門のためのDart入門](https://qiita.com/teradonburi/items/913fb8c311b9f2bdb1dd)
- [Dartの変数定義時の修飾static/final/const、そしてconst constructorについて](https://qiita.com/uehaj/items/7c07f019e05a743d1022)
- [Flutter入門のためのDart入門](https://qiita.com/teradonburi/items/913fb8c311b9f2bdb1dd)

### 新たに学んだ文法
- `final`は変数の性質で、`const`は変数の性質＋値の性質も規定する（変更不可）
  - finalは、再代入はしないが指す値の変更はできる
  - constは、Textとか、Page, Icon, paddingなどのコンパイル時に確定する値に用いる
- アロー関数
  - 一行の場合、ファットアローで省略記法がかける（JavaScriptのアロー関数と同じ）
```dart
  int oneline(a,b) => a + b;
  // この関数と等価
  // int oneline(a,b){ return a + b }
  print(oneline(1,2));
```
- List<int>（整数のリスト）やList<Object>（任意の型のオブジェクトのリスト）のような汎用型をサポート
- null許容型
  - 型の最後に `?` を追加することで、null許容型として宣言することができる
- ”Forced Unwrapping”
  - 変数の後に`!`をつけると、変数がnilのときエラーを返す
- アンダーバー
  - 識別子がアンダースコア（_）で始まる場合、そのライブラリのプライベート変数となる
- Future
  - `Future`を返り値に保つFuture関数は非同期処理となり、その関数が実行している間に他の処理を実行することが可能となる
- async await
  - Future関数に対して`async`, `await`を用いることで、非同期処理の完了を意図的に待つことができる
## お気持ち
### 参考サイト
- [Flutterのcontextの「お気持ち」を理解する](https://qiita.com/agajo/items/93d75aafe87bdc7b2026)
- [Builder class](https://api.flutter.dev/flutter/widgets/Builder-class.html)
### context
- 「文脈」「状況」「環境」つまり、Widgetツリー内のどこにいるかを表している
- 使用例1 `BuildContext`
  - BuildContextを受け取って、Widgetを返す関数
  - 引数のcontextは、Flutterが自動的に与える
```dart
@override
Widget build(BuildContext context){
  return // (何かしらのWidget);
}
```
- 使用例2 `Hoge.of(context).primaryColor`メソッド
  - contextが与えられた位置から遡って自分が置かれた文脈における`Hoge`を探す
  - `Builder class`を使うことで任意のWidgetにコンテキストを与えることができる

## 番外編
- 以下のようなエラーがでたときは、VSCodeのデバッグモードを再起動すると直るはず
```
_TypeError (type 'List<String>' is not a subtype of type 'List<Todo>' of 'function result')
```
- ビルドがうまくいかないときは、コマンドプロンプトで以下を実行する
```
Flutter clean
```





# 20220905
- アイコンについて勉強
- Navigator 画面遷移？
- なんかアプリ考えて作ってみる



# 勉強のために作るアプリ
## 使いたい機能
  - ボタン　選択
  - 写真アップロード　Instagramみたいな
  - カレンダーから選択させる　予定
  - Open Street API　移動したところを赤い線
  - 通知
## アイデア
- カレンダーと日記を合わせたようなアプリ
- 一日の中で、時間ごとに何をしたのかを写真で記録する
- その時の位置情報も見れる





コンストラクタ（constructor：構築者）とは、クラスからオブジェクトを作成した際に、自動的に実行される特殊なメソッドのこと

Flutter ではアイコンは IconData クラスとして持ち、Icon(IconData icon) というふうに UI で表示できます。マテリアルデザインのアイコンは Icons クラスで定義されています。


