class AddStationIdBattery < ActiveRecord::Migration
  def self.up
  	add_column :batteries, :station_id, :integer
  	add_column :rectifiers, :station_id, :integer
  	add_column :ups, :station_id, :integer
  end

  def self.down
  	remove_column :batteries, :station_id
  	remove_column :rectifiers, :station_id
  	remove_column :ups, :station_id
  end
end
