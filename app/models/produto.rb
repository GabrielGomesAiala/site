class Produto < ApplicationRecord

  has_attached_file :imagem, styles: { medium: "800x800>", thumb: "200x200>" }, default_url: "/images/:style/missing.png"
  validates_attachment :imagem, presence: true,  content_type: { content_type: "image/jpeg" }
  has_many :fotos  

end
