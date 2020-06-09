class CreateLectures < ActiveRecord::Migration[5.2]
  def change
    create_table :lectures do |t|
      t.string :title
      t.string :description
      t.integer :number
      t.string :content

      t.timestamps
    end
  end
end
