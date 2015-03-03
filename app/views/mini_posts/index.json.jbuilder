json.array!(@mini_posts) do |mini_post|
  json.extract! mini_post, :id, :content, :user_id
  json.url mini_post_url(mini_post, format: :json)
end
