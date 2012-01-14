class CreateServicios < ActiveRecord::Migration
  def change
    create_table :servicios do |t|
      t.integer :codigo
      t.string :nombre

      t.timestamps
    end
  end
end
