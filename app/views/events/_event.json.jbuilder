json.extract! event, :id, :title, :content, :scheduled, :resolved?, :resolved_time, :created_at, :updated_at
json.url event_url(event, format: :json)
