class Boat < ApplicationRecord
  include PgSearch::Model
  has_many :booking, dependent: :destroy
  belongs_to :user
  CATEGORY = %w(Hydroglisser Canot Catamaran Yatch Péniche)
  validates :category, inclusion: { in: CATEGORY }


  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  validates :name, :description, :category, :price, :picture_url, presence: true

    pg_search_scope :search_global,
  against: [ :name, :description, :category ],
  associated_against: {
    user: [:email ]
  },
  using: {
    tsearch: { prefix: true } # <-- now `superman batm` will return something!
  }
end
