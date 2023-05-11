class TrainDetail < ApplicationRecord
   
    has_many :users, through: :reservation
    has_many :reservations

    validates :name, presence: true
    validates :source, presence: true
    validates :destination, presence: true
    validates :train_no, presence: true, length: { maximum: 5 },numericality: true
    validates :frequency, presence: true
    validates :distance, presence: true
    validates :fare, presence: true, numericality: true
    validates :frequency, presence: true
    validates :departure_time, presence: true
    validates :arrival_time, presence: true

    enum :frequency,["weekly","daily"]
end
