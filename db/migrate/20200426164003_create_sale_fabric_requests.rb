class CreateSaleFabricRequests < ActiveRecord::Migration[6.0]
  def change
    create_table :sale_fabric_requests do |t|
      t.integer :inventory_stock_sale_id
      t.integer :fabric_request_id

      t.timestamps
    end
    add_index :sale_fabric_requests, :inventory_stock_sale_id
    add_index :sale_fabric_requests, :fabric_request_id
  end
end
