module FlexibleFilter
  module Field
    class Contains < Matches
      def verb
        'contains'
      end

      def pattern
        "%#{escaped}%"
      end
    end
  end
end
