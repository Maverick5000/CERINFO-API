class Libro < ApplicationRecord
  belongs_to :autor, foreign_key: :autor
  belongs_to :genero, foreign_key: :genero
  belongs_to :idioma, foreign_key: :idioma
  belongs_to :material, foreign_key: :material
  belongs_to :sigtop, foreign_key: :sigtop
  belongs_to :editorial, foreign_key: :editorial
  has_paper_trail
end
