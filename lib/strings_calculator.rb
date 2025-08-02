module StringsCalculator
  def self.add(str)
    return 0 if str.empty?
    if str.start_with?("//")
      delimiter, numbers_str = str.match(%r{//(.+)\n(.*)})[1..2]
      numbers = numbers_str.split(/#{Regexp.escape(delimiter)}/).map(&:to_i)
    else
      numbers = str.split(/,|\n/).map(&:to_i)
    end
  
    numbers.sum
  end
end