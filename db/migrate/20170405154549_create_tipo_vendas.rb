class CreateTipoVendas < ActiveRecord::Migration[5.0]
  def change
    create_table :tipo_vendas do |t|
      t.string :tipo

      t.timestamps
    end
  end
end
