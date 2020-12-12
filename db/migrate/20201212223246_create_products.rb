class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.float :price
      t.string :image
      t.integer :stock
      t.integer :status
      t.references :region, null: false, foreign_key: true
    end
  end
end
