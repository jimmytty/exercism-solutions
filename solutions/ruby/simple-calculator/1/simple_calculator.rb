class SimpleCalculator
  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze

  class UnsupportedOperation < StandardError
  end

  def self.calculate(first_operand, second_operand, operation)
    if first_operand.is_a?(String)
      raise ArgumentError.new(first_operand)
    end
    if second_operand.is_a?(String)
      raise ArgumentError.new(second_operand)
    end

    result = nil
    case operation
    when '+'
      result = first_operand + second_operand
    when '/'
      begin
        result = first_operand / second_operand
      rescue => e
        return 'Division by zero is not allowed.'
      end
    when '*'
      result = first_operand * second_operand
    else
      raise UnsupportedOperation.new(operation)
    end
    return "#{first_operand} #{operation} #{second_operand} = #{result}"
  end
end
