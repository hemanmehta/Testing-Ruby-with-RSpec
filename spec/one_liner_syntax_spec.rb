RSpec.describe 'shorthand syntax' do
  subject { 5 }

  context 'with classical syntax' do
    it 'should be value 5' do
      expect(subject).to eq(5)
    end
  end

  # expect(subject) replace by is_expected method. It works only with subjects not let.
  context 'with One-liner syntax' do
    it { is_expected.to eq(5) }
  end
end