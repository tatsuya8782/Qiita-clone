
## usersテーブル

|Column|Type|Options|
|------|----|-------|
|user_name|string|null: false|
|email|string|null: false|
|avatar|string||
|url|string||
|content|text||

### Association
has_many :stocks
has_many :articles, through: :stocks
has_many :user_tags
has_many :tags, through: :user_tags
has_many :likes
has_many :articles, through: :likes
has_many :articles
has_many :comments


## articlesテーブル

|Column|Type|Options|
|------|----|-------|
|title|string|null: false|
|body|text|null: false|
|user|references|null: false, foreign_key: true|

### Association
has_many :stocks
has_many :users, through: :stocks
has_many :tag_articles
has_many :tags, through: :tag_articles
has_many :likes
has_many :users, through: :likes
belongs_to :user
has_many :comments

## tagsテーブル

|Column|Type|Options|
|------|----|-------|
|tag_name|string|null: false|

### Association
has_many :user_tags
has_many :users, through: :user_tags
has_many :tag_articles
has_many :articles, through: :tag_articles


## commentsテーブル

|Column|Type|Options|
|------|----|-------|
|message|text|null: false|
|user|references|null: false, foreign_key: true|
|article|references|null: false, foreign_key: true|

belongs_to :user
belongs_to :article


## likesテーブル

|Column|Type|Options|
|------|----|-------|
|user|references|null: false, foreign_key: true|
|article|references|null: false, foreign_key: true|

belongs_to :user
belongs_to :article


## tag_articlesテーブル

|Column|Type|Options|
|------|----|-------|
|tag|references|null: false, foreign_key: true|
|article|references|null: false, foreign_key: true|

belongs_to :tag
belongs_to :article


## followsテーブル

|Column|Type|Options|
|------|----|-------|
|user|references|null: false, foreign_key: true|
|user|references|null: false, foreign_key: true|

belongs_to :user
belongs_to :user


## user_tagsテーブル

|Column|Type|Options|
|------|----|-------|
|user|references|null: false, foreign_key: true|
|tag|references|null: false, foreign_key: true|

belongs_to :user
belongs_to :tag


## stocksテーブル

|Column|Type|Options|
|------|----|-------|
|user|references|null: false, foreign_key: true|
|article|references|null: false, foreign_key: true|

belongs_to :user
belongs_to :article


