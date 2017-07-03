class AddCompaniesToCustomers < ActiveRecord::Migration[5.0]
  def change
    change_table :customers do |t|
      t.integer :companies
    end
  end
end
