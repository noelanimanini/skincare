class CreateChemiskins < ActiveRecord::Migration[6.1]
  def change
    create_table :chemiskins do |t|
     
      t.integer :user_id
      t.integer :product_id

      t.timestamps
    end
  end
end
