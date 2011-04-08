class CreateGenerators < ActiveRecord::Migration
  def self.up
    create_table :generators do |t|
      t.string :genset_name
      t.string :model_no
      t.string :alternator_no
      t.string :engine_no
      t.string :capacity
      t.date :installed_date
      t.string :installation_team
      t.text :comment
      t.integer :station_id

      t.timestamps
    end
  end

  def self.down
    drop_table :generators
  end
end
