class CreateEpisodes < ActiveRecord::Migration[5.2]
  def change
    create_table :episodes do |t|
      t.string :title
      t.text :description
      t.string :video
      t.string :audio

      t.timestamps
    end
  end
end
