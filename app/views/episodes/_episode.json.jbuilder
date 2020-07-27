json.extract! episode, :id, :title, :description, :video, :audio, :created_at, :updated_at
json.url episode_url(episode, format: :json)
