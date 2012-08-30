require 'spec_helper'

describe "Users" do


  describe "GET /users" do
  
    it "has a header" do
      visit users_path
      page.should have_content 'Dream Calendar'
    end
    
    it "displays users" do
      visit users_path
      page.should have_content "User"
      #unfinished
    
    end
    
  end
  
  describe "GET /users/new" do
    
    it "creates and shows user" do
      visit new_user_path
      fill_in 'Name', :with => 'Obsidian'
      fill_in 'Goal title', :with => 'Learn Ruby on Rails'
      fill_in 'Goal description', :with => 'I want to learn Ruby on Rails, which is a web development framework built with Ruby.'
      click_button 'Create User'
      
   #   visit users_path
      current_path.should == users_path
      page.should have_content "User"
      click_link 'Obsidian'
      page.should have_content 'Goal title'
      @user = User.first.id
      current_path.should == user_path(@user)
      
    end
    
  end
  

end
