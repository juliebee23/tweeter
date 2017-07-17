class Tweet < ApplicationRecord
  belongs_to :user
  has_many :tweet_tags
  has_many :tags, through: :tweet_tags

  # before_validation :link_check, on: :create
  validates :message, presence: true
  validates :message, length: {maximum: 140, 
  too_long: "Only 140 characters! Keep it simple stupid!"}
  # after_validation :apply_link, on: :create

  # private

  # def link_check
  #   check = false
end
