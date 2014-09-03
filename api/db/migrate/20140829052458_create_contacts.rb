class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :title

      t.timestamps
    end
    add_index :contacts, :email
    add_index :contacts, :first_name
    add_index :contacts, :last_name
  end
end
