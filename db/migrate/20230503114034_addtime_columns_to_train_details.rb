class AddtimeColumnsToTrainDetails < ActiveRecord::Migration[7.0]
  def change
    add_column :train_details, :departure_time, :time
    add_column :train_details, :arrival_time, :time
    add_column :train_details, :distance, :integer
  end
end
