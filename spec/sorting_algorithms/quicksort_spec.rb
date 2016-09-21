require_relative '../../sorting_alrorithms/quicksort.rb'

describe 'mergesort' do
  it 'sorts even numbered array' do
    array = [8,7,6,5,4,3,2,1]
    expect(quicksort(array)).to eq [1,2,3,4,5,6,7,8]
  end

  it 'sorts odd numbered array' do
    array = [1,2,3,4,5,6,7,8,9].shuffle
    expect(quicksort(array)).to eq [1,2,3,4,5,6,7,8,9]
  end
end

