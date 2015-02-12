json.array!(@comments) do |comment|
  json.extract! comment, :id, :permalink, :text, :user_id, :votes, :created_at
  json.url comment_url(comment, format: :json)
end
