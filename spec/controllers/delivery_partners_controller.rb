require 'rails_helper'

RSpec.describe DeliveryPartnersController, type: :controller do
  describe "POST #create" do
    it "creates a new delivery partner" do
      post :create, params: { delivery_partner: { name: "New Delivery Partner" } }
      
      expect(DeliveryPartner.last.name).to eq("New Delivery Partner")
    end
  end
end