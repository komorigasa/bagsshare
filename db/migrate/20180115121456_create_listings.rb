class CreateListings < ActiveRecord::Migration[5.1]
  def change
    create_table :listings do |t|
      t.string :travel_type
      t.string :travel_country
      t.string :departure_port
      t.string :arrival_port
      t.string :address
      t.integer :commodity_prices
      t.string :listing_title
      t.text :listing_content
      t.boolean :active
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
