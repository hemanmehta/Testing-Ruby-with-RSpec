class HotChocolate
  def drink
    'Delicious'
  end

  def discard
    'NO!'
  end

  def purchase(number)
    "I would purchase #{number} of units of beverages."
  end
end

RSpec.describe HotChocolate do
  it 'checks for object can respond to a method' do
    expect(subject).to respond_to(:drink)
    expect(subject).to respond_to(:drink, :discard)
    expect(subject).to respond_to(:drink, :purchase, :discard)
  end

  it { is_expected.to respond_to(:drink)}

  it 'checks for object can respond to a method with argument' do
    expect(subject).to respond_to(:purchase).with(1).arguments
  end

  it { is_expected.to respond_to(:purchase).with(1).arguments }
end