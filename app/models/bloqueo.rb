class Bloqueo < ApplicationRecord
  belongs_to :usuario
  has_paper_trail
end
