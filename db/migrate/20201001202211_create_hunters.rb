class CreateHunters < ActiveRecord::Migration[5.2]
  def change
    create_table :hunters do |t|
      t.string :name
      t.string :email
      t.text :description

      t.timestamps
    end
  end
end
