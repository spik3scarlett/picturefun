class AddIndexToPicturesName < ActiveRecord::Migration[5.1]
  def change
    add_index :pictures, :name, unique: true
  end
end
