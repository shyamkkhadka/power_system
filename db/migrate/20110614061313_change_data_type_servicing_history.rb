class ChangeDataTypeServicingHistory < ActiveRecord::Migration
  def self.up
  	change_column :servicing_histories,:changed_part_no, :text, :limit => 2000
  	change_column :servicing_histories,:changed_part_quantity, :text  
  end

  def self.down
  	change_column :servicing_histories,:changed_part_quantity, :text, :limit => 2000 
  	change_column :servicing_histories,:changed_part_quantity, :integer  
  end
end
