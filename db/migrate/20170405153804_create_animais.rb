class CreateAnimais < ActiveRecord::Migration[5.0]
  def change
    create_table :animais do |t|
      t.string :nome
      t.string :sexo
      t.string :pelagem
      t.date :data_nascimento

      t.timestamps
    end
  end
end
