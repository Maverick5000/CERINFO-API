class Autor < ApplicationRecord
    has_paper_trail
    has_many :libro
end
