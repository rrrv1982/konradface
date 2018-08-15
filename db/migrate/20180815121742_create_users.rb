class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.integer :id_user
      t.string :name
      t.string :surname
      t.timestamp :date

      t.timestamps
    end
  end
end
