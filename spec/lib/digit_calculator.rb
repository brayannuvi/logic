require 'rails_helper'

RSpec.describe DigitCalculator, type: :model do
  before do
    @digit_calculator = DigitCalculator.new
  end

  it "Enter negative numbers" do
    expect(@digit_calculator.sum_digits(-12)).to eq(3)     
  end

  it "Enter integers" do 
    expect(@digit_calculator.sum_digits(9)).to eq(9)
    expect(@digit_calculator.sum_digits(16)).to eq(7)
    expect(@digit_calculator.sum_digits(942)).to eq(6)
    expect(@digit_calculator.sum_digits(9999999999)).to eq(9)
  end

  it "Enter decimal numbers" do 
    expect(@digit_calculator.sum_digits(0.547)).to eq(7)
  end

  it "Enter text" do 
    expect(@digit_calculator.sum_digits('House')).to eq('I only accept numbers')
  end

end