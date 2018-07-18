json.extract! post, :id, :title, :introduction, :content, :author, :publishDate, :created_at, :updated_at
json.url post_url(post, format: :json)
