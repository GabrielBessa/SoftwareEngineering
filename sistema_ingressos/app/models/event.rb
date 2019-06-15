class Event < ApplicationRecord
  validates :name, presence: true
  validates :begin_date, presence: true
  validates :end_date, presence: true

  belongs_to :event_class, required: false
  belongs_to :age_group, required: false
  belongs_to :user, required: false
  has_many :presentation
end
