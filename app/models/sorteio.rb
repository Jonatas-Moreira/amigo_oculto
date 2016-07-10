class Sorteio < ApplicationRecord
  validates :descricao, presence: true
  validates :descricao, :uniqueness => true
  has_many :amigos
end
