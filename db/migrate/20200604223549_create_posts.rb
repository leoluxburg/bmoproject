class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :description
      t.string :language
      t.string :time
      t.text :content
      t.references :theme, foreign_key: true

      t.timestamps
    end
  end
end
