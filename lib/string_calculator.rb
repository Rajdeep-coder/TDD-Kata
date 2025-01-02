class StringCalculator
  def add(str)
  	str = str.gsub(/\n/, ',') # gsub replace \n with , and below code will remain same
    str.split(',').map(&:to_i).sum
  end
end
