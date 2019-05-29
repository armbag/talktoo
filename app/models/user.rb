class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  mount_uploader :avatar, PhotoUploader

  has_many :messages, dependent: :destroy

  has_many :left_reviews, class_name: "Review", foreign_key: "reviewer_id", dependent: :destroy
  has_many :received_reviews, class_name: "Review", foreign_key: "reviewed_id"

  has_many :meetings, foreign_key: "student_id", dependent: :destroy
  has_many :teachers, through: :meetings
  has_many :students, through: :meetings

end
