class ChangeClassToBootstrapClass < ActiveRecord::Migration[7.0]
  def change
    rename_column :icons, :class, :bootstrap_class
  end
end
