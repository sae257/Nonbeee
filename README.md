# のんべえサイト

### 概要

コロナ禍で飲食業界に大打撃があり、中でも居酒屋は大きくダメージを負ったため応援して盛り上げるための
居酒屋に特化したレビューサイト。

### サイトの説明 

居酒屋側が自店の紹介投稿をし、訪れたお客様や気になったお客様がレビューやコメントをできるサイト。

### 開発環境

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

　
