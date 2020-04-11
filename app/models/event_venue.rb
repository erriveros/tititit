class EventVenue < ApplicationRecord
  has_many :events
  validates :name, presence: true
  validates :address, presence: true
  validates :capacity, numericality: { greater_than: 9}



end
