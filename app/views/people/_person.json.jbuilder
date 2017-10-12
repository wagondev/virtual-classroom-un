json.extract! person, :id, :nident, :name, :administrator, :isStudent, :owner, :gender, :career, :city, :aboutme, :created_at, :updated_at
json.url person_url(person, format: :json)
