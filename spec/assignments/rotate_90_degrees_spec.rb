require_relative '../../assignments/rotate_90_degrees.rb'

describe '#rotate' do
  let(:array) do
    %w(
      1  2  3  4
      5  6  7  8
      9  10 11 12
      13 14 15 16
    )
  end

  let(:expected_array) do
    %w(
      13  9 5 1
      14 10 6 2
      15 11 7 3
      16 12 8 4
    )
  end

  it 'turns the array 90 degrees on its side' do
    expect(rotate(array)).to eq expected_array
  end
end
