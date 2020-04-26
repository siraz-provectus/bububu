class Material < ApplicationRecord
  has_many :inventory_stock_sales

  scope :discounted, -> {
    material_ids = InventoryStockSale.find_by_sql('select invss.material_id
      from inventory_stock_sales invss
      left join sale_fabric_requests sfr on sfr.inventory_stock_sale_id = invss.id
      left join fabric_requests fabrreq on fabrreq.id = sfr.fabric_request_id
      group by invss.id
      HAVING
      COALESCE(SUM(fabrreq.amount),0) < invss.leftover').pluck(:material_id)

      where(id: material_ids)
  }
end
