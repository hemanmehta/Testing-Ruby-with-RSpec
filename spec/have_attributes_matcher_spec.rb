class ProfessionalWrestler 
  attr_reader :name, :finishing_move

  def initialize(name, finishing_move)
    @name = name
    @finishing_move = finishing_move
  end
end

RSpec.describe 'have_attributes matcher' do
  
  describe ProfessionalWrestler.new('Undertaker', 'Chalkslam') do
    it 'checks for object attribure and its proper value' do
      expect(subject).to have_attributes(name: 'Undertaker')
      expect(subject).to have_attributes(name: 'Undertaker', finishing_move: 'Chalkslam')
    end

    it { is_expected.to have_attributes(name: 'Undertaker')}
  end
end