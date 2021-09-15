json.extract! game_blog, :id, :name, :created_at, :updated_at
json.url game_blog_url(game_blog, format: :json)
