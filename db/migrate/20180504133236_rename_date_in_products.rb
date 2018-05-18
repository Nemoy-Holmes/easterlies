class RenameDateInProducts < ActiveRecord::Migration[5.1]
  def change
  	rename_column :products, :date, :dateOfPublish
  end
end
