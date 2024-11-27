class Park < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :banner_url, presence: true
  has_many :animals
end
