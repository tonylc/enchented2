class Location < ActiveRecord::Base
  belongs_to :state

  def address
    address2.blank? ? "#{address1}" : "#{address1} #{address2}"
  end
end
