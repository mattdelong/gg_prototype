class User < ActiveRecord::Base
  attr_accessible 	:email, 
  					:password, 
  					:password_confirmation, 
  					:username
  					
  has_secure_password
  has_many  :goals


  validates_presence_of :password, :on => :create


end
