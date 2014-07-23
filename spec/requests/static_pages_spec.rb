require 'spec_helper'

describe "StaticPages" do

  subject{page}

  describe "Home" do
    before {visit root_path }

    it {should have_content('Mastermind Game') }
  
    describe "Click Play" do
      before{ click_button "Play Here!" }   

      it {should have_content('Welcome to Mastermind') }
    end
  
  end

  describe "Rules" do
    before {visit rules_path }

    it {should have_content('How to Play') }
  end
end
