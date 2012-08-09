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
  
  describe "POST /users" do
    
    it "creates a user" do
      
    end
    
  end

end
