json.extract! user, :id, :id_user, :name, :surname, :date, :created_at, :updated_at
json.url user_url(user, format: :json)
