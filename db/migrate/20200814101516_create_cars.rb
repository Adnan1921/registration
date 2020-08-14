class CreateCars < ActiveRecord::Migration[6.0]
  def change
    create_table :cars do |t|
      t.text :user_id
      t.text :plate
      t.text :registration_date

      t.timestamps
    end
  end
end
