class AddIconToSocials < ActiveRecord::Migration[7.0]
  def change
    add_reference :socials, :icon, foreign_key: true
  end
end
