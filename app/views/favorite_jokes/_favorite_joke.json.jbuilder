json.extract! favorite_joke, :id, :value, :icon_url, :joke_id, :url, :created_at, :updated_at
json.url favorite_joke_url(favorite_joke, format: :json)
