class CreateCheeses < ActiveRecord::Migration
  def change
    create_table :cheeses do |t|
      t.string :cheese_name
      t.string :cheese_description
      t.string :origin_country
      t.string :milk_type
      t.string :texture
      t.string :taste
      t.boolean :pasteurized

      t.timestamps
    end
  end
end
