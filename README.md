# README

#アプリ名
MYSELF

#概要
このアプリには「日記」と「自己紹介文」を書く機能が実装されています。
「日記」では、自分がその日頑張ったことなどを記録することができます。
「自己紹介文」では、自分専用の自己紹介文を計 7 つ保存しておくことができます。

#本番環境
【デプロイ先】
https://myselfnote.herokuapp.com/
【テストアカウント&パスワード】
アカウント: nobita
パスワード: nobinobita

#制作背景(意図)
もともと僕は教員をしていました。その中で、自己肯定感の大切さを学びました。
自分のやったことや頑張ったことを記録することで、たくさんの人が自己肯定感を高めることができればいいなという想いで制作しました。

#DEMO

#工夫したポイント

- 使いたくなるようなかっこいいデザインを意識しました。
- ヘッダーとサイドバー、メイン画面と３分割にすることで使いやすい見た目にしました。

#使用技術(開発環境)
HTML, CSS, JavaScript, Ruby, jQuery, Rails, Git, GitHub, postgreSQL, Heroku

#課題や今後実装したい機能
【課題】

- 自己紹介文が上から順番に書いていく仕様になっているので、好きなところから書けるようにしたい。
  【今後実装したい機能】
- 設定でもっと多くの背景色を設定できるようにしたい。

#DB 設計

## users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| username           | string | null: false |
| email              | string | null: false |
| encrypted_password | string | null: false |

### Association

- has_many :notes
- has_many :introductions

## notes テーブル

| Column      | Type   | Options |
| ----------- | ------ | ------- |
| date        | string |         |
| title       | string |         |
| quotation   | string |         |
| effort      | string |         |
| acheivement | string |         |
| todo        | string |         |
| free        | string |         |
| memo        | text   |         |
| user_id     | bigint |         |

### Association

- belongs_to :user

## introductions テーブル

| Column  | Type   | Options |
| ------- | ------ | ------- |
| title   | string |         |
| content | text   |         |
| user_id | bigint |         |

### Association

- belongs_to :user
