class CreateSorteios < ActiveRecord::Migration[5.0]
  def change
    create_table :sorteios do |t|
      t.string :descricao

      t.timestamps
    end
  end
end
