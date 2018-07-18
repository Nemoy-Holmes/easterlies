class RenameIntostionInPosts < ActiveRecord::Migration[5.1]
  def change
    rename_column :posts, :introduction, :description
  end
end
