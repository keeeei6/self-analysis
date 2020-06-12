## usresテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false, add_index|
|email|string|null: false, unique: true|
|password|string|null: false|

### Association
- has_many :questions, through: :questions_users
- has_many :answres
- has_many :questions_users



## questionsテーブル

|Column|Type|Options|
|------|----|-------|
|content|string|

### Association
- has_many :users, through: :qusetions_users
- has_many :answres
- has_many :questions_users




## answerテーブル

|Column|Type|Options|
|------|----|-------|
|answer|text|null: false|
|question_id|references|null: false, foreign_key: true|
|user_id|references|null: false, foreign_kye: true|

### Association
- belongs_to :user
- belongs_to :question




## questions_usersテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|references|null: false, foreign_key: true|
|question_id|references|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :question