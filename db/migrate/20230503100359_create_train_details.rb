class CreateTrainDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :train_details do |t|

      t.timestamps
    end
  end
end
