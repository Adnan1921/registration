class AddUseridToPartners < ActiveRecord::Migration[6.0]
  def change
    add_column :partners, :user_id, :string
  end
end
