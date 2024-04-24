class AddNuevosCamposToTabla < ActiveRecord::Migration[7.1]
  def change
    add_column :exploracion_fisicas, :patron_movimiento1, :string
    add_column :exploracion_fisicas, :patron_movimiento2, :string
    add_column :exploracion_fisicas, :patron_movimiento3, :string
    add_column :exploracion_fisicas, :patron_movimiento4, :string
    add_column :exploracion_fisicas, :patron_movimiento5, :string
    add_column :exploracion_fisicas, :patron_movimiento6, :string
    add_column :exploracion_fisicas, :patron_movimiento7, :string
    add_column :exploracion_fisicas, :patron_movimiento8, :string
    add_column :exploracion_fisicas, :patron_movimiento9, :string
    add_column :exploracion_fisicas, :patron_movimiento10, :string
    add_column :exploracion_fisicas, :patron_movimiento11, :string
    add_column :exploracion_fisicas, :patron_movimiento12, :string
    add_column :exploracion_fisicas, :patron_movimiento13, :string
    add_column :exploracion_fisicas, :patron_movimiento14, :string
    add_column :exploracion_fisicas, :evaluacion_patron_funcional1, :integer
    add_column :exploracion_fisicas, :evaluacion_patron_funcional2, :integer
    add_column :exploracion_fisicas, :evaluacion_patron_funcional3, :integer
    add_column :exploracion_fisicas, :evaluacion_patron_funcional4, :integer
    add_column :exploracion_fisicas, :evaluacion_patron_funcional5, :integer
    add_column :exploracion_fisicas, :evaluacion_patron_funcional6, :integer
    add_column :exploracion_fisicas, :evaluacion_patron_funcional7, :integer
    add_column :exploracion_fisicas, :evaluacion_patron_funcional8, :integer
    add_column :exploracion_fisicas, :evaluacion_patron_funcional9, :integer
    add_column :exploracion_fisicas, :evaluacion_patron_funcional10, :integer
    add_column :exploracion_fisicas, :evaluacion_patron_funcional11, :integer
    add_column :exploracion_fisicas, :evaluacion_patron_funcional12, :integer
    add_column :exploracion_fisicas, :evaluacion_patron_funcional13, :integer
    add_column :exploracion_fisicas, :evaluacion_patron_funcional14, :integer

  end
end
