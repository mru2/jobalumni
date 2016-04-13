class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.integer :jt_id

      t.timestamps null: false
    end

    add_index :companies, :jt_id
  end
end
