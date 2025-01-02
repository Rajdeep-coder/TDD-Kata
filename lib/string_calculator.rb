class StringCalculator
	def add(s)
		a = s.split(',')
		a1 = a[0].to_i
		a2 = a[1].to_i
		a3 = a[2].to_i

		a1 + a2 + a3
	end
end