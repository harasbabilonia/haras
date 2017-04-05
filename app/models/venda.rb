class Venda < ApplicationRecord
    belongs_to :tipo_venda
    belongs_to :cliente
    belongs_to :animal
end
