class Paciente < ApplicationRecord
    has_many :hojas_pacientes, class_name: 'HojaPaciente'
    has_many :exploraciones_fisicas, through: :hojas_pacientes
end
