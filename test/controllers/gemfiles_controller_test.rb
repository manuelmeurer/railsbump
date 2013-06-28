require "test_helper"

class GemfilesControllerTest < ActionController::TestCase
  test "#create returns existing gems from Gemfile" do
    gemfile = 'gemfile'
    gems    = stub "gems"
    GemfileParser.stubs(:gems_status).with(gemfile).returns gems

    post :create, gemfile: gemfile

    assert_equal gems, assigns(:gems)
  end
end