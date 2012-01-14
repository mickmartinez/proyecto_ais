class CreateHistoriaMedicas < ActiveRecord::Migration
  def change
    create_table :historia_medicas do |t|
      t.integer :numero_expediente

      t.timestamps
    end
  end
end
