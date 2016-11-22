require 'test_helper'

class RealEstatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @real_estate = real_estates(:one)
  end

  test "should get index" do
    get real_estates_url
    assert_response :success
  end

  test "should get new" do
    get new_real_estate_url
    assert_response :success
  end

  test "should create real_estate" do
    assert_difference('RealEstate.count') do
      post real_estates_url, params: { real_estate: { address: @real_estate.address, built_at: @real_estate.built_at, name: @real_estate.name, notes: @real_estate.notes, rent: @real_estate.rent } }
    end

    assert_redirected_to real_estate_url(RealEstate.last)
  end

  test "should show real_estate" do
    get real_estate_url(@real_estate)
    assert_response :success
  end

  test "should get edit" do
    get edit_real_estate_url(@real_estate)
    assert_response :success
  end

  test "should update real_estate" do
    patch real_estate_url(@real_estate), params: { real_estate: { address: @real_estate.address, built_at: @real_estate.built_at, name: @real_estate.name, notes: @real_estate.notes, rent: @real_estate.rent } }
    assert_redirected_to real_estate_url(@real_estate)
  end

  test "should destroy real_estate" do
    assert_difference('RealEstate.count', -1) do
      delete real_estate_url(@real_estate)
    end

    assert_redirected_to real_estates_url
  end
end
