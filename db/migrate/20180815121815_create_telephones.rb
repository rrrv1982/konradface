class CreateTelephones < ActiveRecord::Migration[5.2]
  def change
    create_table :telephones do |t|
      t.integer :id_telephone
      t.integer :number

      t.timestamps
    end
  end
end
