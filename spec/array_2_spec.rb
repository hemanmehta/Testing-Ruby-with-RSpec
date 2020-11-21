#Assignment - 6
RSpec.describe Array do
  subject(:sally) do
    my_array = [1,2]
  end

  it 'has non-zero length' do
    expect(sally.length).to eq(2)
    sally.pop
    expect(sally.length).to eq(1)
  end

  it 'has same length as original' do
    expect(sally.length).to eq(2)
  end
end