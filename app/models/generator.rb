class Generator < ActiveRecord::Base
	validates :genset_name, :presence => true
  validates :model_no , :presence => true
  validates :capacity , :presence => true
  
	belongs_to :station
	has_many :servicing_histories, :dependent => :destroy 
end
