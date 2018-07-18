class DropProducts < ActiveRecord::Migration[5.1]
  def up
    drop_table :comments do |t|
      t.integer "user_id"
      t.text "body"
      t.integer "product_id"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.integer "post_id"
      t.index ["post_id"]
      t.index ["product_id"]
      t.index ["user_id"],
    end

  end
end
