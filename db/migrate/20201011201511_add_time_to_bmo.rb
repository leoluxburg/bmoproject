class AddTimeToBmo < ActiveRecord::Migration[5.2]
  def change
    add_column :bmos, :time, :time
  end
end
