class AddColumnToReservation < ActiveRecord::Migration[7.0]
  def change
    add_column :reservations, :amount, :string
  end
end
