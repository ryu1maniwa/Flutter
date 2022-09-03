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
```
[add] 新規ファイルを追加

テストファイル[test1.txt]と[test2.txt]を追加
```