class HojaPaciente < ApplicationRecord
 belongs_to :paciente, foreign_key: 'numero_identificacion_paciente'
 has_many :exploracion_fisicas, dependent: :destroy
 has_many :videos, dependent: :destroy
 accepts_nested_attributes_for :videos, allow_destroy: true
 accepts_nested_attributes_for :exploracion_fisicas, allow_destroy: true
end
