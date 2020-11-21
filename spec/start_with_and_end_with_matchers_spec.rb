RSpec.describe 'start_with and end_with matcher' do
  
  describe 'catterpillar' do
    it 'should check for substring at the start and end' do
      expect(subject).to start_with('cat')
      expect(subject).to end_with('pillar')
      expect(subject).to end_with('PILLAR'.downcase)
    end

    it { is_expected.to start_with('cat') }
    it { is_expected.to end_with('pillar') }
  end

  describe [:a, :b, :c, :d] do
    it 'should check for elements at the start and end of an array' do
      expect(subject).to start_with(:a)
      expect(subject).to start_with(:a, :b)
      expect(subject).to start_with(:a, :b, :c)
      expect(subject).to end_with(:d)
      expect(subject).to end_with(:c, :d)
    end
  
    it { is_expected.to start_with(:a) }
    it { is_expected.to end_with(:d) }
  end
end