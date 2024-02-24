require 'rails_helper'

RSpec.describe CustomersController, type: :controller do
  describe "POST #create" do
    it "creates a new customer" do
      post :create, params: { customer: { name: "New Customer" } }
      
      expect(Customer.last.name).to eq("New Customer")
    end
  end
end