class TrainDetail < ApplicationRecord
    validates :train_no, length: { minimum: 5 } 
    enum :frequency,["weekly","daily"]
    has_many :users, through: :reservation
    has_many :reservations
    validates :source, presence: true, length: { minimum: 2 }

end
