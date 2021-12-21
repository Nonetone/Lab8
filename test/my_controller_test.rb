# frozen_string_literal: true

require_relative 'test_helper'
class MyControllerTest < ActionDispatch::IntegrationTest
  test 'should get user_input' do
    get my_user_input_url
    assert_response :success
  end

  test 'should get user_output' do
    get my_user_output_url
    assert_response :success
  end

  test 'should get res' do
    get my_user_output_url, params: { happynum: 12345 }
  end
end
