class CreateStations < ActiveRecord::Migration
  def self.up
    create_table :stations do |t|
      t.string :name
      t.string :zone
      t.string :district
      t.string :account_office
      t.string :maintenance_office
      t.string :type

      t.timestamps
    end
  end

  def self.down
    drop_table :stations
  end
end
