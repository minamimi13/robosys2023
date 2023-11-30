# robosys2023
#### ロボットシステム学2023

## 概要
このプログラムは数字を入力すると四則計算をしてくれるコマンドと
誕生月を入力すると今日の運勢占いをしてくれるコマンドです。


## 使用方法

### ダウンロード方法
githubがダウンロ―ドされているUbuntuのターミナル上で以下のコマンドを入力し実行します。
~~~
$ git clone git@github.com:minamimi13/robosys2023.git
$ cd robosys2023
~~~


## コマンドと実行例
### ・plus
![test](https://github.com/minamimi13/robosys2023/actions/workflows/test_plus.yml/badge.svg)

標準入力から読み込んだ数字を足します。

実行例は以下のようになります。
~~~
$ seq 5 | ./plus
15
~~~

### ・minus
![test](https://github.com/minamimi13/robosys2023/actions/workflows/test_minus.yml/badge.svg)

打ち込んだ二つの値の差分を計算します。

実行例は以下のようになります。
~~~
$ ./minus
大きい方の数字：5
小さい方の数字：3
5 - 3 = 2
~~~

### ・multiplication
![test](https://github.com/minamimi13/robosys2023/actions/workflows/test_multiplication.yml/badge.svg)

標準出力から読み込んだ数字を掛け合わせます。

実行例は以下のようになります。
~~~
$ seq 5 | ./multiplication
120
~~~

### ・division
![test](https://github.com/minamimi13/robosys2023/actions/workflows/test_division.yml/badge.svg)

打ち込んだ二つの数を割り算計算します。

実行例は以下のようになります。
~~~
$ ./division
1つ目の数字：9
2つ目の数字：3
9 ÷ 3 = 3
~~~

### ・Uranai
![test](https://github.com/minamimi13/robosys2023/actions/workflows/test_Uranai.yml/badge.svg)

入力した誕生月からランダムに占い結果を提示します。

実行例は以下のようになります。
~~~
$ ./Uranai
誕生月を入力してください：4
4月の今日の運勢は行動力の勝利です
~~~

## 必要なソフトウェア
* Python
  * テスト済み：3.7~3.10
  
* Ubuntu 20.04


## 著作権・ライセンス
* このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます。
* このパッケージのコードの一部は，下記のコード（CC-BY-SA 4.0 by Ryuichi Ueda）のものを，本人の許可を得て自身の著作としたものです．[ryuichiueda/robosys2023](https://github.com/ryuichiueda/robosys2023)
#### © 2023 Saori Kitami
