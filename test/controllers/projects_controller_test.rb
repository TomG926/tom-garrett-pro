require "test_helper"

class ProjectsControllerTest < ActionDispatch::IntegrationTest
  test "should get residentradius_contact_center" do
    get projects_residentradius_contact_center_url
    assert_response :success
  end

  test "should get residentradius_depositcloud" do
    get projects_residentradius_depositcloud_url
    assert_response :success
  end

  test "should get docudynamics" do
    get projects_docudynamics_url
    assert_response :success
  end

  test "should get consultant" do
    get projects_consultant_url
    assert_response :success
  end

  test "should get penco" do
    get projects_penco_url
    assert_response :success
  end

  test "should get mobile_apps" do
    get projects_mobile_apps_url
    assert_response :success
  end

  test "should get design_systems" do
    get projects_design_systems_url
    assert_response :success
  end

  test "should get bubblegumbi" do
    get bubblegumbi_url
    assert_response :success
  end
end
