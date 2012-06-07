class CreateAcs < ActiveRecord::Migration
  def self.up
    create_table :acs do |t|
      t.string :ac_type
      t.string :phase
      t.integer :input_voltage
      t.date :installed_date
      t.string :installed_team
      t.string :compressor_type
      t.string :gas_type
      t.text :comments
      t.integer :station_id

      t.timestamps
    end
  end

  def self.down
    drop_table :acs
  end
end
