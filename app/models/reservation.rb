class Reservation < ApplicationRecord
  before_create :generate_pnr  
  belongs_to :train_detail
  belongs_to :user
 
  validates :traveller, presence: true



  def generate_pnr
    self.pnr = rand(1000000000..999999999)
  end

 
end

