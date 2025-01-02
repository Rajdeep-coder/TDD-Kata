class StringCalculator
  def add(s)
    s.split(',').map(&:to_i).sum
  end
end
