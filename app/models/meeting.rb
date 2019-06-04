class Meeting < ApplicationRecord
  belongs_to :student, class_name: "User"
  has_one :slot
  monetize :price_cents
  # validates :topic, presence: true
end
