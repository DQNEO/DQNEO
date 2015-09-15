# tupai.jsに関する雑なメモ

## ほんとに雑多なメモ

リンクのはりかた

テンプレートにこう書いて、

```html
<a data-ch-name="foo" >...</a>
```

ViewインスタンスにsetDataすればそれがhrefになる

```js
var data = {};
data.foo = "#!/issues?id=" + data.id;
cell.setData(data);
```

## tupaijs serverしたときのtupai本体

node_modules/tupaijs/releases/web/tupai-last.js


## 質問、疑問など
* ResponseDelegateってなに？なんのためにいるの？


## FAQなど

* data-chのchの意味は？ - channelの略だが特に意味はない。名前の衝突を避けるためのprefix的なもの
* gen ディレクトリは何？ - 中間生成物が置かれる一時ディレクトリ的なもの
* classzzのzzは予約語との名前衝突を避けるための余分な文字列

## Tips

* /templates/ というURLでテンプレートを静的に表示できる。この画面でデザインや見栄の調整を行う。
* 本番で動かすときは`tupaijs make`で生成されたファイルをデプロイする
 * tupai.min.jsなどはこのときに生成される。




