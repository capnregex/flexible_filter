module FlexibleFilter
  module Field
    class Plural < Base
      attr_reader :values

      def initialize(model, field, *values)
        super(model, field)
        @values = values.flatten
      end

      def to_s
        "#{super} #{values.join(', ')}"
      end
    end
  end
end
