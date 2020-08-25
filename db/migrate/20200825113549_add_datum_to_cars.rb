class AddDatumToCars < ActiveRecord::Migration[6.0]
  def change
    add_column :cars, :datum, :string
  end
end
