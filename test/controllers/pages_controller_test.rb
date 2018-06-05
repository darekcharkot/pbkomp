require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get pages_home_url
    assert_response :success
  end

  test "should get services" do
    get pages_services_url
    assert_response :success
  end

  test "should get pricelist" do
    get pages_pricelist_url
    assert_response :success
  end

  test "should get technology" do
    get pages_technology_url
    assert_response :success
  end

  test "should get hardwares" do
    get pages_hardwares_url
    assert_response :success
  end

  test "should get contact" do
    get pages_contact_url
    assert_response :success
  end

end
