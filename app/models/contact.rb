class Contact < ActiveRecord::Base

validates :name, :email, :message, presence: true

validates :email, format: { with: /\A[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}\z/i }

validates :message, length: { maximum: 500 }

end