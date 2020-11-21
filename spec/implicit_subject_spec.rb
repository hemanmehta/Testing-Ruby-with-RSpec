RSpec.describe Hash do
  #let(:my_hash) { {} }
  #subject automatically instantciate referencred class defined in Example Group here Hash
  # and used in current example (it block) and futher values 
  it 'should start off empty' do
    expect(subject.length).to eq(0)
    subject[:some_key] = "some_value"
    expect(subject.length).to eq(1)
  end

  #For each example brand new Hash instance will be created.
  it 'is isolated betweeen examples' do
    expect(subject.length).to eq(0)
  end

end