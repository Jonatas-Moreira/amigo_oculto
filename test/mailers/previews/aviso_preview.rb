# Preview all emails at http://localhost:3000/rails/mailers/aviso
class AvisoPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/aviso/sorteio
  def sorteio
    Aviso.sorteio
  end

end
