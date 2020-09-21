class AddImeVlasnikaToCars < ActiveRecord::Migration[6.0]
  def change
    add_column :cars, :ime_vlasnika, :string
  end
end
