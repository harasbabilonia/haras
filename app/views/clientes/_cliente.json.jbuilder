json.extract! cliente, :id, :nome, :rg, :cpf, :endereco, :cidade, :estado, :created_at, :updated_at
json.url cliente_url(cliente, format: :json)
