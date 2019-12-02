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
## Usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false, unique: true, index: true|
|email|string|null: false, unipue: true|
|password|string|null: false|

### Association
- has_many :users_groups
- has_many :groups,through: :users_groups
- has_many :messages

## groupsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null :false, unique: true|


### Association
- has_many :users_groups
- has_many :users,through: :users_groups
- has_many :messeges

## messagesテーブル
|Column|Type|Options|
|------|----|-------|
|text|text|
|image|string|
|user|reference|null: false, foreign_key: true|
|group|reference|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :group

## users_groupsテーブル
|Column|Type|Options|
|------|----|-------|
|users|reference|null: false,foreign_key: ture|
|groups|reference|null: false,foreign_key: true|


### Association
- belongs_to :user
- belongs_to :group