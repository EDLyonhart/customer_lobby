class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.text :review_body
      t.integer :review_rating
      t.references :company, foreign_key: true
      t.references :customer, foreign_key: true

      t.timestamps
    end
  end
end
