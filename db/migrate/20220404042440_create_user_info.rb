class CreateUserInfo < ActiveRecord::Migration[6.1]
  def change
    create_table :user_infos do |t|
      
      add_column :users, :first_name, :string
      add_column :users, :last_name, :string
      add_column :users, :email, :string

      t.timestamps
    end
  end
end
