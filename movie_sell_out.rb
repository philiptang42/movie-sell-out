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

end

binding.pry
