class CreateFaultHistories < ActiveRecord::Migration
  def self.up
    create_table :fault_histories do |t|
      t.string :problem
      t.string :alarm
      t.text :comments
      t.date :fault_history_date
      t.integer :ac_id
		
      t.timestamps
    end
  end

  def self.down
    drop_table :fault_histories
  end
end
