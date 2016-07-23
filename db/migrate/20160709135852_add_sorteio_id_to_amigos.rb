class AddSorteioIdToAmigos < ActiveRecord::Migration[5.0]
  def change
    add_reference :amigos, :sorteio, foreign_key: true
    add_column :amigos, :sorteio_id, :integer
  end
end
