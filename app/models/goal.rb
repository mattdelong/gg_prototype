class Goal < ActiveRecord::Base
  attr_accessible :title,
  					:start_date,
  					:end_date


  belongs_to  	:user
  has_many		:steps
  accepts_nested_attributes_for :steps

  validates		:title, :presence => true
  validates		:start_date, :presence => true
  validates		:end_date,	 :presence => true
  
end
