class LogLineParser
  def initialize(line)
    @line = line
  end

  def message
    return @line.split(' ', 2)[1].strip
  end

  def log_level
    return @line.split("]")[0].split('[')[1].downcase
  end

  def reformat
    msg = message
    lvl = log_level
    return "#{msg} (#{lvl})"
  end
end
