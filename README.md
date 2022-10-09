# Nonbeeeサイト

### サイト概要

居酒屋側が自店の紹介投稿をし、訪れたユーザーや気になったユーザーがレビューやコメントをできるサイト。
地図機能を実装し、サイトから場所を把握できるようにしています。
ユーザーのマイページにはお気に入り投稿の一覧ページを作成し、すぐに確認できるようになっています。

### サイトテーマ

居酒屋が発信できるサイト

### テーマを選んだ理由

コロナ禍で飲食業界に大打撃があり、中でも居酒屋は大きくダメージを負ったため応援して盛り上げるための
居酒屋に特化したリアルタイムで情報を得ることができるレビューサイト。
居酒屋で行っている期間限定のキャンペーンやメニュー、お店のこだわりなどホームページを訪れる機会がなければ知らずに
終わってしまうことが多かったため、リアルタイムの情報が知れるサイトが欲しいと考えました。
また、お店側はサイトを活用することで多くの人にお店のことを知ってもらうきっかけになることができます。

### ターゲットユーザー

居酒屋と居酒屋を利用するお客様

### 主な利用シーン

居酒屋：情報を発信したい時
居酒屋の利用客：情報を得たい時。レビューやコメントをしたい時。

* Cloud9（Amazon Linux 2)

#### バックエンド

* ruby 3.1.2

* Rails 6.1.6.1

#### フロントエンド

* HTML

* SCSS

#### gem

* bootstrap

* devise

### 主な機能

#### 会員

* 顧客は会員登録、ログイン・ログアウト、退会ができます。
* 会員のログインはメールアドレスとパスワードで行います。
* 気に入った投稿に対していいね機能を行えます。
* 会員はマイページから自己紹介ぶんといいね一覧を確認できます。
* 会員登録時、下記の情報をユーザ情報として入力できます。
  * 名前（姓・名）
  * 名前（カナ姓・カナ名）
  * 電話番号
  * メールアドレス
  * パスワード  

#### 管理ユーザー

* 管理者用メールアドレスとパスワードでログインできます。
* 会員登録されているユーザ情報の閲覧、編集、退会処理が行えます。
* ユーザの投稿、コメント、レビューの一覧・詳細表示、編集、削除ができます。

　
