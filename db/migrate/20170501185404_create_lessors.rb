class CreateLessors < ActiveRecord::Migration[5.0]
  def change
    create_table :lessors do |t|
      
      t.string :name
      t.string :lastName
      t.text :telephone
      t.text :cellphone
      t.text :email
      t.text :password

      t.timestamps
    end
  end
end
