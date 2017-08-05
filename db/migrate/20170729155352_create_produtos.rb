class CreateProdutos < ActiveRecord::Migration[5.1]
  def change
    create_table :produtos do |t|
      t.string :nome
      t.string :tipo
      t.string :descricao
      t.timestamps
    end
  end
end
