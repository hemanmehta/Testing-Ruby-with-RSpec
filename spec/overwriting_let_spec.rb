class ProgrammingLanguage
  attr_reader :name
  def initialize(name = 'Ruby')
    @name = name
  end
end

RSpec.describe ProgrammingLanguage do
  let(:language) { ProgrammingLanguage.new('Java') }
  
  it 'should store name of the language' do
    expect(language.name).to eq('Java')
  end

  context 'with no argument' do
    let(:language) { ProgrammingLanguage.new }
    
    it 'should default language to Ruby as the name' do
      expect(language.name).to eq('Ruby')
    end
  end

end