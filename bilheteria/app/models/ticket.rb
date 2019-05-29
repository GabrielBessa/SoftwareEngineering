class Ticket < ApplicationRecord
  belongs_to :user # N fiz a model ticket_type, eh uma label dessa aqui. 
  has_one :presentation_room
  has_many :buy_ticket
end
