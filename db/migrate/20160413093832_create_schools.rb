class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :name
      t.integer :jt_id

      t.timestamps null: false
    end

    add_index :schools, :jt_id
  end
end
