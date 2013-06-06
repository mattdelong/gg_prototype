class Steps < ActiveRecord::Base
  attr_accessible 	:status, 
  					:step_title

  belongs_to	:goal
end
