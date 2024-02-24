require 'rails_helper'

RSpec.describe DeliveryPartner, type: :model do
  it "updates shipment status successfully" do
    delivery_partner = DeliveryPartner.create(name: "Example Delivery Partner")
    shipment = Shipment.create(source: "Source Location", target: "Target Location", items: "Example Items")
    
    shipment.assign_delivery_partner(delivery_partner)
    shipment.update_status("Delivered")
    
    expect(shipment.status).to eq("Delivered")
  end
end