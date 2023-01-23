## 前準備
https://www.deepl.com/ja/pro-api?cta=header-pro-api/
このページにてアクセスキーを取得して、auth_keyに配置する

```shell
$ export DEEPL_FREE_ACESS_KEY="access key value"
```

Bundlerを使用しているので、最初に以下のコマンドを実行

```shell
$ bundle install
```

## 使いかた

```shell
$ ruby music_lyrics_translate.rb "Hello World"
# => Hello World
# ハローワールド
```

スクリプト実行後、クリップボードに自動で保存される。
