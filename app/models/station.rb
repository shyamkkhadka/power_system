class Station < ActiveRecord::Base
  validates_presence_of :name
	has_many :batteries,  :dependent => :destroy 
  has_many :rectifiers,  :dependent => :destroy 
	has_many :ups,  :dependent => :destroy 
	has_many :generators,  :dependent => :destroy 
	has_many :acs, :dependent => :destroy
end
