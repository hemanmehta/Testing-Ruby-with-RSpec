RSpec.describe 'a random double' do
  it 'only allow designated methods to be invoked' do
    #double(name,stub)
    # Parameter: name - String/symbol - name or description used in failure message
    # Parameter: stub - Hash - hash of message/return-value pairs  
    
    # stuntman = double("Mr. Danger",  fall_of_ladder: 'Ouch', light_on_fire: true)
    # expect(stuntman.fall_of_ladder).to eq('Ouch')
    # expect(stuntman.light_on_fire).to be true

    # stuntman = double("Mr. Danger")
    # #Use allow(...).to receive(...) to configure which messages the double is allowed to receive
    # allow(stuntman).to receive(:fall_of_ladder).and_return('Ouch')
    # expect(stuntman.fall_of_ladder).to eq ('Ouch')

    stuntman = double("Mr. Danger")
    # #Use allow(...).to receive_messages(...) to configure which multiple messages the double is allowed to receive
    allow(stuntman).to receive_messages(fall_of_ladder: 'Ouch', light_on_fire: true)
    expect(stuntman.fall_of_ladder).to eq ('Ouch')
    expect(stuntman.light_on_fire).to be true

  end
    

end