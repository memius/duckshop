require 'test_helper'

class TradesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @trade = trades(:one)
  end

  test "should get index" do
    get trades_url, as: :json
    assert_response :success
  end

  test "should create trade" do
    assert_difference('Trade.count') do
      post trades_url, params: { trade: { maker_order_id: @trade.maker_order_id, price: @trade.price, product_id: @trade.product_id, sequence: @trade.sequence, side: @trade.side, size: @trade.size, taker_order_id: @trade.taker_order_id, time: @trade.time, trade_id: @trade.trade_id, trade_type: @trade.trade_type } }, as: :json
    end

    assert_response 201
  end

  test "should show trade" do
    get trade_url(@trade), as: :json
    assert_response :success
  end

  test "should update trade" do
    patch trade_url(@trade), params: { trade: { maker_order_id: @trade.maker_order_id, price: @trade.price, product_id: @trade.product_id, sequence: @trade.sequence, side: @trade.side, size: @trade.size, taker_order_id: @trade.taker_order_id, time: @trade.time, trade_id: @trade.trade_id, trade_type: @trade.trade_type } }, as: :json
    assert_response 200
  end

  test "should destroy trade" do
    assert_difference('Trade.count', -1) do
      delete trade_url(@trade), as: :json
    end

    assert_response 204
  end
end
