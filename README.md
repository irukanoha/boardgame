# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

##usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|email|string|null: false, unique: true|
|password|string|null: false|
|repassword|string|null: false|

### Association
- has_many :groups, through: :groups_users
- has_many :comments
- has_many :groups_users
- has_many :reviews

##groupsテーブル
|Column|Type|Options|
|------|----|-------|
|title|string|null: false|
|text|text||

### Association
- has_many :users, through: :groups_users
- has_many :chats
- has_many :groups_users

##groups_usersテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :group
- belongs_to :user

##commentsテーブル
|Column|Type|Options|
|------|----|-------|
|message|text||  
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :group
- belongs_to :user

##itemsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false| 
|image|text|null: false|
|rule|text|null: false|
|people|null: false|
|time|null: false|
|age|null: false|
|video||

### Association
- has_many :reviews

##reviewsテーブル
|Column|Type|Options|
|------|----|-------|
|date|string|null: false| 
|title|text|null: false|
|text|text|null: false|
|users_id|null: false, foreign_key: true|
|goods_id|null: false, foreign_key: true|

### Association
- belongs_to :item
- belongs_to :user

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
