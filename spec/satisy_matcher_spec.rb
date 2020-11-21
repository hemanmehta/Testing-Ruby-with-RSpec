RSpec.describe 'satisfy matcher' do
  subject { 'racecar' }

  it 'is a palindrome' do
    expect(subject).to satisfy { |value| (value.reverse) == value }
  end

  it 'can accept a custom error message' do
    expect(subject).to satisfy ('be a palindrome') { |value| (value.reverse) == value }
  end
end
