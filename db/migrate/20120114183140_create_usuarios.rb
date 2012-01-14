class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :servicio
      t.string :tipo_profesional
      t.string :codigo_profesional
      t.string :nombre_usuario
      t.string :contrasena

      t.timestamps
    end
  end
end
