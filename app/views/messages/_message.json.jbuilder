json.extract! message, :id, :member_id, :title, :body, :latutude, :longitude, :address, :meeting, :document, :type, :created_at, :updated_at
json.url message_url(message, format: :json)
