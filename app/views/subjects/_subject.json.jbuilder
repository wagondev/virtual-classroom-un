json.extract! subject, :id, :mid, :name, :description, :created_at, :updated_at
json.url subject_url(subject, format: :json)
