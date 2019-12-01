# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
## Userテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false, unique: true|
|email|string|null: false, unipue: true|
|password|string|null: false|

### Association
- has_many :users_groups
- has_many :groups,through: users_groups
- has_many :messages

## groupテーブル
|Column|Type|Options|
|------|----|-------|
|group_name|string|null :false, unique: true|
|chat_member|string|null: false|
|user_id|integer|null :false, foregin_key: true|

### Association
- has_many :users_groups
- has_many :users,through: users_groups
- has_many :messeges

## messageテーブル
|Column|Type|Options|
|------|----|-------|
|text|text|null: false|

### Association
- belongs_to :user
- belongs_to :group

## users_groupsテーブル
|Column|Type|Options|
|------|----|-------|
|users_id|integer|null: false,foregin_key: ture|
|groups_id|integer|null: false,foregin_key: true|

### Association
- belongs_to :user
- belongs_to :group