class DropColumnFromTrainDetails < ActiveRecord::Migration[7.0]
  def change
    remove_column :train_details, :amount
  end
end
