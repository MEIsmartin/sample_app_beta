require 'spec_helper'

describe "Static Pages" do
  describe "Home Page" do

    it "should have the h1 'Sample App'" do
      visit '/pages/home'
      page.should have_selector('h1', text: 'Sample App')
    end

    it "should have the right title" do
      visit '/pages/home'
      page.should have_title('Home')
    end

  end  

  describe "Help Page" do

    it "should have the h1 'Help'" do
      visit '/pages/help'
      page.should have_selector('h1', text: 'Help')
    end

    it "should have the right title" do
      visit '/pages/help'
      page.should have_title('Help')
    end

  end 

  describe "About Page" do

    it "should have the h1 'About Us'" do
      visit '/pages/about'
      page.should have_selector('h1', text: 'About Us')
    end

    it "should have the right title" do
      visit '/pages/about'
      page.should have_title('About Us')
    end

  end 

  describe "Contact Page" do

    it "should have the h1 'Contact Us'" do
      visit '/pages/contact'
      page.should have_selector('h1', text: 'Contact Us')
    end

    it "should have the right title" do
      visit '/pages/contact'
      page.should have_title('Contact Us')
    end

  end 
end