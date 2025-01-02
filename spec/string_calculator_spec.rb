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

    context '3. when we allow new lines as well' do
      it 'should return 6, the sum of 1\n2,3' do
        expect(object.add("1\n2,3")).to eq(6)
      end
    end

    context '4. when we allow different delimiters' do
      it 'should return 6, the sum of 1\n2,3' do
        expect(object.add("//;\n1;2")).to eq(3)
      end
    end

    context '5. when negative numbers are passed' do
      it 'should raise an exception with message "negatives not allowed"' do
        expect { object.add('-1,2,3') }.to raise_error(RuntimeError, 'negatives not allowed: -1')
      end
    end

    context '6. when more then one negative numbers are passed' do
      it 'should raise an exception with message "negatives not allowed - numbers"' do
        expect { object.add('-1,-2,3') }.to raise_error(RuntimeError, 'negatives not allowed: -1, -2')
      end
    end

    # 7th and 8th are not compitable with rails so moving on 9th

    context '9. when values more than 1000' do
      it 'should ignore the number over 1000' do
        expect(object.add('2, 1001')).to eq(2)
      end
    end

    context '10, 11, and 12 when we pass any lenth of delimiters' do
      it 'should return the sum of numbers' do
        expect(object.add("//[***]\n1***2***3")).to eq(6)
        expect(object.add("//[*][%]\n1*2%3")).to eq(6)
        expect(object.add("//[**][%%]\n1**2%%3")).to eq(6)
      end
    end
  end
end
