class Multa < ApplicationRecord
  belongs_to :usuario
  has_paper_trail
end
