class CreateRegistracijes < ActiveRecord::Migration[6.0]
  def change
    create_table :registracijes do |t|
      t.string :car_id
      t.string :car_exp_date

      t.timestamps
    end
  end
end
