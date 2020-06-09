class ChangeNumberToStringInLectures < ActiveRecord::Migration[5.2]
  def change
      change_column :lectures, :number, :string
  end
end
