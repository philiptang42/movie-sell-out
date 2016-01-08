require 'pry'

class Theater
  attr_accessor :patrons, :seats

  def initialize(seats, patrons = 0)
    @seats = seats
    @patrons = patrons
  end

  def admit!(admittance = nil)
    if patrons >= seats
      puts "Error! Not enough seats for the requested amount of people."
    elsif admittance.nil?
      @patrons = patrons + 1
    else
      @patrons = patrons + admittance
    end
  end

  def at_capacity?
    if patrons == seats
      true
    else
      false
    end
  end

  def record_walk_outs!(walk_outs = nil)
    if walk_outs.nil?
      puts "Nobody has left the theater! Yet..."
    else
      @patrons = patrons - walk_outs
    end
  end

end

binding.pry
