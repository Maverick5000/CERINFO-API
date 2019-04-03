class Usuario < ApplicationRecord
    has_paper_trail
    has_many :bloqueo
    has_many :prestamo
    has_many :multa
end
