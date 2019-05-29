json.extract! user, :id, :cpf, :name, :last_name, :birthdate, :email, :login, :password, :created_at, :updated_at
json.url user_url(user, format: :json)
