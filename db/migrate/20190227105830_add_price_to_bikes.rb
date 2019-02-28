class AddPriceToBikes < ActiveRecord::Migration[5.2]
  def change
    add_column :bikes, :price_per_day, :integer
  end
end
