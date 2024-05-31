class Booking < ApplicationRecord
  belongs_to :boat
  belongs_to :user

  validates :begin_date, :end_date, presence: true
end
