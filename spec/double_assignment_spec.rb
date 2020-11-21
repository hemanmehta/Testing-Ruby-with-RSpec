#Assignment-10

RSpec.describe 'doubles' do
  it "tests the student's knowledge of the course's content" do
    db = double("Database Connection", connect: true, disconnect: 'Goodbye')
    expect(db.connect).to be true
    expect(db.disconnect).to eq('Goodbye')
 
    fs = double("File System")
    allow(fs).to receive_messages(read: 'Romeo and Juliet', write: false)
  end
end