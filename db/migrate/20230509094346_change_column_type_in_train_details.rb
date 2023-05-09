class ChangeColumnTypeInTrainDetails < ActiveRecord::Migration[7.0]
  def change
    change_column :train_details, :departure_time, :datetime
    change_column :train_details, :arrival_time, :datetime
  end
end
