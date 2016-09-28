class CreateMyNewBlos < ActiveRecord::Migration
  def change
    create_table :my_new_blos do |t|
      t.string :title,    null: false, length: { maximum: 50 }
      t.text :body,       null: false, length: { maximum: 1000 }
      t.string :category, null: false, length: { maximum: 50 }

      t.timestamps null: false
    end
  end
end
