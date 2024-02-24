class CreateShipments < ActiveRecord::Migration[7.1]
  def change
    create_table :shipments do |t|
      t.references :customer, null: false, foreign_key: true
      t.references :delivery_partner, foreign_key: true
      t.string :source_location
      t.string :target_location
      t.string :status

      t.timestamps
    end
  end
end
