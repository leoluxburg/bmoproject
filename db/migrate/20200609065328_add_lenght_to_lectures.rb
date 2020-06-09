class AddLenghtToLectures < ActiveRecord::Migration[5.2]
  def change
    add_column :lectures, :lenght, :string
  end
end
