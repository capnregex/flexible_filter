
module FlexibleFilter
  module Field
    class Singular < Base
      attr_reader  :value

      def initialize(model, field, value)
        super(model, field)
        @value = value
      end

      def to_s
        "#{super} #{value}"
      end
    end
  end
end
