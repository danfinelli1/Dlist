class Image < ApplicationRecord
  belongs_to :rent
  has_attached_file :photo, :styles => { :small => "150x150>", :large => "320x240>" }
  validates_attachment_presence :photo
  validates_attachment_size :photo, :less_than => 5.megabytes
end
