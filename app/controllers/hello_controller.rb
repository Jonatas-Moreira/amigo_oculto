class HelloController < ApplicationController
  def world
    @nome = params[:nome]
    @amigos = Amigo.all
  end

  def sortear
    @resultado = Amigo.sorteio 

    @resultado.each do |quem_tirou, quem_foi_tirado| 
      Aviso.sorteio(quem_tirou, quem_foi_tirado).deliver
    end
  end
end
