class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :avatar_url
      t.string :last_name
      t.string :first_name
      t.string :email
      t.integer :promotion
      t.integer :school_id

      t.timestamps null: false
    end

    add_index :users, :school_id
  end
end
