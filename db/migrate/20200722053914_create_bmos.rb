class CreateBmos < ActiveRecord::Migration[5.2]
  def change
    create_table :bmos do |t|
      t.string :name
      t.string :email
      t.string :category
      t.string :answer
      t.text :reason

      t.timestamps
    end
  end
end
