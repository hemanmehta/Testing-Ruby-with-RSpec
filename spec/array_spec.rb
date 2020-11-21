#Assignment-5
RSpec.describe Array do
  it 'should have empty array' do
    expect(subject.length).to eq(0)
    subject.push(10)
    expect(subject.length).to eq(1)
  end
end