json.extract! team, :id, :name, :max_member, :description, :logo, :created_at, :updated_at
json.url team_url(team, format: :json)
