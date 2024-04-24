class CreateHojaPacientes < ActiveRecord::Migration[7.1]
  def change
    create_table :hoja_pacientes do |t|
      t.integer :numero_identificacion_paciente
      t.date :fecha
      t.string :cif
      t.string :objetivos_terapeuticos
      t.integer :duracion_plan_trabajo

      t.timestamps
    end
  end
end
