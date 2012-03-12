module Psychomatrix
  # Core class extensions used for psychomatrix calculation
  module CoreExt
    # Integer extensions for psychomatrix
    module Integer
      # Divides integer by diigits:
      #   23.digitize # => [2, 3]
      # @return [Array] of digits
      def digitize
        to_s.chars.collect(&:to_i)
      end

      # Calculates sum of digits until it will be a digit (<10):
      #   23.to_digit # => 5
      #   39.to_digit # => 3
      #   39.to_digit(12) # => 12
      # @param [Integer] keep unless nil will return result value even it >= 10 (nil)
      # @return [Fixnum]
      def to_digit(keep=nil)
        result = self
        until result < 10 or result == keep
          result = result.digitize.inject(:+)
        end
        result
      end
    end
  end
end

Integer.send(:include, Psychomatrix::CoreExt::Integer)
