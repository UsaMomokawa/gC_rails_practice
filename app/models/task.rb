class Task < ApplicationRecord
  belongs_to :member
  validates :title, presence: true
end
