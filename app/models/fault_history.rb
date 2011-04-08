class FaultHistory < ActiveRecord::Base
	belongs_to :ac, :dependent => :destroy
end
