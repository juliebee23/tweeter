class Tweet < ApplicationRecord
  belongs_to :user

  validates :message, presence: true
  validates :message, length: {maximum: 140, 
  too_long: "Only 140 characters! Keep it simple stupid!"}
end
