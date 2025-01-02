class StringCalculator
  def add(str)
    str = str.scan(/-?\d+/) # let's use scan for fetching numbers from string
    negatives = str.select { |num| num.to_i < 0 }

    raise "negatives not allowed: #{negatives.join(', ')}" unless negatives.empty?

    str.map(&:to_i).sum # no need split scan default retun array
  end
end
