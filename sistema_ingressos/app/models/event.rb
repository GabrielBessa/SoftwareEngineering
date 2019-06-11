class Event < ApplicationRecord
  belongs_to :event_class
  belongs_to :age_group
  belongs_to :user
  has_many :presentation
end
