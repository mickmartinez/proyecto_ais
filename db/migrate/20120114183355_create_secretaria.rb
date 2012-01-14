class CreateSecretaria < ActiveRecord::Migration
  def change
    create_table :secretaria do |t|
      t.references :usuario

      t.timestamps
    end
  end
end
