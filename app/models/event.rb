class Event < ApplicationRecord
  has_many :jointables, dependent: :destroy
  has_many :users, through: :jointables
  has_many :pictures
end
