class CreateSecretaria < ActiveRecord::Migration
  def change
    create_table :secretaria do |t|
      t.Usuario :belongs_to

      t.timestamps
    end
  end
end
