class UpdateColumnOfTrainDetails < ActiveRecord::Migration[7.0]
  def change
    change_table :train_details do |t|
      t.rename :Name, :name
      t.rename :Train_no, :train_no
      t.rename :Frequency, :frequency
    end
  end
end
