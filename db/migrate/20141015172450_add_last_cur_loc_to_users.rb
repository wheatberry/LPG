class AddLastCurLocToUsers < ActiveRecord::Migration
  def change
    add_column :users, :last_cur_loc, :string
  end
end
