class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
        t.string    :username
        t.string    :password_digest
        t.string    :name
        t.string    :email
        t.text      :fun_fact

        t.timestamps
    end
  end
end
