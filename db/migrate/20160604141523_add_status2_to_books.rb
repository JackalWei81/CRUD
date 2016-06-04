class AddStatus2ToBooks < ActiveRecord::Migration
  def change
    add_column :books, :email, :string
    add_column :books, :phone, :string
  end
end
