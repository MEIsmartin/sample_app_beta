require 'spec_helper'

describe "Static Pages" do
  describe "Home Page" do

    it "should have the content 'Sample App'" do
      visit '/pages/home'
      page.should have_selector('h1', text: 'Sample App')
    end

    it "should have the right title" do
      visit '/pages/home'
      page.should have_selector('title', text: 'Sample App | Home')
    end

  end  

  describe "Help Page" do

    it "should have the content 'Help'" do
      visit '/pages/help'
      page.should have_selector('h1', text: 'Help')
    end

    it "should have the right title" do
      visit '/pages/help'
      page.should have_selector('title', text: 'Sample App | Help')
    end

  end 

  describe "About Page" do

    it "should have the content 'About Us'" do
      visit '/pages/about'
      page.should have_selector('h1', text: 'About Us')
    end

    it "should have the right title" do
      visit '/pages/about'
      page.should have_selector('title', text: 'Sample App | About Us')
    end

  end 
end