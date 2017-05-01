class CreateTenants < ActiveRecord::Migration[5.0]
  def change
    create_table :tenants do |t|
      
      t.string :name
      t.string :lastName
      t.date :dateOfBirth
      t.text :telephone
      t.text :cellphone
      t.string :gender
      t.text :email
      t.text :password

      t.timestamps
    end
  end
end
