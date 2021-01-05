class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.integer :brand_id
      t.string :name
      t.string :category
      t.text :description

      t.timestamps
    end
  end
end
