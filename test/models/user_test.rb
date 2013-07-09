require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "can create account from omniauth hash" do
    user = User.from_omniauth(OmniAuth::auth_hash)
    assert_equal('1', user.uid)
    assert_equal('Ritter', user.provider)
    assert_equal('JonDoe', user.username)
    assert_equal('token', user.oauth_token)
    assert_equal('secret', user.oauth_secret)
  end

  test "same user is returned if provider and uid is stored" do
    user1 = User.from_omniauth(OmniAuth::auth_hash)
    user2 = User.from_omniauth(OmniAuth::auth_hash)
    assert_equal(user1, user2)
  end
end
