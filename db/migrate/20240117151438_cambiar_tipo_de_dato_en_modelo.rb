class CambiarTipoDeDatoEnModelo < ActiveRecord::Migration[7.1]
  def change
  end
end


class CambiarTipoDeDatoEnModelo < ActiveRecord::Migration[7.1]
  def change
    change_column :pacientes, :telefono, :bigint
  end
  def change
      change_column :hoja_pacientes, :numero_identificacion_paciente, :bigint
    end
  def change
      change_column :hoja_pacientes, :duracion_plan_trabajo, :bigint
    end
  def change
      change_column :pacientes, :numero_identificacion, :bigint
    end
    def change
      change_column :therapists, :numero_identificacion, :bigint
    end
  def change
      change_column :therapists, :telefono, :bigint
    end
end