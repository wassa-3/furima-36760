# テーブル設計

## users
| Column              | Type    | Options     |
| ------------------- | ------- | ----------- |
| nickname            | string  | null: false |
| email               | string  | null: false |
| encrypted_password  | string  | null: false |
| last_name           | string  | null: false |
| first_name          | string  | null: false |
| last_name_kana      | string  | null: false |
| first_name_kana     | string  | null: false |
| date_of_birth       | integer | null: false |

### Association
has_many :items
has_many :orders

## items
| Column           | Type       | Options                        |
| ---------------- | ---------- | ------------------------------ |
| name             | string     | null: false                    |
| explain          | text       | null: false                    |
| category_id      | integer    | null: false                    |
| condition_id     | integer    | null: false                    |
| pay_by_id        | integer    | null: false                    |
| ship_from_id     | integer    | null: false                    |
| delivery_time_id | integer    | null: false                    |
| user             | references | null: false, foreign_key: true |

### Association
belongs_to :user
has_one :order

## orders
| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| price   | integer    | null: false                    |
| item    | references | null: false, foreign_key: true |
| user    | references | null: false, foreign_key: true |

### Association
belongs_to :user
belongs_to :item
belongs_to :address

## addresses
| Column         | Type    | Options     |
| -------------- | ------- | ----------- |
| zip            | string  | null: false |
| prefecture_id  | integer | null: false |
| address_line   | string  | null: false |
| address_number | string  | null: false |
| building       | string  |             |
| phone_number   | integer | null: false |

### Association
belongs_to :order