class Score < ActiveRecord::Base
  belongs_to :user
  has_many :distances

  accepts_nested_attributes_for :distances
end
