class CreateRents < ActiveRecord::Migration[5.2]
  def change
    create_table :rents do |t|
      t.string :start_date
      t.string :end_date
      t.references :bike, foreign_key: true
      t.references :profil, foreign_key: true

      t.timestamps
    end
  end
end
