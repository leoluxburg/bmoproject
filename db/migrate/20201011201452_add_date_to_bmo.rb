class AddDateToBmo < ActiveRecord::Migration[5.2]
  def change
    add_column :bmos, :date, :date
  end
end
