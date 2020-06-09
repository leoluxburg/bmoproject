json.extract! lecture, :id, :title, :description, :number, :content, :created_at, :updated_at
json.url lecture_url(lecture, format: :json)
