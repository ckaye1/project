json.extract! trip, :id, :to, :from, :date, :ltime, :seats, :fare, :user_id, :created_at, :updated_at
json.url trip_url(trip, format: :json)
