class RenameContentToContentLink < ActiveRecord::Migration[7.0]
  def change
    rename_column :socials, :content, :content_link
  end
end
