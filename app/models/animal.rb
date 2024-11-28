class Animal < ApplicationRecord
  belongs_to :park
  validates :name, :image_url, presence: true
  has_many :animal_chores, dependent: :destroy
end
