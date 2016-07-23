module SorteiosHelper
  def campo_data(form, coluna)
    form.text_field coluna, class: 'form-control', type: :date
  end
  
end
