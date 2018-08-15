class CreateEntries < ActiveRecord::Migration[5.2]
  def change
    create_table :entries do |t|
      t.integer :id_entry
      t.string :text
      t.timestamp :date

      t.timestamps
    end
  end
end
