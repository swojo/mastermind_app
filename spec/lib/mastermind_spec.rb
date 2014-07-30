require 'mastermind'

describe 'Game' do
  let(:game_text){Mastermind::GameText.new}
  let(:io_obj){double('io_obj')}
  let(:game){Game.new(game_text, io_obj)}
  let(:colors){%w{R G O Y B P}}
  let(:code){%w{R O Y B}}

  it 'runs through the game' do
    allow(IO).to receive(:new){io_obj}
    allow(io_obj).to receive(:display){}
    allow(game_text).to receive(:message){}
    game.play_game(code)
  end
end
