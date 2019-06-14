class Event < ApplicationRecord
  validates :name, presence: true
  validates :begin_date, presence: true
  validates :end_date, presence: true

  belongs_to :event_class
  belongs_to :age_group
  belongs_to :user
  has_many :presentation
end
