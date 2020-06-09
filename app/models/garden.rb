class Garden < ApplicationRecord
  URL_REGEX = /(https?:\/\/.*\.(?:png|jpg))/i
  has_many :plants, dependent: :destroy

  validates :name, presence: true, uniqueness: true
  validates :banner_url, presence: true, format: { with: URL_REGEX, message: "please enter a correct image url" }
end
