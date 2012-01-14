class CreateMedicos < ActiveRecord::Migration
  def change
    create_table :medicos do |t|
      t.Usuario :belongs_to

      t.timestamps
    end
  end
end
