class Deck
  def self.build
    # Business logic to build whole bunch of cards.
  end
end

class CardGame
  attr_reader :cards
  
  def start
    @cards = Deck.build
  end
end

RSpec.describe CardGame do
   it 'can only implement class methods that are definded on a class' do
      # as_stubbed_const method replace call of 'Deck' class with 'class_double(...)' Hence double_class will mimic actual
      # Deck class
      deck_class = class_double(Deck, build: ['Ace','Queen']).as_stubbed_const

      expect(deck_class).to receive(:build)
      subject.start
      expect(subject.cards).to eq(['Ace', 'Queen'])
      
   end
end