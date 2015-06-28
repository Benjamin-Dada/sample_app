require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  
  #there is repetition of the title ending
  
  def setup
    @baseTitle = "Ruby on Rails Tutorial Sample App"
  end
  
  test "should get home" do
    get :home
    assert_response :success
    assert_select "title", "Home | #{@baseTitle}"
  end

  test "should get help" do
    get :help
    assert_response :success
    assert_select "title", "Help | #{@baseTitle}"
  end
  
   test "should get about" do
    get :about
    assert_response :success
    assert_select "title", "About | #{@baseTitle}"
  end
  
end
