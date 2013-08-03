class Sistema < ActiveRecord::Base
  attr_accessible :address, :email_address, :name, :prrice_paid, :seat_id_seq, :phone
end
