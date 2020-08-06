## users table
|Column|Type|Options|
|------|----|-------|
|nickname|string|null false|
|email|string|null false, unique true|
|password|string|null false, unique true, length:minimum:7|

### Association
- has_one :address
- has_one :profile
- has_one :card
- has_many :items

## profiles table
|Column|Type|Options|
|------|----|-------|
|first_name|string|null false|
|last_name|string|null false|
|birthday|date|null false|
|user_id|integer|null false, foreign_key true|

### Association
- belongs_to :user

## cards table
|Column|Type|Options|
|------|----|-------|
|card_number|string|null false|
|expire_month|integer|null false|
|expire_year|integer|null false|
|security_code|integer|null false|
|user_id|integer|null false, foreign_key true|

### Association
- belongs_to :user

## addresses table

|Column|Type|Options|
|------|----|-------|
|first_name|string|null false|
|last_name|string|null false|
|first_hurigana|string|null false|
|last_hurigana|string|null false|
|post|integer|null false|
|prefectures|string|null false|
|city|string|null false|
|number|string|null false|
|building|string|null false|
|phone|string|null false, unique true|
|user_id|integer|null false, foreign_key true|

### Association
- belongs_to :user

## items table
|Column|Type|Options|
|------|----|-------|
|name|string|null false|
|explain|text|null false|
|delivery_cost|integer|null false|
|area|string|null false|
|limit|string|null false|
|price|integer|null false|
|user_id|integer|null false,foreign_key true|
|category_id|integer|foreign_key true|
|brand_id|integer|foreign_key true|

### Association
- belongs_to :user
- belongs_to :category
- belongs_to :brand
- has_many :images

## categories table
|Column|Type|Options|
|------|----|-------|
|name|string|null false|

### Association
- has_many :items

## brands table
|Column|Type|Options|
|------|----|-------|
|name|string|null false|

### Association
- has_many :items

## images table
|Column|Type|Options|
|------|----|-------|
|name|text|null false|
|item_id|integer|foreign_key true|


### Association
- belongs_to :item