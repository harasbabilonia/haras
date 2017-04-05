json.extract! parcela, :id, :venda_id, :numero, :data_vencimento, :data_pagamento, :valor, :created_at, :updated_at
json.url parcela_url(parcela, format: :json)
