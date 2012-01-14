class CreateMedicos < ActiveRecord::Migration
  def change
    create_table :medicos do |t|
      t.references :usuario

      t.timestamps
    end
  end
end
