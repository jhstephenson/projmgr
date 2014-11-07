require 'test_helper'

class ClientsControllerTest < ActionController::TestCase
  setup do
    @client = clients(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clients)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create client" do
    assert_difference('Client.count') do
      post :create, client: { address_1: @client.address_1, address_2: @client.address_2, city: @client.city, client_name: @client.client_name, contact_email: @client.contact_email, contact_name: @client.contact_name, contact_phone: @client.contact_phone, default_billing_rate: @client.default_billing_rate, internal_account_number: @client.internal_account_number, state: @client.state, zip_code: @client.zip_code }
    end

    assert_redirected_to client_path(assigns(:client))
  end

  test "should show client" do
    get :show, id: @client
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @client
    assert_response :success
  end

  test "should update client" do
    patch :update, id: @client, client: { address_1: @client.address_1, address_2: @client.address_2, city: @client.city, client_name: @client.client_name, contact_email: @client.contact_email, contact_name: @client.contact_name, contact_phone: @client.contact_phone, default_billing_rate: @client.default_billing_rate, internal_account_number: @client.internal_account_number, state: @client.state, zip_code: @client.zip_code }
    assert_redirected_to client_path(assigns(:client))
  end

  test "should destroy client" do
    assert_difference('Client.count', -1) do
      delete :destroy, id: @client
    end

    assert_redirected_to clients_path
  end
end
