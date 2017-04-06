class AddDiaVencimentoToVenda < ActiveRecord::Migration[5.0]
  def up
    add_column :vendas, :data_primeiro_vencimento, :date
  end

  def down
    remove_column :vendas, :data_primeiro_vencimento
  end
end
