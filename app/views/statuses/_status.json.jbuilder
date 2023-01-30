json.extract! status, :id, :name, :color, :resolved?, :created_at, :updated_at
json.url status_url(status, format: :json)
