require 'rails_helper'

RSpec.describe Customer, type: :model do
  it "creates a shipment successfully" do
    customer = Customer.create(name: "Example Customer")
    shipment = customer.shipments.create(source: "Source Location", target: "Target Location", items: "Example Items")
    
    expect(shipment).to be_valid
  end
end
