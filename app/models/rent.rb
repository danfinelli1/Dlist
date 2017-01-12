class Rent < ApplicationRecord
  belongs_to :user
  has_many :images, :dependent => :destroy
  accepts_nested_attributes_for :images, :reject_if => lambda { |t| t['trip_image'].nil? }
end
