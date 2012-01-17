class CreatePersonas < ActiveRecord::Migration
  def change
    create_table :personas do |t|
      t.integer :persona_id
      t.string :primer_nombre
      t.string :segundo_nombre
      t.string :primer_apellido
      t.string :segundo_apellido
      t.string :sexo
      t.integer :telefono
      t.string :direccion

      t.timestamps
    end
  end
end
