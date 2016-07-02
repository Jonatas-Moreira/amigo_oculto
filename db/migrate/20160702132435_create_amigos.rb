class CreateAmigos < ActiveRecord::Migration
  def change
    create_table :amigos do |t|
      t.string :nome
      t.string :email

      t.timestamps null: false
    end
  end
end
