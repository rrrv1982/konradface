class CreateRelations < ActiveRecord::Migration[5.2]
  def change
    create_table :relations do |t|
      t.boolean :allowed_name
      t.boolean :allowed_surname
      t.boolean :allowed_email
      t.boolean :allowed_telephone
      t.boolean :allowed_date

      t.timestamps
    end
  end
end
