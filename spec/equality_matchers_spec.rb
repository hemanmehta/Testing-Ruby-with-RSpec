RSpec.describe 'equality matchers' do
  let(:a) { 3.0 }
  let(:b) { 3 }

  describe 'eq matcher' do
    it 'test for value and ignores type' do
      expect(a).to eq(3)
      expect(b).to eq(3.0)
      expect(a).to eq(b)
    end
  end
 
  describe 'eql matcher' do
    it 'test for value, including same type' do
      expect(a).not_to eql(3)
      expect(b).not_to eql(3.0)
      expect(a).not_to eql(b)
    end
  end

  describe 'equal and be matcher' do
    let(:c) { [1,2,3] }
    let(:d) { [1,2,3] } 
    let(:e) { c } 
    
    it 'cares about object identity/identical' do
      expect(c).to eq(d)  # compares only value
      expect(c).to eql(d) # compares value and type

      expect(c).to equal(e) # compares value, type, memory reference
      expect(c).to be(e)
    end
  end

end