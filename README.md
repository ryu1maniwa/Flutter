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
- Android Virtual Device
- [View] > [Tool Windows] > [Device Manager] 
- ハードウェアを選択 Pixel5
- システムイメージを選択してダウンロード x86のやつがいいらしい R
- [View] > [Tool Windows] > [Device Manager] からEmulatorの起動
### VSCodeでアプリの実行
- VSCodeで「Ctrl + Shift + p」でコマンドパレットを開き、「flutter」と検索
- Flutter: New Project」をクリックし、プロジェクトを作成
- 右下のdeviceがエミュレータになっていることを確認
- 右上の実行マークをクリックすると、 Emulator でアプリが起動