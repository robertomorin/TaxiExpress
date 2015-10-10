class AddReservationDateToReservation < ActiveRecord::Migration
  def change
    add_column :reservations, :reservationdate, :datetime
  end
end
