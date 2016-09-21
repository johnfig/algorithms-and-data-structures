require_relative '../../recursion/square_sum.rb'

describe '#square_sum' do
  specify { expect(square_sum(4)).to eq 30 }
  specify { expect(square_sum(5)).to eq 55 }
end

