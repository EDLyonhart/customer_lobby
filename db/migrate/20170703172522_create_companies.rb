class CreateCompanies < ActiveRecord::Migration[5.0]
  def change
    create_table :companies do |t|
      t.string :company_name
      t.string :company_address1
      t.string :company_address2
      t.string :company_state
      t.integer :company_zip
      t.integer :company_phone

      t.timestamps
    end
  end
end
