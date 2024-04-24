class CreateVideos < ActiveRecord::Migration[7.1]
  def change
    create_table :videos do |t|
      t.references :hoja_paciente, null: false, foreign_key: true
      t.string :nombre_video

      t.timestamps
    end
  end
end
