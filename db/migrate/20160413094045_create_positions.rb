class CreatePositions < ActiveRecord::Migration
  def change
    create_table :positions do |t|
      t.integer :company_id
      t.integer :user_id
      t.string :title
      t.date :end_date

      t.timestamps null: false
    end

    add_index :positions, :company_id
    add_index :positions, :user_id
  end
end
