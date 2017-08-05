class RenameImageToFotos < ActiveRecord::Migration[5.1]
  def self.up
    rename_table :images, :fotos
  end

  def self.down
    rename_table :fotos, :images
  end
end
