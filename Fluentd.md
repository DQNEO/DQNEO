# Fluentdメモ

## match
`*`と`**`で挙動が違うので注意

## out_mongoプラグイン

https://github.com/fluent/fluent-plugin-mongo

Fluentに同梱されてるプラグイン。MongoDBへの保存をやってくれる。

### タイムスタンプのキーを変更する方法

自動で `"time" : ISODate(..)`というキーバリューを付与してくれるのだが、これを変更したい。

https://github.com/fluent/fluent-plugin-mongo/issues/35

設定ファイルで`time_key hoge`と記述すれば`hoge`に変更できた。

PR送った https://github.com/fluent/fluentd-docs/pull/161

