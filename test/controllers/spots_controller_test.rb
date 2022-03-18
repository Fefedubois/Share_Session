require "test_helper"

class SpotsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @spot = spots(:one)
  end

  test "should get index" do
    get spots_url
    assert_response :success
  end

  test "should get new" do
    get new_spot_url
    assert_response :success
  end

  test "should create spot" do
    assert_difference('Spot.count') do
      post spots_url, params: { spot: { adress: @spot.adress, best_tide: @spot.best_tide, best_wind: @spot.best_wind, country: @spot.country, description: @spot.description, latitude: @spot.latitude, longitude: @spot.longitude, name: @spot.name, note: @spot.note, photo: @spot.photo, publish_date: @spot.publish_date, user_id_id: @spot.user_id_id } }
    end

    assert_redirected_to spot_url(Spot.last)
  end

  test "should show spot" do
    get spot_url(@spot)
    assert_response :success
  end

  test "should get edit" do
    get edit_spot_url(@spot)
    assert_response :success
  end

  test "should update spot" do
    patch spot_url(@spot), params: { spot: { adress: @spot.adress, best_tide: @spot.best_tide, best_wind: @spot.best_wind, country: @spot.country, description: @spot.description, latitude: @spot.latitude, longitude: @spot.longitude, name: @spot.name, note: @spot.note, photo: @spot.photo, publish_date: @spot.publish_date, user_id_id: @spot.user_id_id } }
    assert_redirected_to spot_url(@spot)
  end

  test "should destroy spot" do
    assert_difference('Spot.count', -1) do
      delete spot_url(@spot)
    end

    assert_redirected_to spots_url
  end
end
