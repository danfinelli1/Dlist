class Picture < ApplicationRecord
  belongs_to :rent
  belongs_to :event
  belongs_to :sale
end
