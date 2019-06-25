class Solicitud < ApplicationRecord
  belongs_to :usuario
  belongs_to :libro
  has_paper_trail
end
