class AnimalChore < ApplicationRecord
  belongs_to :animal
  belongs_to :chore

  validates :completed_at, presence: true
end
