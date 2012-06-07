class Ac < ActiveRecord::Base
	belongs_to :station
	has_many :fault_histories
	validates :input_voltage, :numericality => true
end
