class DeleteEndDateToRents < ActiveRecord::Migration[5.2]
  def change
    remove_column :rents, :end_date
  end
end
