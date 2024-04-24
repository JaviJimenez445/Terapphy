class CreateTherapists < ActiveRecord::Migration[7.1]
  def change
    create_table :therapists do |t|
      t.integer :numero_identificacion
      t.string :nombres
      t.string :apellidos
      t.integer :telefono
      t.string :correo_electronico
      t.string :contraseña

      t.timestamps
    end
  end
end
