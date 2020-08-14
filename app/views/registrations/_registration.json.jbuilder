json.extract! registration, :id, :car_id, :expire_date, :created_at, :updated_at
json.url registration_url(registration, format: :json)
