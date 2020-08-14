class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.text :partner_id
      t.text :name
      t.text :phone

      t.timestamps
    end
  end
end
