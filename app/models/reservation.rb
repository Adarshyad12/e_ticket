class Reservation < ApplicationRecord
  before_create :generate_pnr  
  
  belongs_to :train_detail
  belongs_to :user

  def generate_pnr
    self.pnr = rand(10000..99999)
  end
end
