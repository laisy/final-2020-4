json.extract! estoque, :id, :nome, :data_criacao, :produtos_id, :categoria, :valor_total, :peso, :data_validade, :created_at, :updated_at
json.url estoque_url(estoque, format: :json)
