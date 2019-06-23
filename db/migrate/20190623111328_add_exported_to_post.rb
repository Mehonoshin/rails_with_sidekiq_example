class AddExportedToPost < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :exported, :boolean, default: false, null: false
  end
end
