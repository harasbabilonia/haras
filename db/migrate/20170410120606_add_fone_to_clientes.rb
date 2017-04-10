class AddFoneToClientes < ActiveRecord::Migration[5.0]
  def change
    add_column :clientes, :fone, :string
    add_column :clientes, :email, :string
    add_column :clientes, :zap, :string
  end
end
