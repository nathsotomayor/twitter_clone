class Tweet < ApplicationRecord
  belongs_to :user

  validates :tweet, length: { minimum: 1, maximum: 280 }

  default_scope -> { order(created_at: :DESC) }
end
