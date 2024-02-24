class CreateCustomer < ActiveRecord::Migration[7.1]
  def change
    create_table :customers do |t|
      t.integer :customer_id
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
