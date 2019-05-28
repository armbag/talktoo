class Slot < ApplicationRecord
  belongs_to :teacher, class_name: "User"
  belongs_to :meeting, optional: true
end
