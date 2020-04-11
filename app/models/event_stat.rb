class EventStat < ApplicationRecord
  belongs_to :event
  before_validation :quantity_is_available, on: [ :create, :update ]

  def quantity_is_available
    if self.attendance + 1 > self.event.event_venue.capacity
      self.errors.add(" - Please order only what's available")
    end
  end


end
