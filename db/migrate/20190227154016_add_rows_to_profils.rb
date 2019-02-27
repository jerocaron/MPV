class AddRowsToProfils < ActiveRecord::Migration[5.2]
  def change
    add_column :profils, :tel, :string
    add_column :profils, :iban, :string
    add_column :profils, :photo, :string
  end
end
