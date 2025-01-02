class StringCalculator
  def add(str)
  	str = str.scan(/\d+/) # let's use scan for fetching numbers from string
    str.map(&:to_i).sum # no need split scan default retun array
  end
end
