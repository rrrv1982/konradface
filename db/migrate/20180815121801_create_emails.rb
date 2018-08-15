class CreateEmails < ActiveRecord::Migration[5.2]
  def change
    create_table :emails do |t|
      t.integer :id_email
      t.string :email

      t.timestamps
    end
  end
end
