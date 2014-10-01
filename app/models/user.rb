class User < ActiveRecord::Base
	has_secure_password
	has_many :scores
	has_many :distances, through: :scores


validates :name, presence: true,
	uniqueness: true

end
