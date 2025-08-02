module StringsCalculator
  def self.add(str)
    return 0 if str.empty?
    str.split(',').map(&:to_i).sum
  end
end