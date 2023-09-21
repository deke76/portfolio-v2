class AddUserNameToSocials < ActiveRecord::Migration[7.0]
  def change
    add_column :socials, :user_name, :string
  end
end
