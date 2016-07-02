class Aviso < ApplicationMailer
  default :from => 'mensagem.automatica@castroebarros.net' 

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.aviso.sorteio.subject
  #
  def sorteio(quem_tirou, quem_foi_tirado)
    @quem_tirou = quem_tirou
    @quem_foi_tirado = quem_foi_tirado

    mail to: quem_tirou.email, subject: 'Amigo Oculto'
  end
end
