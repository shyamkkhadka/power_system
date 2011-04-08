class CreateServicingHistories < ActiveRecord::Migration
  def self.up
    create_table :servicing_histories do |t|
      t.datetime :servicing_date
      t.string :hour_meter_reading
      t.string :servicing_type
      t.string :changed_part_no
      t.integer :changed_part_quantity
      t.text :description
      t.integer :generator_id

      t.timestamps
    end
  end

  def self.down
    drop_table :servicing_histories
  end
end
