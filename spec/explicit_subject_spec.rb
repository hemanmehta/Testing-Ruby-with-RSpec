RSpec.describe Hash do
  #bob is aliasing name to subject. You can use subject or alias to invoke it.
  subject(:bob) do
    {a: 1, b: 2}
  end

  it 'has two key-pair values' do
    expect(subject.length).to eq(2)
    expect(bob.length).to eq(2)
  end

  #subject is defined at group level so its available to Nested/Inner Examples as well.
  describe 'Nested Example' do
    it 'Nested: has two key-pair values' do
      expect(subject.length).to eq(2)
      expect(bob.length).to eq(2)
    end
  end
end