class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name
      t.text :description
      t.string :isbn
      t.integer :price
      t.date :date_acq

      t.timestamps null: false
    end
  end
end
