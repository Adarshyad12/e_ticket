class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :validatable
  has_many :train_details , through: :reservation
  has_many :reservations

  validates :email, presence: true, uniqueness: true
  validates :name, presence: true
  validates :age, presence: true
  validates :gender, presence: true
  validates :Phone, presence: true, uniqueness: true
end
