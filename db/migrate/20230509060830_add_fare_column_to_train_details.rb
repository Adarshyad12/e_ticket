class AddFareColumnToTrainDetails < ActiveRecord::Migration[7.0]
  def change
    add_column :train_details, :fare, :integer
  end
end
