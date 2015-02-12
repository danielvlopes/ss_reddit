json.array!(@posts) do |post|
  json.extract! post, :id, :title, :url, :text, :created_at, :thumbnail_url, :user_id, :votes
  json.url post_url(post, format: :json)
end
