class CreateIcons < ActiveRecord::Migration[7.0]
  def change
    create_table :icons do |t|
      t.string :page
      t.string :name
      t.string :class

      t.timestamps
    end
  end
end
