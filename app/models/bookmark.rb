class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  validates :movie, :list, presence: true
  validates :movie, uniqueness: { scope: :list, message: "should be only once in the list" }
  validates :comment, length: { minimum: 6 }
end
