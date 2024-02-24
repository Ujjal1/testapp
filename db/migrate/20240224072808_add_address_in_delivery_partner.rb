class AddAddressInDeliveryPartner < ActiveRecord::Migration[7.1]
  def change
    add_column :delivery_partners, :address, :string
  end
end
