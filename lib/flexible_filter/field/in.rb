module FlexibleFilter
  module Field
    class In < Plural
      self.verb = "is in"

      def arel
        arel_table[field].in(values)
      end
    end
  end
end
