module StringsCalculator
  def self.add(str)
    return 0 if str.empty?
    str.split(/,|\n/).map(&:to_i).sum
  end
end