class CreateEstoques < ActiveRecord::Migration[6.0]
  def change
    create_table :estoques do |t|
      t.string :nome
      t.string :data_criacao
      t.references :produtos, null: false, foreign_key: true
      t.string :categoria
      t.float :valor_total
      t.integer :peso
      t.string :data_validade

      t.timestamps
    end
  end
end
