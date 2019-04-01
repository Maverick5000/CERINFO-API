class Libro < ApplicationRecord
  belongs_to :autor
  belongs_to :genero
  belongs_to :idioma
  belongs_to :material
  belongs_to :sigtop
  belongs_to :editorial
  has_paper_trail
end
