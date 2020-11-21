class Actor
  def initialize(name)
    @name = name
  end

  def ready?
    sleep(3)
    true
  end

  def act
    "I love you, baby"
  end

  def fall_of_ladder
    "Call my agent! No way!"
  end

  def light_on_fire
    false
  end
end

class Movie
  attr_reader :actor

  def initialize(actor)
    @actor = actor
  end

  def start_shooting
    if actor.ready?
      actor.act
      actor.fall_of_ladder
      actor.light_on_fire
      actor.act
    end
  end
end

# actor = Actor.new('Rhitik Roshan')
# movie = Movie.new(actor)
# movie.start_shooting

RSpec.describe Movie do
  let(:stuntman) { double("Mr. Danger", ready?: true, fall_of_ladder: 'Any string', light_on_fire: true, act: 'sure') }
  subject { described_class.new(stuntman) }

  describe '#start_shooting method' do
    it 'expects an actor to do 3 actions' do
      expect(stuntman).to receive(:light_on_fire).once
      expect(stuntman).to receive(:act).exactly(2).times    
      subject.start_shooting
    end
  end
  
end