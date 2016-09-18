class Room < ApplicationRecord

  has_many :topics
  has_and_belongs_to_many :members

  validates :name, presence: true, length: { maximum: 255, minimum: 2 }

end
