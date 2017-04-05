class CreateParcelas < ActiveRecord::Migration[5.0]
  def change
    create_table :parcelas do |t|
      t.references :venda, foreign_key: true
      t.integer :numero
      t.date :data_vencimento
      t.date :data_pagamento
      t.float :valor

      t.timestamps
    end
  end
end
