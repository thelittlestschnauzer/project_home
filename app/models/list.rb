class List < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :room, optional: true

  validates :title, presence: true
end
