class AddCarExpDateToRegistracije < ActiveRecord::Migration[6.0]
  def change
    add_column :registracijes, :car_exp_date, :string
  end
end
