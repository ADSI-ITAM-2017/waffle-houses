class CreateProperties < ActiveRecord::Migration[5.0]
  def change
    create_table :properties do |t|
      
      t.integer :numberPersons
      t.integer :cost
      t.string :body
      t.string :type
      t.references :idLessor, foreign_key: true
      t.references :idTenant, foreign_key: true
      t.references :idAddress, foreign_key: true

      t.timestamps
    end
  end
end
