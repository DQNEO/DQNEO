        /*
         * GASのファイルのアセンブルの仕方と基本構造の説明です。
         */

        /*
         * アセンブルの仕方
         *
         * as -a=リストファイル -o 出力オブジェクト 入力アセンブラファイル
         *
         * as -a=01_struct.lst  -o 01_struct 01_struct.s
         *
         * -aオプションでリストファイルを生成できます。これによりメモリマップの確認などが
         * 出来ます。実際にアセンブルして確認してみましょう。
         *　
         * ヘルプの表示
         * as -h
         */

        # 1行のコメントの書き方。
        /*
         * 複数行のコメントを書く場合はC言語やJava言語と同じです。
         *
         */

        /*
         * ディレクティブ
         * ディレクティブは、コロンではじめて、これ以降をアセンブラがどのように解釈するかを指示します。例えば以下の場合、
         * .code32ディレクティブで32bitのアセンブラを出力してくださいと指示しています。
         */
        .code32
        .text

          # .text内にコードを書いていく。

        .data

          # データはこちらに書いていく。

        # エントリポイントの追加
        # ただし、これだとexitができてないので
	# Segmentation faultになる。
        .global main
main:
