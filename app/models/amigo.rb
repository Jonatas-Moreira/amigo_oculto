class Amigo < ActiveRecord::Base
  validates :nome, presence: true
  validates :email, format: /[a-z|0-9]+@[a-z|0-9]+\.[a-z]/
  validates :email, :uniqueness => {:scope => :sorteio_id}

  belongs_to :sorteio

  def self.sorteio
    participantes  = Amigo.all
    sorteio = participantes.shuffle
    resultado = {}
    sorteio.inject {|item, proximo| resultado[item] = proximo }
    resultado[sorteio.last] = sorteio.first
    resultado
  end
end
