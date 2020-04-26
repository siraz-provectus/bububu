# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

mat1 = Material.create!(name: "Material 1")
mat2 = Material.create!(name: "Material 2")
mat3 = Material.create!(name: "Material 3")
mat4 = Material.create!(name: "Material 4")

iss1 = InventoryStockSale.create!(material_id: mat2.id, leftover: 100)
iss2 = InventoryStockSale.create!(material_id: mat3.id, leftover: 10)
iss3 = InventoryStockSale.create!(material_id: mat4.id, leftover: 1000)

fbr1 = FabricRequest.create!(amount: 10)
fbr2 = FabricRequest.create!(amount: 10)
fbr3 = FabricRequest.create!(amount: 10)

SaleFabricRequest.create!(inventory_stock_sale_id: iss2.id, fabric_request_id: fbr1.id)
SaleFabricRequest.create!(inventory_stock_sale_id: iss3.id, fabric_request_id: fbr2.id)
SaleFabricRequest.create!(inventory_stock_sale_id: iss3.id, fabric_request_id: fbr3.id)