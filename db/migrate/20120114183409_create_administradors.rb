class CreateAdministradors < ActiveRecord::Migration
  def change
    create_table :administradors do |t|
      t.references :usuario
      t.timestamps
    end
  end
end
