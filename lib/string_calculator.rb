class StringCalculator
  def add(str)
    str = str.scan(/-?\d+/) # let's use scan for fetching numbers from string
    str.map do |num|
      raise "negatives not allowed: #{num}" if num.to_i < 0
    end
    str.map(&:to_i).sum # no need split scan default retun array
  end
end
