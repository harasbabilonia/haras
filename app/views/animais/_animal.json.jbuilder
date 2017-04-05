json.extract! animal, :id, :nome, :sexo, :pelagem, :data_nascimento, :created_at, :updated_at
json.url animal_url(animal, format: :json)
