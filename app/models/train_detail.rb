class TrainDetail < ApplicationRecord
 
   validates :train_no, length: { minimum: 5 }

    enum :frequency,["weekly","daily"]
end
