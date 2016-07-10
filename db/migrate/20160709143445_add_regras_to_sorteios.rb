class AddRegrasToSorteios < ActiveRecord::Migration[5.0]
  def change
    add_column :sorteios, :regras, :text
  end
end
