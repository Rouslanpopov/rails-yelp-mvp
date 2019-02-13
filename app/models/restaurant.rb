class Restaurant < ApplicationRecord
  CAT = %w(chinese italian french belgian japanese)
  has_many :reviews, :dependent => :destroy

  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true, inclusion: { in: CAT }
end
