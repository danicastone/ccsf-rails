require 'test_helper'

class CcsfRailsControllerTest < ActionController::TestCase
  setup do
    @ccsf_rail = ccsf_rails(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ccsf_rails)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ccsf_rail" do
    assert_difference('CcsfRail.count') do
      post :create, ccsf_rail: { about: @ccsf_rail.about, index: @ccsf_rail.index, links: @ccsf_rail.links }
    end

    assert_redirected_to ccsf_rail_path(assigns(:ccsf_rail))
  end

  test "should show ccsf_rail" do
    get :show, id: @ccsf_rail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ccsf_rail
    assert_response :success
  end

  test "should update ccsf_rail" do
    patch :update, id: @ccsf_rail, ccsf_rail: { about: @ccsf_rail.about, index: @ccsf_rail.index, links: @ccsf_rail.links }
    assert_redirected_to ccsf_rail_path(assigns(:ccsf_rail))
  end

  test "should destroy ccsf_rail" do
    assert_difference('CcsfRail.count', -1) do
      delete :destroy, id: @ccsf_rail
    end

    assert_redirected_to ccsf_rails_path
  end
end
