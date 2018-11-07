class RenameColumninRooms < ActiveRecord::Migration[5.2]
  def change
    rename_column :lists, :title, :list_title
  end
end
