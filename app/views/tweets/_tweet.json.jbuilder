json.extract! tweet, :id, :description, :user_name, :url_image, :created_at, :updated_at
json.url tweet_url(tweet, format: :json)
