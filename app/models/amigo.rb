class Amigo < ActiveRecord::Base
  def self.sorteio
    participantes  = Amigo.all
    sorteio = participantes.shuffle
    resultado = {}
    sorteio.inject {|item, proximo| resultado[item] = proximo }
    resultado[sorteio.last] = sorteio.first
    resultado
  end
end
