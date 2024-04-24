class CambiarTipoDeDatoEnModelos < ActiveRecord::Migration[7.1]
  def change
    change_column :pacientes, :telefono, :bigint
    change_column :hoja_pacientes, :numero_identificacion_paciente, :bigint
    change_column :hoja_pacientes, :duracion_plan_trabajo, :bigint
    change_column :pacientes, :numero_identificacion, :bigint
    change_column :therapists, :numero_identificacion, :bigint    
  end
end