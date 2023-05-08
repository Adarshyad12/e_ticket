class AddColumnsToTrainDetails < ActiveRecord::Migration[7.0]
  def change
    add_column :train_details, :Train_no, :integer
    add_column :train_details, :Name, :string
    add_column :train_details, :Frequency, :integer
  
  end
end
