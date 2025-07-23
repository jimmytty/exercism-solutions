=begin
Write your code for the 'Microwave' exercise in this file. Make the tests in
`microwave_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/microwave` directory.
=end

class Microwave

  def initialize(seconds)
    @seconds = seconds
  end

  def timer
    min = 0
    sec = 0
    if @seconds <= 99
      min = @seconds / 60
      sec = @seconds % 60
    elsif @seconds <= 9999
      string = @seconds.to_s
      min, sec = string.match(/^(\d{1,2})(\d\d)$/).captures.map(&:to_i)
      if sec > 59
        min += 1
        sec -= 60
      end
    end
    return sprintf("%02d:%02d", min, sec)
  end

end
