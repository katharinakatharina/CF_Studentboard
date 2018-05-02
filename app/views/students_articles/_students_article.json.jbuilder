json.extract! students_article, :id, :blog_id, :user_id, :date, :blog_text, :blog_title, :user_img, :blog_link, :blog_img, :blog_upload, :created_at, :updated_at
json.url students_article_url(students_article, format: :json)
