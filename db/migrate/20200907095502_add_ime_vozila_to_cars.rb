class AddImeVozilaToCars < ActiveRecord::Migration[6.0]
  def change
    add_column :cars, :ime_vozila, :string
  end
end
