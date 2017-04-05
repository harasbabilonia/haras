class CreateClientes < ActiveRecord::Migration[5.0]
  def change
    create_table :clientes do |t|
      t.string :nome
      t.string :rg
      t.string :cpf
      t.string :endereco
      t.string :cidade
      t.string :estado

      t.timestamps
    end
  end
end
