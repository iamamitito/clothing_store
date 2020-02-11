class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.references :user, foreign_key: true
      t.references :product, foreign_key: true
      t.boolean :paid, default: false
      t.integer :quantity, default: 0
      t.integer :price

      t.timestamps
    end
  end
end
