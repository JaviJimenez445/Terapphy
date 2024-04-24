json.extract! hoja_paciente, :id, :numero_identificacion_paciente, :fecha, :cif, :objetivos_terapeuticos, :duracion_plan_trabajo, :created_at, :updated_at
json.url hoja_paciente_url(hoja_paciente, format: :json)
