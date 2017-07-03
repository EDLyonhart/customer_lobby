class CreateCustomers < ActiveRecord::Migration[5.0]
  def change
    create_table :customers do |t|
      t.string :customer_name
      t.string :customer_address1
      t.string :customer_address2
      t.string :customer_state
      t.integer :customer_zip
      t.integer :customer_phone

      t.timestamps
    end
  end
end
