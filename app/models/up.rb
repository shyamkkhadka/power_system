class Up < ActiveRecord::Base
		belongs_to :station
		validates :model_no, :presence => true
		validates :capacity, :presence => true
end
