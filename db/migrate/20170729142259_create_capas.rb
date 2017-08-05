class CreateCapas < ActiveRecord::Migration[5.1]
  def change
    create_table :capas do |t|
      t.string :descricao
      t.timestamps
    end
  end
end
