class AddVideoToLectures < ActiveRecord::Migration[5.2]
  def change
    add_column :lectures, :video, :string
  end
end
