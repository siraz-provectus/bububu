class CreateFabricRequests < ActiveRecord::Migration[6.0]
  def change
    create_table :fabric_requests do |t|
      t.integer :amount

      t.timestamps
    end
  end
end
