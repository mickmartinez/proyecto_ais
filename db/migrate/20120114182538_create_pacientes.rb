class CreatePacientes < ActiveRecord::Migration
  def change
    create_table :pacientes do |t|
      t.integer :numero_expediente
      t.date :fecha_nacimiento
      t.string :lugar_nacimiento
      t.string :nombre_padre
      t.string :nombre_madre
      t.char :seguro_social
      t.string :provincia
      t.string :distrito
      t.string :corregimiento
      t.string :nombre_urgencias
      t.string :parentesco
      t.integer :telefonourgencias

      t.timestamps
    end
  end
end
