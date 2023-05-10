class AddBerthColumnToReservation < ActiveRecord::Migration[7.0]
  def change
    add_column :reservations, :berth_no, :integer, unique: true
  end
end
