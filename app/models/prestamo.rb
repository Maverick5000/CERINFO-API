class Prestamo < ApplicationRecord
  belongs_to :libro
  belongs_to :usuario
  has_paper_trail
end
