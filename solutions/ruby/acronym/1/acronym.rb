class Acronym
  def self.abbreviate(phrase)
    phrase.split(/[\s-]+/).map{|w|w.chars.first.upcase}.join('')
  end
end
