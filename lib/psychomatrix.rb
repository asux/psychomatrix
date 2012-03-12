require "psychomatrix/version"

module Psychomatrix
  # Calculates psymoatrix for given date
  # @param [Time] date
  # @return [Calculation]
  def self.calculate_for(date)
    Calculation.new(date)
  end

  # Class implements psymotrix logic, takes date for calcultion in constructor.
  class Calculation
    attr_reader :date

    # Calculates psymoatrix for given date
    # @param [Time] date
    def initialize(date)
      @date = date
    end
  end
end
