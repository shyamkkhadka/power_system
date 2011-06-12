class ChangeDataTypeServicingDate < ActiveRecord::Migration
  def self.up
  	change_table :servicing_histories do |t|
    	t.change :servicing_date, :date
    end
  end

  def self.down
    change_table :servicing_histories do |t|
    	t.change :servicing_date, :datetime
    end
  end
end
