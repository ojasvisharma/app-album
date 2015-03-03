class RemoveTimeAtfromUsers < ActiveRecord::Migration
  def change
    remove_column :albums, :time_at
  end
end
