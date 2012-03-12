require "psychomatrix/version"

# Module contains classes and methods for calculate psychomatrix from date.
#
#   Psychomatrix.calculate_for(Time.now)
module Psychomatrix
  require 'psychomatrix/core_ext/integer'
  require 'psychomatrix/calculation'

  # Calculates psymoatrix for given date
  # @param [Time] date
  # @return [Calculation]
  def self.calculate_for(date)
    Calculation.new(date)
  end
end
