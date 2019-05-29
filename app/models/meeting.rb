class Meeting < ApplicationRecord
  belongs_to :student, class_name: "User"

  has_one :slot
  validates :topic, presence: true
end
