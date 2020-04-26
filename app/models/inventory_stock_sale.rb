class InventoryStockSale < ApplicationRecord
  belongs_to :material
  has_many :sale_fabric_requests
  has_many :fabric_requests, through: :sale_fabric_requests
end