class Reservation < ActiveRecord::Base
  belongs_to :vehicle
  belongs_to :user
  belongs_to :operator
  belongs_to :status
  belongs_to :paymenttype
  
  def vehicle_name
    self.vehicle.name
  end
  
  def operator_name
    self.operator.name
  end
  
  def user_name
    self.user.name
  end
  
  def status_name
    self.status.name
  end
  
  def paymenttype_name
    self.paymenttype.name
  end
  
end
