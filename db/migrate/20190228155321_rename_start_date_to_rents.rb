class RenameStartDateToRents < ActiveRecord::Migration[5.2]
  def change
    rename_column :rents, :start_date, :period
  end
end
