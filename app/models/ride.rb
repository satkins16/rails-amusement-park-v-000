class Ride < ActiveRecord::Base
  belongs_to :attraction
  belongs_to :user

  def take_ride
    if self.user.tickets < self.attraction.tickets
      "Sorry. You do not have enough tickets to ride the Roller Coaster."
    end
  end

end
