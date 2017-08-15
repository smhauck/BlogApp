json.extract! post, :id, :title, :body, :public, :publish_date, :blog_id, :user_id, :created_at, :updated_at
json.url post_url(post, format: :json)
