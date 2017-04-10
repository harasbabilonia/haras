class AddValorEntradaToVendas < ActiveRecord::Migration[5.0]
  def change
    add_column :vendas, :valor_entrada, :float
  end
end
