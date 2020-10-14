class Gym
  attr_reader :name

  @@all = []

  # Get a list of all gyms
  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  # Get a list of all memberships at a specific gym
  def list_memberships
    Membership.all.map do |element|
      if element.gym == self
        element
      end
    end
  end

  # Get a list of all the lifters that have a membership to a specific gym
  def list_lifters
    Membership.all.map do |element|
      if element.gym == self
        element.lifter
      end
    end
  end


  # Get a list of the names of all lifters that have a membership to that gym
  def list_lifter_names
    Membership.all.map do |element|
      if element.gym == self
        element.lifter.name
      end
    end
  end

  # Get the combined lift total of every lifter has a membership to that gym
  def total_weight
    arr = self.list_lifters.map do |element|
      element.lift_total
    end
    arr.sum
  end

end
