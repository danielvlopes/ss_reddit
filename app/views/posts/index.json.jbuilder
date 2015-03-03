json.array!(@posts) do |post|
<<<<<<< HEAD
  json.extract! post, :id, :title, :url, :text, :thumbnail_url, :user_id
=======
  json.extract! post, :id, :title
>>>>>>> daniel
  json.url post_url(post, format: :json)
end
