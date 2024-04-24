json.extract! therapist, :id, :numero_identificacion, :nombres, :apellidos, :telefono, :correo_electronico, :contraseña, :created_at, :updated_at
json.url therapist_url(therapist, format: :json)
