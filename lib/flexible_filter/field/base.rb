
module FlexibleFilter
  module Field
    class Base
      class_attribute :verb, default: 'verb'
      attr_reader :model, :field

      def initialize(model, field)
        @model = model
        @field = field
      end

      delegate :arel_table, :model_name, to: :model

      def to_s
        "#{model_name.singular} #{field} #{verb}"
      end
    end
  end
end
