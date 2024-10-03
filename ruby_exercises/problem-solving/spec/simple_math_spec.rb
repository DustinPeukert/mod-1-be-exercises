require "../lib/simple_math"

RSpec.describe SimpleMath do

  it 'can add two numbers' do
    sm = SimpleMath.new

    result = sm.add(2,2)
    expected = 4

    expect(result).to eq(expected)
  end

  it 'can add two different numbers' do
    sm = SimpleMath.new

    result = sm.add(5,3)
    expected = 8

    expect(result).to eq(expected)
  end

  it 'can subtract two numbers' do
    sm = SimpleMath.new

    result = sm.subtract(10,2)
    expected = 8

    expect(result).to eq(expected)
  end

  it 'can subtract two other numbers' do
    sm = SimpleMath.new

    result = sm.subtract(50,27)
    expected = 23

    expect(result).to eq(expected)
  end

  it 'can multiply two numbers' do
    sm = SimpleMath.new
    # instantiate the class
    result = sm.multiply(4,6)
    expected = 24
    # call the method being tested
    # determine your expected result
    expect(result).to eq(expected)
    # check results
  end


  it 'can multiply two other numbers' do
    sm = SimpleMath.new
    # instantiate the class
    result = sm.multiply(10,12)
    expected = 120
    # call the method being tested
    # determine your expected result
    expect(result).to eq(expected)
    # check results
  end

  it 'can divide two numbers' do
    sm = SimpleMath.new

    result = sm.divide(12, 6)
    expected = 2

    expect(result).to eq(expected)
  end

  it 'can divide two other numbers' do
    sm = SimpleMath.new

    result = sm.divide(16, 4)
    expected = 4

    expect(result).to eq(expected)
  end
end
