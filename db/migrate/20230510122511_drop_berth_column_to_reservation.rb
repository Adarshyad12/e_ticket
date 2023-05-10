class DropBerthColumnToReservation < ActiveRecord::Migration[7.0]
  def change
    remove_column :reservations, :berth_no
  end
end
