class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :tweets, dependent: :delete_all
  
  has_many :active_relationships, class_name: "Relationship", foreign_key: "follower_id", dependent: :delete_all
  has_many :passive_relationships, class_name: "Relationship", foreign_key: "followed_id", dependent: :delete_all

  has_many :following, through: :active_relationships, source: :followed
  has_many :followers, through: :passive_relationships, source: :follower

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: "Must be a valid email address" }


  def follow(other)
    active_relationships.create(followed_id: other_id)
  end

  def unfollow(other)
    active_relationships.find_by(followed_id: other_id).destroy
  end

  def following?(other)
    following.include?(other)
  end


end
