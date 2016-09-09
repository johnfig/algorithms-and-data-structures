require_relative '../../sorting_alrorithms/mergesort.rb'

describe 'mergesort' do
  it 'sorts even numbered array' do
    array = [1,3,2,4]
    expect(mergesort(array)).to eq [1,2,3,4]
  end

  it 'sorts odd numbered array' do
    array = [3,1,5,4,2]
    expect(mergesort(array)).to eq [1,2,3,4,5]
  end
end

