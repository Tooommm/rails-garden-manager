class Plant < ApplicationRecord
  URL_REGEX = /(https?:\/\/.*\.(?:png|jpg))/i
  belongs_to :garden

  validates :name, presence: true, uniqueness: { scope: :garden_id }
  validates :image_url, presence: true, format: { with: URL_REGEX, message: "please enter a correct image url" }
end
