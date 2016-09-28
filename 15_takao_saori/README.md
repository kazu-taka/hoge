# 高尾沙織
## 独自で追加した部分
- アソシエーションを用いて、ブログにコメント欄を付けました。ブログ記事から投稿できるように設定しました。
- ナビゲーションバナーの色を反転させてみました
- 
## 反省
- 1:著者の画像イメージのURLを間違えました。rails cで
- Author.update_attribute(:image_url, "http://heaaart.com/heartadmin/wp-content/uploads/2015/04/49716-1.png")で修正しようを試みましたが出来ませんでした。
- 2:ナビゲーションバナーの、My Blogの表示が、左に寄りませんでした。class属性にnavbar-leftを指定したのですが。
- 検索機能の部分で、コメントからも検索できるようにできそうで、出来ずに終わりました。
- 
## 追加したい機能
- ブログ記事のデザインを、編集からユーザーが編集できるようにしたい。
- ブログのテンプレートデザインを、もっと素敵に装飾したい。
- 