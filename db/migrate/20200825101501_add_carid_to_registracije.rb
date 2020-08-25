class AddCaridToRegistracije < ActiveRecord::Migration[6.0]
  def change
    add_column :registracijes, :car_id, :string
  end
end
