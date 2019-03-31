class Prestamo < ApplicationRecord
  belongs_to :libro
  belongs_to :usuario
end
