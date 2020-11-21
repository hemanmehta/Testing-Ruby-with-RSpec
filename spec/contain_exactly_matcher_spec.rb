RSpec.describe 'contain exactly matcher' do
  subject { [1, 2, 3] }

  describe 'long form syntax' do
    it 'should check for the presence of all elements' do
      #expect(subject).to contain_exactly( list_element_irrespctive_of_order ) 
      expect(subject).to contain_exactly(3, 1, 2)
      expect(subject).to contain_exactly(3, 2, 1)
      expect(subject).to contain_exactly(1, 2, 3)
    end
  end

  it { is_expected.to contain_exactly(3, 2, 1) }
end