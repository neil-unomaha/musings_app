json.extract! post, :id, :title, :author_id, :medium_id, :reference, :created_at, :updated_at
json.url post_url(post, format: :json)
