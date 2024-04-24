class CreateExploracionFisicas < ActiveRecord::Migration[7.1]
  def change
    create_table :exploracion_fisicas do |t|
      t.references :hoja_paciente, null: false, foreign_key: true
      t.string :patron_movimiento
      t.integer :evaluacion_patron_funcional

      t.timestamps
    end
  end
end
