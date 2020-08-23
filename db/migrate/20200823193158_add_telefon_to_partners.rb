class AddTelefonToPartners < ActiveRecord::Migration[6.0]
  def change
    add_column :partners, :telefon, :text
  end
end
