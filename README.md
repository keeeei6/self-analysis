## アプリ名
- Self-Analysis (自己分析アプリ)

<br>

## 概要 
- 内容<br>
自己分析が行えるアプリを開発したました。<br>
自己分析質問項目を100問設定しており、<br>
○今までの人生を振り返る○今後の考えをまとめることができる<br>
アプリになっております。<br>
<br>

- 機能
○ユーザー登録  ○ログインログアウト  ○ユーザー情報編集 <br>
○質問に対する回答  ○自分の回答を見返す  ○回答を編集する○回答の削除 <br>
<br>

## 作成背景
自分のやりたいことが何なのか迷っていたり、現状を変えたいと言う人が <br>
やりたいことを見つけるきっかけになるアプリを作成したいという思いで作成しました。<br>
<br>

## 開発環境
- HTML(Haml)/CSS(Sass)
- Ruby/ Ruby on Rails
- MySQL
- Github
- AWS
- Visual Studio Code
<br>

## 工夫ポイント

- 見た目、機能共にシンプルで分かりやすいものにした
- 質問項目を手軽にいくらでも増やすことができるようにSequelPrpで管理できるようにした
<br>

## 今後実装したい機能
- jsにてビューの工夫をしたい
- Ruby以外の言語を使用してアプリ作成をしたい
<br>


## データベース設計
<br>
## devise_usresテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false, add_index|
|email|string|null: false, unique: true|
|encrypted_password|string|null: false|
|reset_password_token|string|
|reset_password_sent_at|datetime|
|remember_created_at|datetime|

### Association
- has_many :questions, through: :questions_users
- has_many :answres


## groupテーブル

|Column|Type|Options|
|------|----|-------|
|file|string|

### Association
- has_many :questions


## questionsテーブル

|Column|Type|Options|
|------|----|-------|
|content|string|
|group_id|references|

### Association
- has_many :users, through: :qusetions_users
- has_many :answres
- belongs_to :group



## answerテーブル

|Column|Type|Options|
|------|----|-------|
|answer|text|null: false|
|question_id|references|null: false, foreign_key: true|
|user_id|references|null: false, foreign_kye: true|

### Association
- belongs_to :user
- belongs_to :question
