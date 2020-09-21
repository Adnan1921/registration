class AddEmailToPartners < ActiveRecord::Migration[6.0]
  def change
    add_column :partners, :email, :text
  end
end
