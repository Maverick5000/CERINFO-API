class Libro < ApplicationRecord
  belongs_to :autor, optional: true
  belongs_to :genero, optional: true
  belongs_to :idioma, optional: true
  belongs_to :material, optional: true
  belongs_to :sigtop, optional: true
  belongs_to :editorial, optional: true
  has_paper_trail
end
