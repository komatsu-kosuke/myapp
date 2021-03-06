# 引越し料金シミュレーター

### 引越し料金シミュレーターとは
 
* 引越しにかかる費用の概算を計算するアプリです。
* 個人情報の入力は必要ありません。またバリデーションも最小限に設定してありますのでお気軽にお試しいただけます。

### 引越し料金のシミュレーション以外の機能

* 引越し業者一覧
* 業者ごとの総合評価閲覧(口コミの評価点数と数によって変動する)
* 業者ごとの会社情報閲覧、口コミ情報閲覧
* 引越し業者の検索
* 口コミ投稿

* ※引越しにかかる費用、引越し業者、評価、会社情報、口コミなどは全て架空の物です。
 
# DEMO

### シミュレーター(計5ページ、gifは2枚)

* トップページから3ページ目(バリデーションのエラー表示)まで
[![Image from Gyazo](https://i.gyazo.com/e46a0918c374953b17bb145f9124491d.gif)](https://gyazo.com/e46a0918c374953b17bb145f9124491d)

* 4ページ目から計算結果まで
[![Image from Gyazo](https://i.gyazo.com/2525b00c63c212667acdd6131197c163.gif)](https://gyazo.com/2525b00c63c212667acdd6131197c163)

### 引越し業者一覧(gif3枚)

* 引越し業者一覧から会社情報および口コミ閲覧まで
[![Image from Gyazo](https://i.gyazo.com/5e462ce2bbcbc04e18cb4662cf95f4f9.gif)](https://gyazo.com/5e462ce2bbcbc04e18cb4662cf95f4f9)

* 会社情報および口コミ閲覧から口コミ投稿まで
[![Image from Gyazo](https://i.gyazo.com/308d0a7ea6ebd49ef488340ec2a34bdb.gif)](https://gyazo.com/308d0a7ea6ebd49ef488340ec2a34bdb)

* あいまい検索
[![Image from Gyazo](https://i.gyazo.com/c442ff8b9fcfa1a61723ef6bd29b1fd1.gif)](https://gyazo.com/c442ff8b9fcfa1a61723ef6bd29b1fd1)
 
# 開発環境
 
* Mac OS Catalina
* Ruby 2.5.1
* Ruby on rails 5.2.3
* MySQL 0.5.3
* heroku
* Visual Studio Code

# インストール
 
```bash
$ git clone https://github.com/komatsu-kosuke/myapp.git
$ cd myapp
$ bundle
$ rails db:create
$ rails db:migrate
```

# 引越し料金シミュレーターの使い方
## シミュレーター
  * 1.ヘッダーメニューの「シミュレーション」をクリックすると、シミュレーション開始ボタンがあるトップページに遷移します。(このページがrootです)
  * 2.シミュレーション開始ボタンをクリックすると、計算に必要な情報の入力ページに遷移します。(計3ページあります)
  * プログレスバーを参考にお進みください。
  * 3.入力が終わると「お見積もり結果」ページに遷移します。選択された値に応じて引越し費用の概算が出力されます。
  * 4.※概算見積もり金額や表示内容は架空のものです。

## 引越し業者一覧
  * 1.ヘッダーメニューの「引越し業者一覧」をクリックすると、検索窓や業者一覧が表示されたページに遷移します。
  * 2.引越し業者一覧は、各業者ごとに最新の口コミが閲覧できるようになっています。各業者ごとの総合評価点もご覧いただけます。(口コミの点数と数で変動します)
  * 3.検索窓は業者一覧に存在している業者のあいまい検索が可能です。条件に一致しない場合は全件表示します。
  * 4.引越し業者一覧の中から任意の業者を選択し、会社情報を閲覧したり口コミを閲覧したりすることが出来ます。
  * 5.会社情報ページの「口コミを投稿する」を選択すると口コミを投稿することが出来ます。
  * 6.※引越し業者、口コミ、評価などは全て架空のものです。


* その他ヘッダーメニューの項目については開発中です。
 
# 作者
 
* komatsu-kosuke
* TECH::EXPERT名古屋66期
* n66.komatsu.kosuke@gmail.com

