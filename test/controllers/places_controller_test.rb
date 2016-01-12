require 'test_helper'

class PlacesControllerTest < ActionController::TestCase
  test "index" do
    FactoryGirl.create(:place)
    get :index
    assert_response :success    
  end

  test "show found place" do
    place = FactoryGirl.create(:place)
    get :show, id: place.id
    assert_response :success
  end

  test "new" do
    user = FactoryGirl.create(:user)
    sign_in user
    get :new
    assert_response :success
  end

  test "new not signed in" do
    get :new
    assert_redirected_to new_user_session_path
  end

end


