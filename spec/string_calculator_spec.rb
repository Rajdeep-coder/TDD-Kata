require 'spec_helper'

RSpec.describe StringCalculator do
	describe '#add' do
		let(:object) { StringCalculator.new }

		context '1. when we pass limited parameters (altest 3)' do
			it 'should take empty string and retun 0 as result' do
				expect(object.add('')).to eq(0)
			end

			it 'should take one string as input and retun same integer as a result' do
				expect(object.add('1')).to eq(1)
			end

			it 'should take max three CS numbers and retun some of the numbers' do
				expect(object.add('1, 2')).to eq(3)
				expect(object.add('1, 2, 3')).to eq(6)
			end
		end

		context 'when we do not pass valid parameters' do
		end
	end
end