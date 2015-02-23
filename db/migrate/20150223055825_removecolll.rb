class Removecolll < ActiveRecord::Migration
  def change
    remove_column :users, :role
    remove_column :users, :roles_mask
  end
end
