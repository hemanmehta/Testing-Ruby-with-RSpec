RSpec.describe 'change matcher' do
  subject { [1,2,3,4] }

  it 'checks that method changes object state' do
    expect { subject.push(5) }.to change { subject.length }.by(1)
  end

  it 'accepts negative arguments' do
    #expect { subject.pop }.to change { subject.length }.from(4).to(3)
    expect { subject.pop }.to change { subject.length }.by(-1)
  end
end