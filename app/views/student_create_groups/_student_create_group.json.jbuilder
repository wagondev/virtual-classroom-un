json.extract! student_create_group, :id, :nombre, :maxIntegrantes, :descripcion, :created_at, :updated_at
json.url student_create_group_url(student_create_group, format: :json)
