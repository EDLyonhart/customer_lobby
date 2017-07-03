class CreateCustomerCompanies < ActiveRecord::Migration[5.0]
  def change
    create_table :customer_companies do |t|
      
      t.references :customer, foreign_key: true
      t.references :company, foreign_key: true

      t.timestamps
    end
  end
end
