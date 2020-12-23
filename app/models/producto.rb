class Producto < ApplicationRecord
    belongs_to :marca
    belongs_to :rubro
end
