class AddStationColumnsToTrainDetails < ActiveRecord::Migration[7.0]
  def change
    add_column :train_details, :source, :string
    add_column :train_details, :destination, :string

  end
end
