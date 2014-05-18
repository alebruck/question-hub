require 'test_helper'

class EscolaControllerTest < ActionController::TestCase
  test "should get view" do
    get :show
    assert_response :success
  end

end
