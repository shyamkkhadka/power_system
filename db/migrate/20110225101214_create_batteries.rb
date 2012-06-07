class CreateBatteries < ActiveRecord::Migration
  def self.up
    create_table :batteries do |t|
      t.string :model_no
      t.string :capacity
      t.integer :cells_no
      t.integer :banks_no
      t.date :installed_date
      t.string :installation_team
      t.text :comment

      t.timestamps
    end
  end

  def self.down
    drop_table :batteries
  end
end
