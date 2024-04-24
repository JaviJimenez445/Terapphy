json.extract! paciente, :id, :numero_identificacion, :nombres, :apellidos, :telefono, :correo_electronico, :contraseña, :edad, :tipo_sangre, :eps, :ocupacion, :created_at, :updated_at
json.url paciente_url(paciente, format: :json)
