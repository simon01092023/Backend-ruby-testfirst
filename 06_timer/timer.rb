class Timer
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    hours = @seconds / 3600
    minutes = (@seconds % 3600) / 60
    seconds = @seconds % 60

    "#{padded(hours)}:#{padded(minutes)}:#{padded(seconds)}"
  end

  private

  def padded(number)
    number.to_s.rjust(2, '0')
  end

  # Samples to test
  timer = Timer.new
  puts timer.time_string # => "00:00:00"

  timer.seconds = 12
  puts timer.time_string # => "00:00:12"

  timer.seconds = 66
  puts timer.time_string # => "00:01:06"

  timer.seconds = 4000
  puts timer.time_string # => "01:06:40"
end
