class Battery < ActiveRecord::Base
	validates :model_no, :presence => true
        #:uniqueness => true
        validates :cells_no , :numericality => true
	
	belongs_to :station
end
