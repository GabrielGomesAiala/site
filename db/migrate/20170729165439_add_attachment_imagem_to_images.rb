class AddAttachmentImagemToImages < ActiveRecord::Migration[5.1]
  def self.up
    change_table :images do |t|
      t.attachment :imagem
    end
  end

  def self.down
    remove_attachment :images, :imagem
  end
end
