class User < ApplicationRecord
  validates :username, presence: true
  validates :password, presence: true
  has_many :facts, dependent: :destroy # allows all facts belonging to user to be deleted
end
