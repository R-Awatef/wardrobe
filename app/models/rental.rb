class Rental < ApplicationRecord
  belongs_to :user
  belongs_to :outfit
  has_one_attached :photo

  validates :start_date, presence: true
  validates :end_date, presence: true
end
