class Ticket < ApplicationRecord
  belongs_to :order
  belongs_to :ticket_type

  # TODO: complete the folowing
  before_validation :update_stats, on: [ :create, :destroy ]

  private
    def update_stats
      es = self.ticket_type.event.event_stat
      es.attendance += 1
      # TODO: complete in order to update event stats
    end
end
