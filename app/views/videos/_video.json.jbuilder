json.extract! video, :id, :hoja_paciente_id, :nombre_video, :created_at, :updated_at
json.url video_url(video, format: :json)
