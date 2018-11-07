class List < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :room, optional: true
  has_many :tasks, inverse_of: :list

  validates :title, presence: true
end
