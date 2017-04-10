class AddDataEntradaToVendas < ActiveRecord::Migration[5.0]
  def change
    add_column :vendas, :data_entrada, :date
  end
end
