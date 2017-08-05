class AddAttachmentImagemToCapas < ActiveRecord::Migration[5.1]
  def self.up
    change_table :capas do |t|
      t.attachment :imagem
    end
  end

  def self.down
    remove_attachment :capas, :imagem
  end
end
