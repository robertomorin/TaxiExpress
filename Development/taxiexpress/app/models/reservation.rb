class Reservation < ActiveRecord::Base
  belongs_to :vehicle
  belongs_to :user
  belongs_to :operator
  belongs_to :status
  belongs_to :paymenttype
end
