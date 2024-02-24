class CreateDeliveryPartners < ActiveRecord::Migration[7.1]
  def change
    create_table :delivery_partners do |t|
      t.integer :dp_id
      t.string :name
      t.string :email
      
      t.timestamps
    end
  end
end
