class Slot < ApplicationRecord
  belongs_to :teacher, class_name: "User"
  belongs_to :meeting, optional: true

  def start_format
    start.strftime("%B %-d, %-l:%M %p")
  end
end
