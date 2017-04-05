class CreateVendas < ActiveRecord::Migration[5.0]
  def change
    create_table :vendas do |t|
      t.references :tipo_venda, foreign_key: true
      t.references :cliente, foreign_key: true
      t.references :animal, foreign_key: true
      t.float :valor
      t.integer :n_parcelas

      t.timestamps
    end
  end
end
