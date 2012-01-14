class CreateTaquilleros < ActiveRecord::Migration
  def change
    create_table :taquilleros do |t|
      t.references :usuario
      

      t.timestamps
    end
  end
end
