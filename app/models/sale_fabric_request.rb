class SaleFabricRequest < ApplicationRecord
  belongs_to :fabric_request
  belongs_to :inventory_stock_sale
end
