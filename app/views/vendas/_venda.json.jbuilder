json.extract! venda, :id, :tipo_venda_id, :cliente_id, :animal_id, :valor, :n_parcelas, :created_at, :updated_at
json.url venda_url(venda, format: :json)
