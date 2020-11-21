class King
  attr_reader :name

  def initialize(name)
    @name = name
  end
end

RSpec.describe King do
  subject { described_class.new('Lord Krishna')}
  let(:shiva) { described_class.new('Lord Shiva') }

  it 'represents a great person' do
    expect(subject.name).to eq('Lord Krishna')
    expect(shiva.name).to eq('Lord Shiva')
  end
end