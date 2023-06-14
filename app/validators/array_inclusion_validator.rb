class ArrayInclusionValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, values)
    values.each do |value|
      next if options[:in].include?(value)

      record.errors.add(attribute, "#{value} isn't a valid role")
    end
  end
end
