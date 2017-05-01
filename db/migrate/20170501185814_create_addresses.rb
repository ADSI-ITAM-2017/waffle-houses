class CreateAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :addresses do |t|
      
      t.string :city
      t.string :state
      t.string :colony
      t.integer :number
      t.integer :insideNumber
      t.integer :zipCode
      t.references :idProperty, foreign_key: true

      t.timestamps
    end
  end
end
