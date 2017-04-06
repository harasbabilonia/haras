class AddValorPagoToParcelas < ActiveRecord::Migration[5.0]
  def change
    add_column :parcelas, :valor_pago, :float
    add_column :parcelas, :status, :integer
  end
end
