class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.string :name
      t.string :phone
      t.string :address
      t.timestamps
    end
    change_table :food_items do |t|
      t.belongs_to :order, foreign_key: true
    end
  end
end
