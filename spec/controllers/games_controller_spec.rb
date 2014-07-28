require 'spec_helper'

describe GamesController do

  subject{page}

  describe "POST 'play'" do
    it "returns http success" do
      visit play_path
      response.should be_success
    end
    
    it 'creates a new game' do
     allow(Mastermind::Game).to receive(:new).with(any_args)
     visit play_path(:code => "rrrr")
    end
  end

  describe "GET 'play'" do 
    before {visit new_game_path} 
    describe "with valid code" do
      before do
        fill_in("code", :with => "rrrr")
        click_button "Play"
      end
      
      it{ should have_content('Solved')}
    end

    describe "with invalid code" do
     before do
        click_button "Play"
      end
  
      it {should have_content('Mastermind Game')}
    end
  end
end
