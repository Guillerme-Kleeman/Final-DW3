class Marca < ApplicationRecord
    validates :nombre, uniqueness: true
end
