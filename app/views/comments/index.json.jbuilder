json.array!(@comments) do |comment|
  json.extract! comment, :id, :permalink, :text, :user_id
  json.url comment_url(comment, format: :json)
end
