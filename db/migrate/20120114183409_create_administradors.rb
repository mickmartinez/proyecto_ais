class CreateAdministradors < ActiveRecord::Migration
  def change
    create_table :administradors do |t|
      t.Usuario :belongs_to

      t.timestamps
    end
  end
end
