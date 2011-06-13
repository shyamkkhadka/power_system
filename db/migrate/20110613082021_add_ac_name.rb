class AddAcName < ActiveRecord::Migration
  def self.up
  	add_column :acs, :name, :string
  end

  def self.down
  	remove_column :acs, :name
  end
end
