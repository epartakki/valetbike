class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
        # t.integer   :identifier, auto_increment: true, null: false
        t.string    :username
        t.string    :password
        t.string    :name
        t.string    :email

        t.timestamps
    end
    # change_column :users, :identifier, :int, null: false, unique: true, auto_increment: true
    # add_index :users, :name, :unique => true
  end
end
