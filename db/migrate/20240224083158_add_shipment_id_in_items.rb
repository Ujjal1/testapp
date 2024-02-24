class AddShipmentIdInItems < ActiveRecord::Migration[7.1]
  def change
    add_column :items, :shipment_id, :integer
    add_foreign_key :items, :shipments, column: :shipment_id
  end
end
