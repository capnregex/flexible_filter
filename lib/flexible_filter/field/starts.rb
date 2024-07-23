module FlexibleFilter
  module Field
    class Starts < Matches
      def verb
        'starts with'
      end

      def pattern
        "#{escaped}%"
      end
    end
  end
end
