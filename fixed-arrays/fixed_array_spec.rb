require_relative 'fixed_array'

describe FixedArray do
  let(:fixed_array) {FixedArray.new(5)}

  it 'has a set length equal to the length of the argument' do
    expect(fixed_array.size).to eq 5
  end

  it 'returns the value at a valid index' do
    expect(fixed_array.get(3)).to eq nil
  end

  it 'throws an error when asked for invalid index' do
    expect{fixed_array.get(5)}.to raise_error(IndexOutOfBoundsError)
  end

  it 'sets the value at a valid index' do
    fixed_array.set(0, "this")
    expect(fixed_array.get(0)).to eq "this"
  end

  it 'returns the value after setting a valid index' do
    expect(fixed_array.set(1, "new")).to eq "new"
  end

  it 'throws an error when asked to set an invalid index' do
    expect { fixed_array.set(5, "fail")}.to raise_error(IndexOutOfBoundsError)
  end
end
