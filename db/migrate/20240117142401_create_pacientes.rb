class CreatePacientes < ActiveRecord::Migration[7.1]
  def change
    create_table :pacientes do |t|
      t.integer :numero_identificacion
      t.string :nombres
      t.string :apellidos
      t.integer :telefono
      t.string :correo_electronico
      t.string :contraseña
      t.integer :edad
      t.string :tipo_sangre
      t.string :eps
      t.string :ocupacion

      t.timestamps
    end
  end
end
