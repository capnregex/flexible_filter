module FlexibleFilter
  module Field
    class Matches < Singular
      self.verb = 'matches'

      def escaped
        case ActiveRecord::Base.connection.adapter_name
        when "Mysql2".freeze
          # Necessary for MySQL
          value.to_s.gsub(/([\\%_])/, '\\\\\\1')
        when "PostgreSQL".freeze
          # Necessary for PostgreSQL
          value.to_s.gsub(/([\\%_.])/, '\\\\\\1')
        else
          value
        end
      end

      def pattern
        "%#{escaped}%"
      end

      def arel
        arel_table[field].matches(pattern)
      end
    end
  end
end
