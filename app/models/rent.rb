class Rent < ApplicationRecord

  has_many :images, :dependent => :destroy
  accepts_nested_attributes_for :images, :reject_if => lambda { |t| t['image'].nil? }

end
