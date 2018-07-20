class AddUserToPictures < ActiveRecord::Migration[5.1]
  def change
    add_reference :pictures, :user
  end
end
