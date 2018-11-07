class Task < ApplicationRecord

  belongs_to :list, optional: true
  belongs_to :room, optional: true

  validates :name, presence: true
end
