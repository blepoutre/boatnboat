class Boat < ApplicationRecord
  has_many :booking, dependent: :destroy
  belongs_to :user
  CATEGORY = %w(Hydroglisser Canot Catamaran Yatch Péniche)
  validates :category, inclusion: { in: CATEGORY }

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
