class EditCollumnToNotNull < ActiveRecord::Migration[6.0]
  def change

  	change_column :users, :name, :string, :null => true
  	change_column :users, :phone_number, :string, :null => true
  	change_column :users, :address, :string, :null => true
  end
end
