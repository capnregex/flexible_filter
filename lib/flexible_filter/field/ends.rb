module FlexibleFilter
  module Field
    class Ends < Matches
      def verb
        'ends with'
      end

      def pattern
        "%#{escaped}"
      end
    end
  end
end
