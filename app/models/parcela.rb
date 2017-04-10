class Parcela < ApplicationRecord
  belongs_to :venda
  def numero_parcela
    self.numero == 0 ? 'Entrada' : self.numero
  end

end
