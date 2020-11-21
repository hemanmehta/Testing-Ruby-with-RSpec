RSpec.describe 'nested hooks' do
  before(:context) do
    puts 'OUTER Before context'
  end

  before(:example) do
    puts 'OUTER Before example'
  end

  it 'does basic math' do
    expect(2 + 3).to eq(5)
  end

  context 'with condition A' do
    before(:context) do
      puts 'INNER Before context'
    end
  
    before(:example) do
      puts 'INNER Before example'
    end

    it 'does addition' do
      expect(1 + 2).to eq(3)
    end

    it 'does subtraction' do
      expect(4 - 2).to eq(2)
    end
    
  end
end