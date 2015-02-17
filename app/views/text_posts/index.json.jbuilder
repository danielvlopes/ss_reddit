json.array!(@text_posts) do |text_post|
  json.extract! text_post, :id
  json.url text_post_url(text_post, format: :json)
end
