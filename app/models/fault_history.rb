class FaultHistory < ActiveRecord::Base
	belongs_to :ac, :dependent => :destroy
	validates :problem, :presence => true
end
