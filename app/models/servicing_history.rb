class ServicingHistory < ActiveRecord::Base
	belongs_to :generator
	
	validates :hour_meter_reading , :numericality => true
	validates :changed_part_quantity , :numericality => true
	
end
