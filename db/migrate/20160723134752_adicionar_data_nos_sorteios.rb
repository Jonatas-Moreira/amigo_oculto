class AdicionarDataNosSorteios < ActiveRecord::Migration[5.0]
  def change
    add_column :sorteios, :data, :date
  end
end
