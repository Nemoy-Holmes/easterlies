class DropProducts < ActiveRecord::Migration[5.1]
  def up
    drop_table :products do |t|
      t.string "title"
      t.text "content"
      t.string "image"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.date "dateOfPublish"
      t.string "description"
    end
  end

end
