class AddTimeToalbums < ActiveRecord::Migration
  def change
    add_column :albums, :time_at, :datetime
  end
end
