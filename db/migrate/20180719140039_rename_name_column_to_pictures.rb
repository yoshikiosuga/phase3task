class RenameNameColumnToPictures < ActiveRecord::Migration[5.1]
  def change
    rename_column :pictures, :name, :title
  end
end
