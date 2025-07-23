module Chess
  RANKS = 1..8
  FILES = 'A'..'H'

  def self.valid_square?(rank, file)
    RANKS.include?(rank) && FILES.include?(file)
  end

  def self.nick_name(first_name, last_name)
    first_name[0..1].upcase + last_name[-2..-1].upcase
  end

  def self.move_message(first_name, last_name, square)
    nick = nick_name(first_name, last_name)
    rank = square[1].to_i
    file = square[0]
    msg  = ""
    if valid_square?(rank, file)
      msg = "%s moved to %s"
    else
      msg = "%s attempted to move to %s, but that is not a valid square"
    end
    return msg % [nick, square]
  end
end
