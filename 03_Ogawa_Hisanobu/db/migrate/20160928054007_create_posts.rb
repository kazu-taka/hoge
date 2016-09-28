class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t| #postsテーブルの作成
      t.string :title,   null: false, length: { maximum: 100 }        #string型でtitleカラムの作成
      t.text :body,      null: false            #text型でbodyカラムの作成
      t.string :category,null: false      #string型でcategoryカラムの作成

      t.timestamps null: false #timestamps(created_at,updated_at)カラムの作成
                               # null: falseはデータを必ず入れるようにしている。
    end
  end
end
