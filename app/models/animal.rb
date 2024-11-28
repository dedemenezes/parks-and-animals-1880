class Animal < ApplicationRecord
  belongs_to :park
  # creates a method to access or assign the association
  # animal.park #=> the park assigned
  # animal.park = a_park
  validates :name, :image_url, presence: true
  has_many :animal_chores, dependent: :destroy
end
