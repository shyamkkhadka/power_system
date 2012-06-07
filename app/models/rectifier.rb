class Rectifier < ActiveRecord::Base
	belongs_to :station
	validates :model_no, :presence => true
  validates :modules_no, :numericality => true
  
  belongs_to :station
end

