json.array!(@sorteios) do |sorteio|
  json.extract! sorteio, :id, :descricao
  json.url sorteio_url(sorteio, format: :json)
end
