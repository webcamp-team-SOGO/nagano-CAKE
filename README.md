# DWCチーム開発　ECサイト「長野CAKE」
<img width="200" src="https://user-images.githubusercontent.com/78068219/112710271-1e3e3800-8f03-11eb-9e5a-dccab1355b1f.png">

# 説明
  **長野県にある洋菓子屋「長野CAKE」のECサイト**  
  ・通販のみの完全受注型生産  
  ・家族や友人へのプレゼントなど、注文者の住所以外にも直接送ることが可能  
  ・送料は全国一律８００円  
  ・支払いはクレジットカードか現金振り込みの２つから選択ができる  
  
# ER図
<img width="792" alt="ER_SOGO" src="https://user-images.githubusercontent.com/78068219/112710463-cbfe1680-8f04-11eb-934e-40e77e928e7c.png">

# データベース定義書
![データベース定義書](https://user-images.githubusercontent.com/78068219/112710632-12a04080-8f06-11eb-9ea3-6a4135c2ff47.png)

# アプリケーション詳細設計書
![アプリケーション詳細設計書](https://user-images.githubusercontent.com/78068219/112710690-762a6e00-8f06-11eb-8d63-3a6c1833ce84.png)

# 画面遷移図
- 管理者側
<img width="952" alt="画面遷移図_a" src="https://user-images.githubusercontent.com/78068219/112711404-78db9200-8f0b-11eb-840b-cebdae61cd09.png">

- 会員側(顧客)
<img width="983" alt="画面遷移図_c" src="https://user-images.githubusercontent.com/78068219/112711409-8264fa00-8f0b-11eb-8f73-de9278c0612d.png">

# 実装機能
- 管理者側
  - 商品登録・編集
  - ジャンル登録・編集
  - 会員閲覧(一覧・詳細)
  - 会員ステータス編集
  - 注文履歴(一覧・詳細)
  - 注文ステータス・製作ステータス編集  
- 会員側(顧客)
  - 会員登録・編集・退会
  - 商品閲覧(一覧・詳細)
  - 商品購入(カート・注文)
  - 注文履歴(一覧・詳細)

# 開発環境
　Ruby on Rails  
## バージョン
- Rails 5.2.4.3  
- Ruby 2.6.3  
- gem  
  - devise  
  - refile  
  - refile-mini_magick  
  - kaminari  
  - bootstrap  
  - jquery-rails  
  - font-awesome-sass  
  - rails-i18n  
　
 # 開発者

## チーム名
**Team SOGO**

## メンバー
・岡倉亮太(おか)

・五島翔生(ごっさん)

・大橋直稀(なおき)

・志丸僚(まる)
