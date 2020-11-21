RSpec.describe 'all matchers' do
  it 'allows for aggregate checks' do
    expect([5,7,9,13]).to all(be_odd)
    expect([2,4,6,8]).to all(be_even)
    expect( [ [], [], [] ] ).to all(be_empty)
    expect([5,7,9,13]).to all(be < 15)
  end

  describe [5,7,9] do
    it { is_expected.to all(be < 15)}
    it { is_expected.to all(be_odd)}
  end
end