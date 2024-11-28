class Chore < ApplicationRecord
  has_many :animal_chores
  validates :name, presence: true
end
