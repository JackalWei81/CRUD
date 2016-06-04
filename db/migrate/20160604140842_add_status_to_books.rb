class AddStatusToBooks < ActiveRecord::Migration
  def change
    add_column :books, :date_public, :datetime
  end
end
