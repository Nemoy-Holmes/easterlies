class DropProducts < ActiveRecord::Migration[5.1]
  def change
    change_table :comments do |t|
      remove_foreign_key :comments, name: "index_comments_on_post_id"
      remove_foreign_key :comments, name: "index_comments_on_product_id"
      remove_foreign_key :comments, name: "index_comments_on_user_id"
    end
  end
end
