require 'spec_helper'

describe "StaticPages" do

  let(:base_title) { "Ruby on Rails Tutorial Sample App" }

  describe "Home page" do
    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Sample App')
    end

    it "should have the base title" do
      visit '/static_pages/home'
      page.should have_selector('title', :text => "#{base_title}")
    end

    it "should have the custom page title" do
      visit '/static_pages/home'
      page.should have_selector('title',
                    :text => "| Home")
    end
  end

  describe "Help page" do
    it "should have the content 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('Help')
    end

    it "should have the base title" do
      visit '/static_pages/help'
      page.should have_selector('title', :text => "#{base_title}")
    end

    it "should have the custom page title" do
      visit '/static_pages/help'
      page.should have_selector('title',
                    :text => "| Help")
    end     
  end

  describe "About page" do
    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('About Us')
    end

    it "should have the base title" do
      visit '/static_pages/about'
      page.should have_selector('title', :text => "#{base_title}")
    end

    it "should have the custom page title" do
      visit '/static_pages/about'
      page.should have_selector('title',
                    :text => "| About Us")
    end     

  end

end