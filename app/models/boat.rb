class Boat < ApplicationRecord
  has_many :booking, dependent: :destroy
  belongs_to :user
  CATEGORY = %w(Hydroglisser Canot Catamaran Yatch Péniche)
  validates :category, inclusion: { in: CATEGORY }
end
