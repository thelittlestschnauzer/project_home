class Room < ApplicationRecord
  validates :title, presence: true
  belongs_to :user
  
  has_many :lists, inverse_of: :room
  accepts_nested_attributes_for :lists

end
