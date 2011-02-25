class CreateUps < ActiveRecord::Migration
  def self.up
    create_table :ups do |t|
      t.string :model_no
      t.string :capacity
      t.date :installed_date
      t.string :installation_team
      t.integer :input_ac_voltage
      t.text :comment

      t.timestamps
    end
  end

  def self.down
    drop_table :ups
  end
end
