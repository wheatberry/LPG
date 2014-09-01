class User < ActiveRecord::Base
	has_secure_password
	validates :password, presence: true,
	:on => :create
	has_many :scores

end
