class RemoveIconFromSocials < ActiveRecord::Migration[7.0]
  def change
    remove_column :socials, :icon, :string
  end
end
