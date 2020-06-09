class CreateSuscribes < ActiveRecord::Migration[5.2]
  def change
    create_table :suscribes do |t|
      t.string :email

      t.timestamps
    end
  end
end
