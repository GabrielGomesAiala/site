class AddColunaDestaque < ActiveRecord::Migration[5.1]
  def change
    change_table :produtos do |t|
      t.boolean :destaque
    end
  end
end
