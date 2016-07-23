class AddSorteioIdToAmigos < ActiveRecord::Migration[5.0]
  def change
    add_reference :amigos, :sorteio, foreign_key: true
  end
end
