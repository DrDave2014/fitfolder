require 'spec_helper'

describe "Static pages" do
  
  let(:base_title) { "Fitfolder" }
  
  describe "Home page" do
    it "should have the right title" do
      visit '/static_pages/home'
      page.should have_selector('title', :text => "Fitfolder | Home")
    end
    
    it "should have the h1 'Welcome to Fitfolder'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Welcome to Fitfolder')
    end
  end
  
  describe "Help page" do
    it "should have the right title" do
      visit '/static_pages/help'
      page.should have_selector('title', :text => "#{base_title} | Help")
    end
    
    it "should have the h1 'Fitfolder - Get Help'" do
      visit '/static_pages/help'
      page.should have_selector('h1', :text => 'Fitfolder - Get Help')
    end
  end
  
  describe "About page" do
    it "should have the right title" do
      visit '/static_pages/about'
      page.should have_selector('title', :text => "#{base_title} | About")
    end
    
    it "should have the h1 'About Fitfolder'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => 'About Fitfolder')
    end
  end
  
  describe "Contact page" do
    it "should have the right title" do
      visit '/static_pages/contact'
      page.should have_selector('title', :text => "#{base_title} | Contact Us")
    end
    
    it "should have the h1 'Contact Us'" do
      visit '/static_pages/contact'
      page.should have_selector('h1', :text => "Contact Us")
    end
  end

end
