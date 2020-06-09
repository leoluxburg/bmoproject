class AddWritterToLectures < ActiveRecord::Migration[5.2]
  def change
    add_column :lectures, :writter, :string
  end
end
