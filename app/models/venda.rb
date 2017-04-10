class Venda < ApplicationRecord
    belongs_to :tipo_venda
    belongs_to :cliente
    belongs_to :animal
    has_many :parcelas, :dependent => :restrict_with_error

    before_create :gerar_parcelas

    def gerar_parcelas
      valor_parcela = self.valor / self.n_parcelas
      valor_parcela = valor_parcela.round(2)
      vencimento = self.data_primeiro_vencimento

      if self.valor_entrada > 0 then
        p = Parcela.new
        p.numero = 0
        p.valor = self.valor_entrada
        p.data_vencimento = self.data_entrada
        self.parcelas << p
      end

      for i in 1..self.n_parcelas do
        p = Parcela.new
        p.numero = i
        p.valor = valor_parcela
        p.data_vencimento = vencimento
        self.parcelas << p
        vencimento = vencimento + 1.month
      end
    end
end
