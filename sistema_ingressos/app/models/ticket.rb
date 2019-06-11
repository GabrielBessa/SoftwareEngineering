class Ticket < ApplicationRecord
  belongs_to :ticket_type
  belongs_to :user
  belongs_to :presentation_room
  has_many :buy_ticket
end
