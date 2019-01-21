class Member < ApplicationRecord
  has_many :tasks
  validates :name, presence: true
  validates :age, presence: true
end
