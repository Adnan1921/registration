json.extract! user, :id, :partner_id, :name, :phone, :created_at, :updated_at
json.url user_url(user, format: :json)
