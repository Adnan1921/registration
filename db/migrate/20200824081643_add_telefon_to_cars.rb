class AddTelefonToCars < ActiveRecord::Migration[6.0]
  def change
    add_column :cars, :telefon, :text
  end
end
