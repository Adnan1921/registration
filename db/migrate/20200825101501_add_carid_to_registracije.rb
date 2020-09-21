class AddCaridToRegistracije < ActiveRecord::Migration[6.0]
  def change
    create_table :registracijes do |t|
          t.string :car_id
          t.timestamps
        end
  end
end
