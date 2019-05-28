class Review < ApplicationRecord
  belongs_to :reviewer, class_name: "User"
  validates :comment, presence: true
  validates :rating, presence: true, :inclusion => { :in => 0..5 }
end
