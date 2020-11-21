=begin 
  irb(main):001:0> arr = [1, 2, 3]
  irb(main):002:0> arr.first
  => 1
  irb(main):003:0> arr.first(1)
  => [1]
  irb(main):004:0> arr.first(2)
  => [1, 2]
  irb(main):005:0> arr.first(3)
  => [1, 2, 3]
  irb(main):006:0> arr.first(100)
  => [1, 2, 3] 
=end


RSpec.describe 'matching arguments' do
  it 'can return different values depending on the argument' do
    three_element_array = double # [1, 2, 3]

    allow(three_element_array).to receive(:first).with(no_args).and_return(1)
    allow(three_element_array).to receive(:first).with(1).and_return([1])
    allow(three_element_array).to receive(:first).with(2).and_return([1, 2])
    allow(three_element_array).to receive(:first).with(3).and_return([1, 2, 3])
    allow(three_element_array).to receive(:first).with(be >= 3).and_return([1, 2, 3])
    
    expect(three_element_array.first).to eq(1)
    expect(three_element_array.first(1)).to eq([1])
    expect(three_element_array.first(2)).to eq([1, 2])   
    expect(three_element_array.first(3)).to eq([1, 2, 3])
    expect(three_element_array.first(100)).to eq([1, 2, 3])
  end
end