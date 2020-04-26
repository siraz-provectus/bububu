class CreateInventoryStockSales < ActiveRecord::Migration[6.0]
  def change
    create_table :inventory_stock_sales do |t|
      t.integer :material_id
      t.integer :leftover

      t.timestamps
    end
    add_index :inventory_stock_sales, :material_id
  end
end
