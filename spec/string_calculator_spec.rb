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

    context '2. when we pass unknown amount of numbers' do
      it 'should return the sum of numbers' do
        expect(object.add('1, 2, 3, 4, 5, 6, 7, 8, 9, 10')).to eq(55)
        expect(object.add('1,2,3,4,5,6,7,8,9')).to eq(45)
        expect(object.add('1, 2, 3, 4, 5, 6, 7, 8, 9, 10,a,b,c')).to eq(55)
      end
    end
  end
end
