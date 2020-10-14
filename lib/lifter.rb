class Lifter
  attr_reader :name, :lift_total

  @@all = []

  # Get a list of all lifters
  def self.all
    @@all
  end

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  # Get a list of all the memberships that a specific lifter has 
  def list_memberships
    Membership.all.select do |membership|
      membership.lifter == self
    end
  end

  # Get a list of all the gyms that a specific lifter has memberships to
  def list_gyms
    #binding.pry
    list_memberships.map { |mem| mem.gym }
    #self.list_memberships.map { |mem| mem.gym }
  end

  # Get the average lift total of all lifters
  # Note: Because this asks for all objects  (lifters) in this class as opposed to specific objects (lifters), this will be a class method, not an instance method. That means the method starts with [self].
  def self.avg_total
    all_totals = all.map { |lifter| lifter.lift_total}
    all_totals.sum / all.length
  end

  # Get the total cost of a specific lifter's gym memberships
  def gym_costs
    total = list_memberships.map { |mem| mem.cost}
    total.sum
  end

  # Given a gym and a membership cost, sign a specific lifter up for a new gym
  def get_membership(cost, gym)
    Membership.new(cost, self, gym)
  end

end
