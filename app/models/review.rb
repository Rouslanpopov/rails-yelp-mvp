class Review < ApplicationRecord
  RAT = %w(0 1 2 3 4 5)
  belongs_to :restaurant

    validates :rating, inclusion: { in: [0, 1, 2, 3, 4, 5],
    message: "Only between 0-5" }, numericality: { only_integer: true }

    validates :content, presence: true
end
