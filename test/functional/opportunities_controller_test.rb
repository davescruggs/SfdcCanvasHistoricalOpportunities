require 'test_helper'

class OpportunitiesControllerTest < ActionController::TestCase
  setup do
    @opportunity = opportunities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:opportunities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create opportunity" do
    assert_difference('Opportunity.count') do
      post :create, opportunity: { amount: @opportunity.amount, closed_on: @opportunity.closed_on, lead_source: @opportunity.lead_source, name: @opportunity.name, order_number: @opportunity.order_number, sfdc_id: @opportunity.sfdc_id, stage: @opportunity.stage }
    end

    assert_redirected_to opportunity_path(assigns(:opportunity))
  end

  test "should show opportunity" do
    get :show, id: @opportunity
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @opportunity
    assert_response :success
  end

  test "should update opportunity" do
    put :update, id: @opportunity, opportunity: { amount: @opportunity.amount, closed_on: @opportunity.closed_on, lead_source: @opportunity.lead_source, name: @opportunity.name, order_number: @opportunity.order_number, sfdc_id: @opportunity.sfdc_id, stage: @opportunity.stage }
    assert_redirected_to opportunity_path(assigns(:opportunity))
  end

  test "should destroy opportunity" do
    assert_difference('Opportunity.count', -1) do
      delete :destroy, id: @opportunity
    end

    assert_redirected_to opportunities_path
  end
end
