class Sorteio < ApplicationRecord
  validates :descricao, presence: true
  validates :descricao, :uniqueness => true
  has_many :amigos, dependent: :destroy
  accepts_nested_attributes_for :amigos, :allow_destroy => true
end
