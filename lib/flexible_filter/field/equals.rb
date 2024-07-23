module FlexibleFilter
  module Field
    class Equals < Singular
      self.verb = "is equal to"

      def arel
        arel_table[field].eq(value)
      end
    end
  end
end
