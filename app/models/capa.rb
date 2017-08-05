class Capa < ApplicationRecord

  has_attached_file :imagem, styles: { medium: "1600x600>", thumb: "960x270>" }, default_url: "/images/:style/missing.png"
  validates_attachment :imagem, presence: true,  content_type: { content_type: "image/jpeg" }

end
