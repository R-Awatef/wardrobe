class Outfit < ApplicationRecord
  has_many :rentals, dependent: :destroy
  has_many :users, through: :rentals, dependent: :destroy
  has_one_attached :photo

  validates :title, presence: true, uniqueness: true
  validates :description, presence: true
  validates :size, presence: true
end
