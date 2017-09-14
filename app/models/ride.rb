class Ride < ActiveRecord::Base
  belongs_to :attraction
  belongs_to :user

  def take_ride
    if self.user.tickets < self.attraction.tickets
      "Sorry. You do not have enough tickets to ride the Roller Coaster."
    elsif self.user.height < self.attraction.min_height
      "Sorry. You are not tall enough to ride the Roller Coaster."

    end
  end

end
