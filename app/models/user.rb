class User < ApplicationRecord
devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
has_many :train_details , through: :reservation
has_many :reservations
 
end
