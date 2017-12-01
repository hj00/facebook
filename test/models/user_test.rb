require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "user email validation (wrong format)" do
    user = User.new({
      email: "asdf",
      password: "123123",
      password_confirmation: "123123"
      })
    refute user.save, 'Validation Success'
  end

  test "user email validation (right format)" do
    user = User.new({
      email: "qwer@asdf.com",
      password: "123123",
      password_confirmation: "123123"
      })
    assert user.save, 'Validation Success'
  end
end
