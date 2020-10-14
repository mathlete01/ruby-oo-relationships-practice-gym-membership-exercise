class Membership
  attr_reader :cost, :gym, :lifter

  @@all = []

  # # Get a list of all memberships
  def self.all
    @@all
  end

  def initialize(cost, lifter, gym)
    @cost = cost
    @lifter = lifter
    @gym = gym
    @@all << self
  end

  

end
