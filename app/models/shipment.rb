class Shipment < ApplicationRecord
    belongs_to :customer
    belongs_to :delivery_partner, optional: true

    has_many :items
end
