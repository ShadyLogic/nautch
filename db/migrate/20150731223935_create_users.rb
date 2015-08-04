class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_hash
      t.string :email
      t.string :session

      t.string :first_name
      t.string :last_name
      t.string :profile_image_url
      t.string :height
      t.string :weight
      t.string :hair_color
      t.string :eye_color
      t.string :skin_color
      t.string :sign
      t.date :birthday

      t.timestamps
    end
    add_index :users, :username, unique: true
    add_index :users, :email, unique: true
  end
end
