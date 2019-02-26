class CreateBikes < ActiveRecord::Migration[5.2]
  def change
    create_table :bikes do |t|
      t.string :marque
      t.string :category
      t.text :description
      t.text :address
      t.integer :zipcode
      t.integer :age
      t.references :profil, foreign_key: true

      t.timestamps
    end
  end
end
