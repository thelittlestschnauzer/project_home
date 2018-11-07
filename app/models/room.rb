class Room < ApplicationRecord
  validates :title, presence: true
  belongs_to :user

  has_many :lists, inverse_of: :room
  has_many :tasks, through: :lists
  accepts_nested_attributes_for :lists, allow_destroy: true, reject_if: :all_blank
  accepts_nested_attributes_for :tasks
end
