class RenameImageNameInProducts < ActiveRecord::Migration[5.1]
  def change
    rename_column :products, :image_name, :image
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
  end
end
