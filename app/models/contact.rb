class Contact < ActiveRecord::Base
=begin
validates :name, presence: true
validates :email, presence: true
validates :message, presence: true
validates :email, format: { with: /\A[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}\z/i}
validates :message, length: { maximum: 500 }
=end
end