class CreateRectifiers < ActiveRecord::Migration
  def self.up
    create_table :rectifiers do |t|
      t.string :model_no
      t.string :capacity
      t.integer :modules_no
      t.string :module_capacity
      t.date :installed_date
      t.string :installation_team
      t.integer :input_ac_voltage
      t.text :comment

      t.timestamps
    end
  end

  def self.down
    drop_table :rectifiers
  end
end
