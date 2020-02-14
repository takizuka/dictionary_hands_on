# dictionary_hands_on

このプロジェクトは「Flutter Handson Osaka」のソースコードを
AndroidだけではなくiOSとWebにも対応させたものです。

環境構築方法は下記のレポジトリを参照。
https://github.com/YujiOnishi/dictionary_hands_on_hinagata

### Flutter for iOSへの対応方法

#### アプリ登録

1. Project Overviewの「アプリ追加」を押下し、iOSを選択。
2. iOSバンドルIDに `com.example.dictionary` と入力し「登録」を押下。
3. `GoogleService-Info.plist` をダウンロードする。
4. iosフォルダにダウンロードしたファイルを移動する。

### Flutter for Webへの対応方法

#### Webサポートの有効化

下記のコマンドでFlutter SDKを最新のベータチャンネルに変更し、Webサポートを有効にする。

```shell
$ flutter channel beta
$ flutter upgrade
$ flutter config --enable-web
```

`flutter devices` コマンドの出力を確認し、 `Chrome` デバイスが有効になっていることを確かめる。

```shell
$ flutter devices
2 connected device:

Chrome     • chrome     • web-javascript • Google Chrome 79.0.3945.130
Web Server • web-server • web-javascript • Flutter Tools
```

**Webサポートを有効にした後にはAndroid Studioを再起動させる。**
その後、 デバイスのプルダウンに　**Chrome (web)** メニューが表示される。

#### アプリ登録

1. Project Overviewの「アプリ追加」を押下し、ウェブを選択。
2. アプリのニックネームを適当に入力し「登録」を押下。
3. 「// Your web app's Firebase configuration」以下の設定値をコピーし、`web/index.html` を上書きする。