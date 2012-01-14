class CreateTaquilleros < ActiveRecord::Migration
  def change
    create_table :taquilleros do |t|
      t.Usuario :belongs_to

      t.timestamps
    end
  end
end
