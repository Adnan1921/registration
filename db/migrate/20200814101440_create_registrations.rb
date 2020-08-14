class CreateRegistrations < ActiveRecord::Migration[6.0]
  def change
    create_table :registrations do |t|
      t.string :car_id
      t.string :expire_date

      t.timestamps
    end
  end
end
