class FlexibleFilter::Reflection::BelongsTo
  attr_reader :reflection

  def initialize(reflection)
    @reflection = reflection
  end

  delegate :join_primary_key, :join_foreign_key, to: :reflection

  def primary_table
    reflection.klass.arel_table
  end

  def foreign_table
    reflection.active_record.arel_table
  end


end
